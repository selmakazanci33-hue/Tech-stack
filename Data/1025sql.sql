


-- =============================================================================
-- CURRENT 2026 ENROLLMENT vs FULL-HISTORY INBOUND 834 BREAKDOWN
-- =============================================================================
-- NEW CURRENT BASELINE ONLY.
--
-- Implementation provenance:
--   Target population:
--     profile_2026_no_inbound_premium.sql
--     enrollments_2026_complete_population_diagnostic.sql
--   Full-history inbound / independent No-Inbound evidence:
--     profile_2026_no_inbound_premium.sql
--     export_2026_no_inbound_enrollee_evidence.sql
--   Candidate hits, ranking, best row:
--     scenario_b_2026_834_row_level_reconciliation.sql
--   Master controls and outputs:
--     adapted for the current 958,218 baseline
--
-- Safety:
--   READ ONLY on permanent tables. Temp tables and temp indexes only.
-- =============================================================================

SET NOCOUNT ON;
SET XACT_ABORT ON;

DECLARE @coverage_year INT = 2026;
DECLARE @expected_current_target BIGINT = 958218;


-- =============================================================================
-- 1) COMPLETE 2026 POPULATION — canonical five-field deduplication
-- =============================================================================
-- Deduplicate first. Enrollment Status is deliberately not filtered here.
-- =============================================================================
IF OBJECT_ID('tempdb..#pop_2026') IS NOT NULL DROP TABLE #pop_2026;

SELECT
    e.coverage_year,
    e.hios_issuer_id,
    e.enrollment_id,
    e.enrollee_id,
    e.enrollment_status_description,
    e.enrollee_status_description,
    e.benefit_effective_date,
    e.benefit_end_date,
    e.enrollment_create_date,
    e.enrollment_last_update_date,
    e.enrollee_create_date,
    e.enrollee_last_update_date,
    e.person_type,
    e.relationship_type,
    e.household_id,
    e.source
INTO #pop_2026
FROM (
    SELECT
        e.coverage_year,
        e.hios_issuer_id,
        e.enrollment_id,
        e.enrollee_id,
        e.enrollment_status_description,
        e.enrollee_status_description,
        e.benefit_effective_date,
        e.benefit_end_date,
        e.enrollment_create_date,
        e.enrollment_last_update_date,
        e.enrollee_create_date,
        e.enrollee_last_update_date,
        e.person_type,
        e.relationship_type,
        e.household_id,
        e.source,
        ROW_NUMBER() OVER (
            PARTITION BY
                e.coverage_year,
                e.enrollment_id,
                e.enrollee_id
            ORDER BY
                e.enrollment_last_update_date DESC,
                e.enrollee_last_update_date DESC,
                e.enrollment_create_date DESC,
                e.enrollee_create_date DESC,
                e.benefit_effective_date DESC
        ) AS _rn
    FROM dbo.Enrollments_TEST AS e
    WHERE e.coverage_year = @coverage_year
) AS e
WHERE e._rn = 1;

CREATE UNIQUE CLUSTERED INDEX CX_pop_2026
    ON #pop_2026 (coverage_year, enrollment_id, enrollee_id);

CREATE NONCLUSTERED INDEX IX_pop_2026_status
    ON #pop_2026 (enrollment_status_description)
    INCLUDE (hios_issuer_id, enrollee_status_description);


-- =============================================================================
-- 2) CURRENT 2026 ENROLLED/PENDING TARGET — filter only after deduplication
-- =============================================================================
IF OBJECT_ID('tempdb..#target_population') IS NOT NULL
    DROP TABLE #target_population;

SELECT
    p.coverage_year AS FFM_Coverage_Year,
    CAST(p.enrollment_id AS VARCHAR(100)) AS FFM_Policy_ID,
    CAST(p.enrollee_id AS VARCHAR(100)) AS FFM_Enrollee_ID,
    CAST(p.hios_issuer_id AS VARCHAR(20)) AS FFM_Issuer,
    p.enrollment_status_description AS FFM_Enrollment_Status,
    p.enrollee_status_description AS FFM_Enrollee_Status,
    CASE
        WHEN UPPER(LTRIM(RTRIM(p.enrollment_status_description))) = 'ENROLLED'
            THEN 'CONFIRM'
        WHEN UPPER(LTRIM(RTRIM(p.enrollment_status_description))) = 'PENDING'
            THEN 'PENDING'
        ELSE 'STATUS_MAPPING_REVIEW'
    END AS FFM_Status_Norm,
    COALESCE(
        p.enrollment_last_update_date,
        p.enrollment_create_date,
        p.benefit_effective_date
    ) AS FFM_Event_Date,
    p.benefit_effective_date,
    p.benefit_end_date,
    p.enrollment_create_date,
    p.enrollment_last_update_date,
    p.enrollee_create_date,
    p.enrollee_last_update_date,
    p.person_type,
    p.relationship_type,
    p.household_id,
    p.source
INTO #target_population
FROM #pop_2026 AS p
WHERE UPPER(LTRIM(RTRIM(p.enrollment_status_description)))
      IN ('ENROLLED', 'PENDING');

CREATE UNIQUE CLUSTERED INDEX CX_target_population
    ON #target_population (
        FFM_Coverage_Year,
        FFM_Policy_ID,
        FFM_Enrollee_ID
    );

CREATE NONCLUSTERED INDEX IX_target_population_enrollee
    ON #target_population (FFM_Enrollee_ID)
    INCLUDE (
        FFM_Policy_ID,
        FFM_Issuer,
        FFM_Status_Norm,
        FFM_Event_Date
    );

DECLARE @target_count BIGINT = (
    SELECT COUNT_BIG(*) FROM #target_population
);

IF @target_count <> @expected_current_target
BEGIN
    SELECT
        @target_count AS Observed_Current_Target,
        @expected_current_target AS Required_Current_Target,
        @target_count - @expected_current_target AS Difference,
        CAST('FAIL_STOP' AS VARCHAR(20)) AS Control_Status;

    RAISERROR(
        'STOP: current target count is %I64d; required hard control is %I64d.',
        16, 1, @target_count, @expected_current_target
    );
    RETURN;
END;


-- =============================================================================
-- 3) FULL-HISTORY INBOUND WORKING SET
-- =============================================================================
-- No inbound coverage-year, lifecycle, or status restriction.
-- Preserve all three enrollee identifiers independently.
-- =============================================================================
IF OBJECT_ID('tempdb..#inbound') IS NOT NULL DROP TABLE #inbound;

SELECT
    ia.id AS inbound_row_id,
    NULLIF(LTRIM(RTRIM(CAST(ia.member_id AS VARCHAR(100)))), '')
        AS Inbound_Member_ID,
    NULLIF(LTRIM(RTRIM(CAST(ia.issuer_indiv_identifier AS VARCHAR(100)))), '')
        AS Inbound_Issuer_Indiv_Identifier,
    NULLIF(LTRIM(RTRIM(CAST(ia.exchg_assigned_enrollee_id AS VARCHAR(100)))), '')
        AS Inbound_Exchange_Assigned_Enrollee_ID,
    NULLIF(LTRIM(RTRIM(CAST(ia.policy_id AS VARCHAR(100)))), '')
        AS Inbound_Policy_ID,
    NULLIF(LTRIM(RTRIM(CAST(ia.health_coverage_policy_no AS VARCHAR(100)))), '')
        AS Inbound_Health_Coverage_Policy_No,
    CAST(ia.issuer AS VARCHAR(20)) AS Inbound_Issuer,
    ia.coverage_year AS Inbound_Coverage_Year,
    ia.enrolleeStatus AS Inbound_Status_Raw,
    CASE
        WHEN UPPER(LTRIM(RTRIM(ia.enrolleeStatus))) = 'CONFIRM'
            THEN 'CONFIRM'
        WHEN UPPER(LTRIM(RTRIM(ia.enrolleeStatus))) = 'CANCEL'
            THEN 'CANCEL'
        WHEN UPPER(LTRIM(RTRIM(ia.enrolleeStatus))) = 'TERM'
            THEN 'TERM'
        ELSE 'STATUS_MAPPING_REVIEW'
    END AS Inbound_Status_Normalized,
    ia.member_maint_effective_date,
    ia.benefit_effective_date AS Inbound_Benefit_Effective_Date,
    ia.benefit_end_date AS Inbound_Benefit_End_Date,
    COALESCE(
        ia.member_maint_effective_date,
        TRY_CONVERT(
            date,
            SUBSTRING(
                ia.source_file,
                NULLIF(
                    PATINDEX(
                        '%[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
                        + '[0-9][0-9][0-9][0-9][0-9][0-9][0-9]%.xml',
                        ia.source_file
                    ),
                    0
                ),
                8
            ),
            112
        ),
        ia.benefit_effective_date
    ) AS Inbound_Event_Date,
    ia.folder_year,
    ia.folder_month,
    ia.source_file AS Inbound_Source_File,
    ia.household_or_employee_case_id,
    ia.relationship AS Inbound_Relationship
INTO #inbound
FROM dbo.inbound_automation AS ia
WHERE NULLIF(LTRIM(RTRIM(ia.member_id)), '') IS NOT NULL
   OR NULLIF(LTRIM(RTRIM(ia.issuer_indiv_identifier)), '') IS NOT NULL
   OR NULLIF(LTRIM(RTRIM(ia.exchg_assigned_enrollee_id)), '') IS NOT NULL;

CREATE UNIQUE CLUSTERED INDEX CX_inbound
    ON #inbound (inbound_row_id);

CREATE NONCLUSTERED INDEX IX_inbound_member
    ON #inbound (Inbound_Member_ID)
    INCLUDE (
        Inbound_Policy_ID,
        Inbound_Health_Coverage_Policy_No,
        Inbound_Issuer,
        Inbound_Coverage_Year,
        Inbound_Status_Normalized,
        Inbound_Event_Date
    );

CREATE NONCLUSTERED INDEX IX_inbound_issuer_indiv
    ON #inbound (Inbound_Issuer_Indiv_Identifier)
    INCLUDE (
        Inbound_Policy_ID,
        Inbound_Health_Coverage_Policy_No,
        Inbound_Issuer,
        Inbound_Coverage_Year,
        Inbound_Status_Normalized,
        Inbound_Event_Date
    );

CREATE NONCLUSTERED INDEX IX_inbound_exchange
    ON #inbound (Inbound_Exchange_Assigned_Enrollee_ID)
    INCLUDE (
        Inbound_Policy_ID,
        Inbound_Health_Coverage_Policy_No,
        Inbound_Issuer,
        Inbound_Coverage_Year,
        Inbound_Status_Normalized,
        Inbound_Event_Date
    );


-- =============================================================================
-- 4) INDEPENDENT FULL-HISTORY NO-INBOUND POPULATION
-- =============================================================================
-- Policy, issuer, status, and coverage year do not affect evidence existence.
-- =============================================================================
IF OBJECT_ID('tempdb..#no_inbound_export') IS NOT NULL
    DROP TABLE #no_inbound_export;

SELECT
    t.FFM_Coverage_Year,
    t.FFM_Policy_ID,
    t.FFM_Enrollee_ID
INTO #no_inbound_export
FROM #target_population AS t
WHERE NOT EXISTS (
          SELECT 1
          FROM #inbound AS i
          WHERE i.Inbound_Member_ID = t.FFM_Enrollee_ID
      )
  AND NOT EXISTS (
          SELECT 1
          FROM #inbound AS i
          WHERE i.Inbound_Issuer_Indiv_Identifier = t.FFM_Enrollee_ID
      )
  AND NOT EXISTS (
          SELECT 1
          FROM #inbound AS i
          WHERE i.Inbound_Exchange_Assigned_Enrollee_ID = t.FFM_Enrollee_ID
      );

CREATE UNIQUE CLUSTERED INDEX CX_no_inbound_export
    ON #no_inbound_export (
        FFM_Coverage_Year,
        FFM_Policy_ID,
        FFM_Enrollee_ID
    );


-- =============================================================================
-- 5) THREE INDEPENDENT ENROLLEE-FIRST CANDIDATE PATHS
-- =============================================================================
IF OBJECT_ID('tempdb..#candidate_hits') IS NOT NULL
    DROP TABLE #candidate_hits;

;WITH hit_raw AS (
    SELECT
        t.FFM_Coverage_Year,
        t.FFM_Policy_ID,
        t.FFM_Enrollee_ID,
        i.inbound_row_id,
        CAST('MEMBER_ID' AS VARCHAR(40)) AS hit_type
    FROM #target_population AS t
    INNER JOIN #inbound AS i
        ON i.Inbound_Member_ID = t.FFM_Enrollee_ID

    UNION ALL

    SELECT
        t.FFM_Coverage_Year,
        t.FFM_Policy_ID,
        t.FFM_Enrollee_ID,
        i.inbound_row_id,
        CAST('ISSUER_INDIV_IDENTIFIER' AS VARCHAR(40))
    FROM #target_population AS t
    INNER JOIN #inbound AS i
        ON i.Inbound_Issuer_Indiv_Identifier = t.FFM_Enrollee_ID

    UNION ALL

    SELECT
        t.FFM_Coverage_Year,
        t.FFM_Policy_ID,
        t.FFM_Enrollee_ID,
        i.inbound_row_id,
        CAST('EXCHG_ASSIGNED_ENROLLEE_ID' AS VARCHAR(40))
    FROM #target_population AS t
    INNER JOIN #inbound AS i
        ON i.Inbound_Exchange_Assigned_Enrollee_ID = t.FFM_Enrollee_ID
)
SELECT
    FFM_Coverage_Year,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    inbound_row_id,
    CASE
        WHEN MAX(CASE WHEN hit_type = 'MEMBER_ID' THEN 1 ELSE 0 END) = 1
         AND MAX(CASE WHEN hit_type = 'ISSUER_INDIV_IDENTIFIER' THEN 1 ELSE 0 END) = 1
         AND MAX(CASE WHEN hit_type = 'EXCHG_ASSIGNED_ENROLLEE_ID' THEN 1 ELSE 0 END) = 1
            THEN 'ALL_THREE'
        WHEN MAX(CASE WHEN hit_type = 'MEMBER_ID' THEN 1 ELSE 0 END) = 1
         AND MAX(CASE WHEN hit_type = 'ISSUER_INDIV_IDENTIFIER' THEN 1 ELSE 0 END) = 1
            THEN 'MEMBER_ID+ISSUER_INDIV_IDENTIFIER'
        WHEN MAX(CASE WHEN hit_type = 'MEMBER_ID' THEN 1 ELSE 0 END) = 1
         AND MAX(CASE WHEN hit_type = 'EXCHG_ASSIGNED_ENROLLEE_ID' THEN 1 ELSE 0 END) = 1
            THEN 'MEMBER_ID+EXCHG_ASSIGNED_ENROLLEE_ID'
        WHEN MAX(CASE WHEN hit_type = 'ISSUER_INDIV_IDENTIFIER' THEN 1 ELSE 0 END) = 1
         AND MAX(CASE WHEN hit_type = 'EXCHG_ASSIGNED_ENROLLEE_ID' THEN 1 ELSE 0 END) = 1
            THEN 'ISSUER_INDIV_IDENTIFIER+EXCHG_ASSIGNED_ENROLLEE_ID'
        WHEN MAX(CASE WHEN hit_type = 'MEMBER_ID' THEN 1 ELSE 0 END) = 1
            THEN 'MEMBER_ID'
        WHEN MAX(CASE WHEN hit_type = 'ISSUER_INDIV_IDENTIFIER' THEN 1 ELSE 0 END) = 1
            THEN 'ISSUER_INDIV_IDENTIFIER'
        ELSE 'EXCHG_ASSIGNED_ENROLLEE_ID'
    END AS Matched_Inbound_ID_Type
INTO #candidate_hits
FROM hit_raw
GROUP BY
    FFM_Coverage_Year,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    inbound_row_id;

CREATE CLUSTERED INDEX CX_candidate_hits
    ON #candidate_hits (
        FFM_Enrollee_ID,
        FFM_Policy_ID,
        inbound_row_id
    );


-- =============================================================================
-- 6) KNOWN-WORKING SCENARIO B CANDIDATE RANKING
-- =============================================================================
IF OBJECT_ID('tempdb..#candidates') IS NOT NULL DROP TABLE #candidates;

SELECT
    t.FFM_Coverage_Year,
    t.FFM_Policy_ID,
    t.FFM_Enrollee_ID,
    t.FFM_Issuer,
    t.FFM_Enrollment_Status,
    t.FFM_Enrollee_Status,
    t.FFM_Status_Norm,
    t.FFM_Event_Date,
    h.Matched_Inbound_ID_Type,
    i.Inbound_Member_ID,
    i.Inbound_Issuer_Indiv_Identifier,
    i.Inbound_Exchange_Assigned_Enrollee_ID,
    i.Inbound_Policy_ID,
    i.Inbound_Health_Coverage_Policy_No,
    i.Inbound_Issuer,
    i.Inbound_Coverage_Year,
    i.Inbound_Status_Raw,
    i.Inbound_Status_Normalized,
    i.Inbound_Event_Date,
    i.member_maint_effective_date,
    i.Inbound_Benefit_Effective_Date,
    i.Inbound_Benefit_End_Date,
    i.folder_year,
    i.folder_month,
    i.Inbound_Source_File,
    i.household_or_employee_case_id,
    i.Inbound_Relationship,
    CASE
        WHEN t.FFM_Policy_ID = i.Inbound_Policy_ID
          OR t.FFM_Policy_ID = i.Inbound_Health_Coverage_Policy_No
            THEN 'YES'
        ELSE 'NO'
    END AS Policy_Match_Flag,
    CASE
        WHEN t.FFM_Issuer = i.Inbound_Issuer THEN 'YES'
        ELSE 'NO'
    END AS Issuer_Match_Flag,
    CASE
        WHEN t.FFM_Status_Norm = 'CONFIRM'
         AND i.Inbound_Status_Normalized = 'CONFIRM'
            THEN 'YES'
        ELSE 'NO'
    END AS Status_Match_Flag,
    CASE
        WHEN t.FFM_Event_Date IS NOT NULL
         AND i.Inbound_Event_Date IS NOT NULL
            THEN ABS(DATEDIFF(day, t.FFM_Event_Date, i.Inbound_Event_Date))
    END AS Date_Difference_Days,
    CASE
        WHEN t.FFM_Policy_ID = i.Inbound_Policy_ID
          OR t.FFM_Policy_ID = i.Inbound_Health_Coverage_Policy_No
            THEN 1
        WHEN t.FFM_Issuer = i.Inbound_Issuer
         AND t.FFM_Status_Norm = 'CONFIRM'
         AND i.Inbound_Status_Normalized = 'CONFIRM'
         AND t.FFM_Event_Date IS NOT NULL
         AND i.Inbound_Event_Date IS NOT NULL
         AND ABS(DATEDIFF(day, t.FFM_Event_Date, i.Inbound_Event_Date)) = 0
            THEN 2
        WHEN t.FFM_Issuer = i.Inbound_Issuer
         AND t.FFM_Status_Norm = 'CONFIRM'
         AND i.Inbound_Status_Normalized = 'CONFIRM'
         AND t.FFM_Event_Date IS NOT NULL
         AND i.Inbound_Event_Date IS NOT NULL
         AND ABS(DATEDIFF(day, t.FFM_Event_Date, i.Inbound_Event_Date)) <= 7
            THEN 3
        WHEN t.FFM_Issuer = i.Inbound_Issuer
         AND t.FFM_Status_Norm = 'CONFIRM'
         AND i.Inbound_Status_Normalized = 'CONFIRM'
            THEN 4
        WHEN t.FFM_Issuer = i.Inbound_Issuer
            THEN 5
        WHEN t.FFM_Status_Norm = 'CONFIRM'
         AND i.Inbound_Status_Normalized = 'CONFIRM'
         AND t.FFM_Event_Date IS NOT NULL
         AND i.Inbound_Event_Date IS NOT NULL
         AND ABS(DATEDIFF(day, t.FFM_Event_Date, i.Inbound_Event_Date)) <= 30
            THEN 6
        WHEN t.FFM_Status_Norm = 'CONFIRM'
         AND i.Inbound_Status_Normalized = 'CONFIRM'
            THEN 7
        ELSE 8
    END AS rank_priority,
    i.inbound_row_id
INTO #candidates
FROM #candidate_hits AS h
INNER JOIN #target_population AS t
    ON t.FFM_Coverage_Year = h.FFM_Coverage_Year
   AND t.FFM_Policy_ID = h.FFM_Policy_ID
   AND t.FFM_Enrollee_ID = h.FFM_Enrollee_ID
INNER JOIN #inbound AS i
    ON i.inbound_row_id = h.inbound_row_id;

CREATE CLUSTERED INDEX CX_candidates
    ON #candidates (
        FFM_Enrollee_ID,
        FFM_Policy_ID,
        rank_priority,
        inbound_row_id
    );


-- =============================================================================
-- 7) ONE BEST INBOUND ROW PER CURRENT TARGET PAIR
-- =============================================================================
IF OBJECT_ID('tempdb..#best') IS NOT NULL DROP TABLE #best;

SELECT *
INTO #best
FROM (
    SELECT
        c.*,
        ROW_NUMBER() OVER (
            PARTITION BY
                c.FFM_Coverage_Year,
                c.FFM_Policy_ID,
                c.FFM_Enrollee_ID
            ORDER BY
                c.rank_priority ASC,
                CASE
                    WHEN c.Date_Difference_Days IS NULL THEN 999999
                    ELSE c.Date_Difference_Days
                END ASC,
                c.inbound_row_id DESC
        ) AS rn
    FROM #candidates AS c
) AS x
WHERE x.rn = 1;

CREATE UNIQUE CLUSTERED INDEX CX_best
    ON #best (
        FFM_Coverage_Year,
        FFM_Policy_ID,
        FFM_Enrollee_ID
    );


-- =============================================================================
-- 8) ONE MUTUALLY EXCLUSIVE MASTER ROW PER CURRENT TARGET PAIR
-- =============================================================================
IF OBJECT_ID('tempdb..#master') IS NOT NULL DROP TABLE #master;

SELECT
    t.FFM_Coverage_Year,
    t.FFM_Issuer,
    t.FFM_Policy_ID,
    t.FFM_Enrollee_ID,
    t.FFM_Enrollment_Status,
    t.FFM_Enrollee_Status,
    t.FFM_Status_Norm,
    t.FFM_Event_Date,
    t.person_type,
    t.relationship_type,
    t.benefit_effective_date,
    t.benefit_end_date,
    t.enrollment_create_date,
    t.enrollment_last_update_date,
    t.enrollee_create_date,
    t.enrollee_last_update_date,
    t.household_id,
    t.source,
    CASE
        WHEN n.FFM_Enrollee_ID IS NOT NULL THEN 0
        ELSE 1
    END AS Inbound_Evidence_Found,
    CASE
        WHEN n.FFM_Enrollee_ID IS NOT NULL
            THEN 'NO_INBOUND_ENROLLEE_EVIDENCE'
        WHEN b.Policy_Match_Flag = 'YES'
            THEN 'EXACT_ENROLLEE_POLICY_MATCH'
        WHEN b.Issuer_Match_Flag = 'YES'
         AND b.Status_Match_Flag = 'YES'
         AND b.Date_Difference_Days IS NOT NULL
         AND b.Date_Difference_Days <= 7
            THEN 'SAME_TRANSACTION_DIFFERENT_POLICY'
        WHEN b.Issuer_Match_Flag = 'YES'
         AND b.Status_Match_Flag = 'YES'
            THEN 'SAME_LIFECYCLE_DIFFERENT_POLICY'
        WHEN b.Issuer_Match_Flag = 'NO'
         AND b.Status_Match_Flag = 'YES'
            THEN 'CROSS_ISSUER_TRANSITION'
        ELSE 'ENROLLEE_FOUND_DIFFERENT_LIFECYCLE'
    END AS Match_Category,
    b.Matched_Inbound_ID_Type,
    b.Inbound_Member_ID,
    b.Inbound_Issuer_Indiv_Identifier,
    b.Inbound_Exchange_Assigned_Enrollee_ID,
    b.Inbound_Policy_ID,
    b.Inbound_Health_Coverage_Policy_No,
    b.Inbound_Issuer,
    b.Inbound_Coverage_Year,
    b.Inbound_Status_Raw,
    b.Inbound_Status_Normalized,
    b.Inbound_Event_Date,
    b.member_maint_effective_date,
    b.Inbound_Benefit_Effective_Date,
    b.Inbound_Benefit_End_Date,
    b.folder_year,
    b.folder_month,
    b.Inbound_Source_File,
    b.household_or_employee_case_id,
    b.Inbound_Relationship,
    b.Policy_Match_Flag,
    b.Issuer_Match_Flag,
    b.Status_Match_Flag,
    b.Date_Difference_Days,
    b.rank_priority,
    b.inbound_row_id
INTO #master
FROM #target_population AS t
LEFT JOIN #best AS b
    ON b.FFM_Coverage_Year = t.FFM_Coverage_Year
   AND b.FFM_Policy_ID = t.FFM_Policy_ID
   AND b.FFM_Enrollee_ID = t.FFM_Enrollee_ID
LEFT JOIN #no_inbound_export AS n
    ON n.FFM_Coverage_Year = t.FFM_Coverage_Year
   AND n.FFM_Policy_ID = t.FFM_Policy_ID
   AND n.FFM_Enrollee_ID = t.FFM_Enrollee_ID;

CREATE UNIQUE CLUSTERED INDEX CX_master
    ON #master (
        FFM_Coverage_Year,
        FFM_Policy_ID,
        FFM_Enrollee_ID
    );

CREATE NONCLUSTERED INDEX IX_master_category
    ON #master (Match_Category, FFM_Issuer);


-- =============================================================================
-- 9) FINAL CONTROLS
-- =============================================================================
DECLARE @master_count BIGINT = (
    SELECT COUNT_BIG(*) FROM #master
);

DECLARE @found_count BIGINT = (
    SELECT COUNT_BIG(*)
    FROM #master
    WHERE Inbound_Evidence_Found = 1
);

DECLARE @no_inbound_count BIGINT = (
    SELECT COUNT_BIG(*) FROM #no_inbound_export
);

DECLARE @category_count BIGINT = (
    SELECT SUM(pair_count)
    FROM (
        SELECT COUNT_BIG(*) AS pair_count
        FROM #master
        GROUP BY Match_Category
    ) AS category_totals
);

DECLARE @best_count BIGINT = (
    SELECT COUNT_BIG(*) FROM #best
);

IF @master_count <> @expected_current_target
   OR @category_count <> @expected_current_target
   OR (@found_count + @no_inbound_count) <> @expected_current_target
   OR @best_count <> @found_count
BEGIN
    SELECT
        @target_count AS Current_Target,
        @master_count AS Final_Master_Row_Count,
        @found_count AS Inbound_Evidence_Found,
        @no_inbound_count AS No_Inbound_Evidence,
        @best_count AS Best_Selected_Rows,
        @category_count AS Category_Sum,
        CAST('FAIL_STOP' AS VARCHAR(20)) AS Control_Status;

    RAISERROR(
        'STOP: final reconciliation controls failed.',
        16, 1
    );
    RETURN;
END;


-- =============================================================================
-- RESULT 1 — MASTER CONTROL
-- =============================================================================
SELECT
    @target_count AS Current_Target,
    @found_count AS Inbound_Evidence_Found,
    @no_inbound_count AS No_Inbound_Evidence,
    CAST(
        100.0 * @found_count / NULLIF(@target_count, 0)
        AS DECIMAL(10, 4)
    ) AS Found_Percentage,
    CAST(
        100.0 * @no_inbound_count / NULLIF(@target_count, 0)
        AS DECIMAL(10, 4)
    ) AS No_Inbound_Percentage,
    CAST('PASS' AS VARCHAR(10)) AS Control_Status;


-- =============================================================================
-- RESULT 2 — MATCH CATEGORY BREAKDOWN
-- =============================================================================
;WITH category_order AS (
    SELECT *
    FROM (VALUES
        (1, 'EXACT_ENROLLEE_POLICY_MATCH'),
        (2, 'SAME_TRANSACTION_DIFFERENT_POLICY'),
        (3, 'SAME_LIFECYCLE_DIFFERENT_POLICY'),
        (4, 'CROSS_ISSUER_TRANSITION'),
        (5, 'ENROLLEE_FOUND_DIFFERENT_LIFECYCLE'),
        (6, 'NO_INBOUND_ENROLLEE_EVIDENCE')
    ) AS categories(category_order, Match_Category)
)
SELECT
    o.Match_Category,
    COUNT_BIG(m.FFM_Coverage_Year) AS Pair_Count,
    CAST(
        100.0 * COUNT_BIG(m.FFM_Coverage_Year) / NULLIF(@target_count, 0)
        AS DECIMAL(10, 4)
    ) AS Percentage_Of_Target
FROM category_order AS o
LEFT JOIN #master AS m
    ON m.Match_Category = o.Match_Category
GROUP BY
    o.category_order,
    o.Match_Category
ORDER BY o.category_order;


-- =============================================================================
-- RESULT 3 — ISSUER BREAKDOWN, INCLUDING TOTAL
-- =============================================================================
;WITH issuer_summary AS (
    SELECT
        CASE
            WHEN GROUPING(FFM_Issuer) = 1 THEN 'TOTAL'
            ELSE FFM_Issuer
        END AS FFM_Issuer,
        GROUPING(FFM_Issuer) AS Is_Total,
        COUNT_BIG(*) AS Target_Pairs,
        SUM(CONVERT(BIGINT, Inbound_Evidence_Found)) AS Inbound_Found,
        SUM(CASE
            WHEN Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
                THEN CONVERT(BIGINT, 1)
            ELSE CONVERT(BIGINT, 0)
        END) AS No_Inbound,
        SUM(CASE
            WHEN Match_Category = 'EXACT_ENROLLEE_POLICY_MATCH'
                THEN CONVERT(BIGINT, 1)
            ELSE CONVERT(BIGINT, 0)
        END) AS Exact_Match,
        SUM(CASE
            WHEN Match_Category = 'SAME_TRANSACTION_DIFFERENT_POLICY'
                THEN CONVERT(BIGINT, 1)
            ELSE CONVERT(BIGINT, 0)
        END) AS Same_Transaction_Different_Policy,
        SUM(CASE
            WHEN Match_Category = 'SAME_LIFECYCLE_DIFFERENT_POLICY'
                THEN CONVERT(BIGINT, 1)
            ELSE CONVERT(BIGINT, 0)
        END) AS Same_Lifecycle_Different_Policy,
        SUM(CASE
            WHEN Match_Category = 'CROSS_ISSUER_TRANSITION'
                THEN CONVERT(BIGINT, 1)
            ELSE CONVERT(BIGINT, 0)
        END) AS Cross_Issuer,
        SUM(CASE
            WHEN Match_Category = 'ENROLLEE_FOUND_DIFFERENT_LIFECYCLE'
                THEN CONVERT(BIGINT, 1)
            ELSE CONVERT(BIGINT, 0)
        END) AS Different_Lifecycle
    FROM #master
    GROUP BY GROUPING SETS ((FFM_Issuer), ())
)
SELECT
    FFM_Issuer,
    Target_Pairs,
    Inbound_Found,
    No_Inbound,
    CAST(
        100.0 * Inbound_Found / NULLIF(Target_Pairs, 0)
        AS DECIMAL(10, 4)
    ) AS Found_Percentage,
    CAST(
        100.0 * No_Inbound / NULLIF(Target_Pairs, 0)
        AS DECIMAL(10, 4)
    ) AS No_Inbound_Percentage,
    Exact_Match,
    Same_Transaction_Different_Policy,
    Same_Lifecycle_Different_Policy,
    Cross_Issuer,
    Different_Lifecycle
FROM issuer_summary
ORDER BY
    Is_Total DESC,
    No_Inbound DESC,
    FFM_Issuer;


-- =============================================================================
-- RESULT 4 — ENROLLMENT STATUS BREAKDOWN
-- =============================================================================
SELECT
    FFM_Enrollment_Status,
    COUNT_BIG(*) AS Target,
    SUM(CONVERT(BIGINT, Inbound_Evidence_Found)) AS Found,
    SUM(CASE
        WHEN Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
            THEN CONVERT(BIGINT, 1)
        ELSE CONVERT(BIGINT, 0)
    END) AS No_Inbound,
    CAST(
        100.0 * SUM(CASE
            WHEN Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
                THEN CONVERT(BIGINT, 1)
            ELSE CONVERT(BIGINT, 0)
        END) / NULLIF(COUNT_BIG(*), 0)
        AS DECIMAL(10, 4)
    ) AS No_Inbound_Percentage
FROM #master
GROUP BY FFM_Enrollment_Status
ORDER BY FFM_Enrollment_Status;


-- =============================================================================
-- RESULT 5 — NO-INBOUND PERSON / RELATIONSHIP BREAKDOWN
-- =============================================================================
SELECT
    person_type,
    relationship_type,
    COUNT_BIG(*) AS Pair_Count,
    CAST(
        100.0 * COUNT_BIG(*) / NULLIF(@no_inbound_count, 0)
        AS DECIMAL(10, 4)
    ) AS Percentage_Of_No_Inbound
FROM #master
WHERE Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
GROUP BY
    person_type,
    relationship_type
ORDER BY
    Pair_Count DESC,
    person_type,
    relationship_type;


-- =============================================================================
-- RESULT 6 — NO-INBOUND BY ISSUER + PERSON / RELATIONSHIP
-- =============================================================================
SELECT
    FFM_Issuer,
    person_type,
    relationship_type,
    COUNT_BIG(*) AS Pair_Count
FROM #master
WHERE Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
GROUP BY
    FFM_Issuer,
    person_type,
    relationship_type
ORDER BY
    FFM_Issuer,
    Pair_Count DESC,
    person_type,
    relationship_type;


-- =============================================================================
-- RESULT 7 — BEST SELECTED INBOUND EVIDENCE YEAR
-- =============================================================================
SELECT
    Inbound_Coverage_Year,
    COUNT_BIG(*) AS Pair_Count
FROM #master
WHERE Inbound_Evidence_Found = 1
GROUP BY Inbound_Coverage_Year
ORDER BY Inbound_Coverage_Year;


-- =============================================================================
-- RESULT 8 — CURRENT NO-INBOUND ROW-LEVEL DETAIL
-- =============================================================================
SELECT
    FFM_Coverage_Year,
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    FFM_Enrollment_Status,
    FFM_Enrollee_Status,
    person_type,
    relationship_type,
    benefit_effective_date,
    benefit_end_date,
    enrollment_create_date,
    enrollment_last_update_date,
    enrollee_create_date,
    enrollee_last_update_date,
    household_id,
    source
FROM #master
WHERE Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
ORDER BY
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollee_ID;
