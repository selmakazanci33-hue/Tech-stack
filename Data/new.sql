-- =============================================================================
-- CURRENT 2026 ENROLLMENT vs FULL-HISTORY INBOUND 834 BREAKDOWN
-- =============================================================================
-- NEW CURRENT BASELINE ONLY.
--
-- Enrollment target:
--   dbo.Enrollments_TEST
--   grain = coverage_year + enrollment_id + enrollee_id
--   exact five-field latest-row dedup, then Enrollment Status Enrolled/Pending
--   hard control = 958,218
--
-- Inbound evidence:
--   dbo.inbound_automation, all available coverage years/statuses
--   three independent enrollee identifier paths; no identifier COALESCE
--
-- Safety:
--   READ ONLY on permanent tables. Temp tables/indexes only.
--   No historical controls, RCNI, Auto-Renewal, or permanent writes.
-- =============================================================================

SET NOCOUNT ON;
SET XACT_ABORT ON;

DECLARE @coverage_year INT = 2026;
DECLARE @expected_current_target BIGINT = 958218;

-- =============================================================================
-- 0) EXPLICIT TEMP-TABLE SCHEMAS + EARLY COMPILE/SCHEMA SMOKE TESTS
-- =============================================================================
DROP TABLE IF EXISTS #master;
DROP TABLE IF EXISTS #best;
DROP TABLE IF EXISTS #candidates;
DROP TABLE IF EXISTS #candidate_hits;
DROP TABLE IF EXISTS #inbound;
DROP TABLE IF EXISTS #target;

CREATE TABLE #target (
    FFM_Coverage_Year INT NOT NULL,
    FFM_Issuer VARCHAR(20) NULL,
    FFM_Policy_ID VARCHAR(100) NULL,
    FFM_Enrollee_ID VARCHAR(100) NULL,
    FFM_Enrollment_Status NVARCHAR(500) NULL,
    FFM_Enrollee_Status NVARCHAR(500) NULL,
    FFM_Lifecycle VARCHAR(40) NOT NULL,
    FFM_Event_Date DATETIME2(7) NULL,
    person_type NVARCHAR(500) NULL,
    relationship_type NVARCHAR(500) NULL,
    benefit_effective_date DATETIME2(7) NULL,
    benefit_end_date DATETIME2(7) NULL,
    enrollment_create_date DATETIME2(7) NULL,
    enrollment_last_update_date DATETIME2(7) NULL,
    enrollee_create_date DATETIME2(7) NULL,
    enrollee_last_update_date DATETIME2(7) NULL,
    household_id NVARCHAR(500) NULL,
    source NVARCHAR(MAX) NULL
);

IF EXISTS (
    SELECT 1
    FROM (VALUES
        ('FFM_Coverage_Year'), ('FFM_Issuer'), ('FFM_Policy_ID'),
        ('FFM_Enrollee_ID'), ('FFM_Enrollment_Status'),
        ('FFM_Enrollee_Status'), ('FFM_Lifecycle'), ('FFM_Event_Date'),
        ('person_type'), ('relationship_type'), ('benefit_effective_date'),
        ('benefit_end_date'), ('enrollment_create_date'),
        ('enrollment_last_update_date'), ('enrollee_create_date'),
        ('enrollee_last_update_date'), ('household_id'), ('source')
    ) AS required(column_name)
    WHERE COL_LENGTH('tempdb..#target', required.column_name) IS NULL
)
BEGIN
    RAISERROR('STOP: #target schema validation failed.', 16, 1);
    RETURN;
END;

CREATE TABLE #inbound (
    inbound_row_id BIGINT NOT NULL,
    Inbound_Member_ID VARCHAR(100) NULL,
    Inbound_Issuer_Indiv_Identifier VARCHAR(100) NULL,
    Inbound_Exchange_Assigned_Enrollee_ID VARCHAR(100) NULL,
    Inbound_Policy_ID VARCHAR(100) NULL,
    Inbound_Health_Coverage_Policy_No VARCHAR(100) NULL,
    Inbound_Issuer VARCHAR(20) NOT NULL,
    Inbound_Coverage_Year INT NULL,
    Inbound_Status_Raw NVARCHAR(50) NULL,
    Inbound_Lifecycle VARCHAR(40) NOT NULL,
    Inbound_Event_Date DATE NULL,
    member_maint_effective_date DATE NULL,
    Inbound_Benefit_Effective_Date DATE NULL,
    Inbound_Source_File NVARCHAR(500) NOT NULL
);

IF EXISTS (
    SELECT 1
    FROM (VALUES
        ('inbound_row_id'), ('Inbound_Member_ID'),
        ('Inbound_Issuer_Indiv_Identifier'),
        ('Inbound_Exchange_Assigned_Enrollee_ID'), ('Inbound_Policy_ID'),
        ('Inbound_Health_Coverage_Policy_No'), ('Inbound_Issuer'),
        ('Inbound_Coverage_Year'), ('Inbound_Status_Raw'),
        ('Inbound_Lifecycle'), ('Inbound_Event_Date'),
        ('member_maint_effective_date'),
        ('Inbound_Benefit_Effective_Date'), ('Inbound_Source_File')
    ) AS required(column_name)
    WHERE COL_LENGTH('tempdb..#inbound', required.column_name) IS NULL
)
BEGIN
    RAISERROR('STOP: #inbound schema validation failed.', 16, 1);
    RETURN;
END;

CREATE TABLE #candidate_hits (
    FFM_Coverage_Year INT NOT NULL,
    FFM_Policy_ID VARCHAR(100) NULL,
    FFM_Enrollee_ID VARCHAR(100) NOT NULL,
    inbound_row_id BIGINT NOT NULL,
    Matched_Inbound_ID_Type VARCHAR(100) NOT NULL
);

IF EXISTS (
    SELECT 1
    FROM (VALUES
        ('FFM_Coverage_Year'), ('FFM_Policy_ID'), ('FFM_Enrollee_ID'),
        ('inbound_row_id'), ('Matched_Inbound_ID_Type')
    ) AS required(column_name)
    WHERE COL_LENGTH('tempdb..#candidate_hits', required.column_name) IS NULL
)
BEGIN
    RAISERROR('STOP: #candidate_hits schema validation failed.', 16, 1);
    RETURN;
END;

CREATE TABLE #candidates (
    FFM_Coverage_Year INT NOT NULL,
    FFM_Policy_ID VARCHAR(100) NOT NULL,
    FFM_Enrollee_ID VARCHAR(100) NOT NULL,
    FFM_Issuer VARCHAR(20) NULL,
    FFM_Lifecycle VARCHAR(40) NOT NULL,
    FFM_Event_Date DATETIME2(7) NULL,
    Matched_Inbound_ID_Type VARCHAR(100) NOT NULL,
    Inbound_Policy_ID VARCHAR(100) NULL,
    Inbound_Health_Coverage_Policy_No VARCHAR(100) NULL,
    Inbound_Issuer VARCHAR(20) NOT NULL,
    Inbound_Coverage_Year INT NULL,
    Inbound_Status_Raw NVARCHAR(50) NULL,
    Inbound_Lifecycle VARCHAR(40) NOT NULL,
    Inbound_Event_Date DATE NULL,
    Inbound_Source_File NVARCHAR(500) NOT NULL,
    inbound_row_id BIGINT NOT NULL,
    Policy_Match_Flag INT NOT NULL,
    Issuer_Match_Flag INT NOT NULL,
    Compatible_Lifecycle_Flag INT NOT NULL,
    Date_Difference_Days INT NULL,
    rank_priority INT NOT NULL
);

IF EXISTS (
    SELECT 1
    FROM (VALUES
        ('FFM_Coverage_Year'), ('FFM_Policy_ID'), ('FFM_Enrollee_ID'),
        ('FFM_Issuer'), ('FFM_Lifecycle'), ('FFM_Event_Date'),
        ('Matched_Inbound_ID_Type'), ('Inbound_Policy_ID'),
        ('Inbound_Health_Coverage_Policy_No'), ('Inbound_Issuer'),
        ('Inbound_Coverage_Year'), ('Inbound_Status_Raw'),
        ('Inbound_Lifecycle'), ('Inbound_Event_Date'),
        ('Inbound_Source_File'), ('inbound_row_id'), ('Policy_Match_Flag'),
        ('Issuer_Match_Flag'), ('Compatible_Lifecycle_Flag'),
        ('Date_Difference_Days'), ('rank_priority')
    ) AS required(column_name)
    WHERE COL_LENGTH('tempdb..#candidates', required.column_name) IS NULL
)
BEGIN
    RAISERROR('STOP: #candidates schema validation failed.', 16, 1);
    RETURN;
END;

CREATE TABLE #best (
    FFM_Coverage_Year INT NOT NULL,
    FFM_Policy_ID VARCHAR(100) NOT NULL,
    FFM_Enrollee_ID VARCHAR(100) NOT NULL,
    FFM_Issuer VARCHAR(20) NULL,
    FFM_Lifecycle VARCHAR(40) NOT NULL,
    FFM_Event_Date DATETIME2(7) NULL,
    Matched_Inbound_ID_Type VARCHAR(100) NOT NULL,
    Inbound_Policy_ID VARCHAR(100) NULL,
    Inbound_Health_Coverage_Policy_No VARCHAR(100) NULL,
    Inbound_Issuer VARCHAR(20) NOT NULL,
    Inbound_Coverage_Year INT NULL,
    Inbound_Status_Raw NVARCHAR(50) NULL,
    Inbound_Lifecycle VARCHAR(40) NOT NULL,
    Inbound_Event_Date DATE NULL,
    Inbound_Source_File NVARCHAR(500) NOT NULL,
    inbound_row_id BIGINT NOT NULL,
    Policy_Match_Flag INT NOT NULL,
    Issuer_Match_Flag INT NOT NULL,
    Compatible_Lifecycle_Flag INT NOT NULL,
    Date_Difference_Days INT NULL,
    rank_priority INT NOT NULL
);

IF EXISTS (
    SELECT 1
    FROM (VALUES
        ('FFM_Coverage_Year'), ('FFM_Policy_ID'), ('FFM_Enrollee_ID'),
        ('FFM_Issuer'), ('FFM_Lifecycle'), ('FFM_Event_Date'),
        ('Matched_Inbound_ID_Type'), ('Inbound_Policy_ID'),
        ('Inbound_Health_Coverage_Policy_No'), ('Inbound_Issuer'),
        ('Inbound_Coverage_Year'), ('Inbound_Status_Raw'),
        ('Inbound_Lifecycle'), ('Inbound_Event_Date'),
        ('Inbound_Source_File'), ('inbound_row_id'), ('Policy_Match_Flag'),
        ('Issuer_Match_Flag'), ('Compatible_Lifecycle_Flag'),
        ('Date_Difference_Days'), ('rank_priority')
    ) AS required(column_name)
    WHERE COL_LENGTH('tempdb..#best', required.column_name) IS NULL
)
BEGIN
    RAISERROR('STOP: #best schema validation failed.', 16, 1);
    RETURN;
END;

CREATE TABLE #master (
    FFM_Coverage_Year INT NOT NULL,
    FFM_Issuer VARCHAR(20) NULL,
    FFM_Policy_ID VARCHAR(100) NULL,
    FFM_Enrollee_ID VARCHAR(100) NULL,
    FFM_Enrollment_Status NVARCHAR(500) NULL,
    FFM_Enrollee_Status NVARCHAR(500) NULL,
    person_type NVARCHAR(500) NULL,
    relationship_type NVARCHAR(500) NULL,
    benefit_effective_date DATETIME2(7) NULL,
    benefit_end_date DATETIME2(7) NULL,
    enrollment_create_date DATETIME2(7) NULL,
    enrollment_last_update_date DATETIME2(7) NULL,
    household_id NVARCHAR(500) NULL,
    source NVARCHAR(MAX) NULL,
    Inbound_Evidence_Found INT NOT NULL,
    Match_Category VARCHAR(50) NOT NULL,
    Inbound_Coverage_Year INT NULL,
    Inbound_Issuer VARCHAR(20) NULL,
    Inbound_Status_Raw NVARCHAR(50) NULL,
    Inbound_Lifecycle VARCHAR(40) NULL,
    Inbound_Policy_ID VARCHAR(100) NULL,
    Inbound_Health_Coverage_Policy_No VARCHAR(100) NULL,
    Inbound_Event_Date DATE NULL,
    Inbound_Source_File NVARCHAR(500) NULL,
    Matched_Inbound_ID_Type VARCHAR(100) NULL,
    Date_Difference_Days INT NULL,
    rank_priority INT NULL
);

IF EXISTS (
    SELECT 1
    FROM (VALUES
        ('FFM_Coverage_Year'), ('FFM_Issuer'), ('FFM_Policy_ID'),
        ('FFM_Enrollee_ID'), ('FFM_Enrollment_Status'),
        ('FFM_Enrollee_Status'), ('person_type'), ('relationship_type'),
        ('benefit_effective_date'), ('benefit_end_date'),
        ('enrollment_create_date'), ('enrollment_last_update_date'),
        ('household_id'), ('source'), ('Inbound_Evidence_Found'),
        ('Match_Category'), ('Inbound_Coverage_Year'), ('Inbound_Issuer'),
        ('Inbound_Status_Raw'), ('Inbound_Lifecycle'), ('Inbound_Policy_ID'),
        ('Inbound_Health_Coverage_Policy_No'), ('Inbound_Event_Date'),
        ('Inbound_Source_File'), ('Matched_Inbound_ID_Type'),
        ('Date_Difference_Days'), ('rank_priority')
    ) AS required(column_name)
    WHERE COL_LENGTH('tempdb..#master', required.column_name) IS NULL
)
BEGIN
    RAISERROR('STOP: #master schema validation failed.', 16, 1);
    RETURN;
END;


-- =============================================================================
-- 1) CURRENT FFM TARGET — exact five-field dedup before status filtering
-- =============================================================================
;WITH ranked_target AS (
    SELECT
        src.coverage_year,
        src.hios_issuer_id,
        src.enrollment_id,
        src.enrollee_id,
        src.enrollment_status_description,
        src.enrollee_status_description,
        src.person_type,
        src.relationship_type,
        src.benefit_effective_date,
        src.benefit_end_date,
        src.enrollment_create_date,
        src.enrollment_last_update_date,
        src.enrollee_create_date,
        src.enrollee_last_update_date,
        src.household_id,
        src.source,
        ROW_NUMBER() OVER (
            PARTITION BY
                src.coverage_year,
                src.enrollment_id,
                src.enrollee_id
            ORDER BY
                src.enrollment_last_update_date DESC,
                src.enrollee_last_update_date DESC,
                src.enrollment_create_date DESC,
                src.enrollee_create_date DESC,
                src.benefit_effective_date DESC
        ) AS _rn
    FROM dbo.Enrollments_TEST AS src
)
INSERT INTO #target (
    FFM_Coverage_Year,
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    FFM_Enrollment_Status,
    FFM_Enrollee_Status,
    FFM_Lifecycle,
    FFM_Event_Date,
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
)
SELECT
    e.coverage_year AS FFM_Coverage_Year,
    CAST(e.hios_issuer_id AS VARCHAR(20)) AS FFM_Issuer,
    CAST(e.enrollment_id AS VARCHAR(100)) AS FFM_Policy_ID,
    CAST(e.enrollee_id AS VARCHAR(100)) AS FFM_Enrollee_ID,
    CONVERT(NVARCHAR(500), e.enrollment_status_description)
        AS FFM_Enrollment_Status,
    CONVERT(NVARCHAR(500), e.enrollee_status_description)
        AS FFM_Enrollee_Status,
    CASE
        WHEN UPPER(LTRIM(RTRIM(e.enrollment_status_description))) = 'ENROLLED'
            THEN 'CONFIRM'
        WHEN UPPER(LTRIM(RTRIM(e.enrollment_status_description))) = 'PENDING'
            THEN 'PENDING'
        ELSE 'STATUS_MAPPING_REVIEW'
    END AS FFM_Lifecycle,
    CONVERT(
        DATETIME2(7),
        COALESCE(
            e.enrollment_last_update_date,
            e.enrollment_create_date,
            e.benefit_effective_date
        )
    ) AS FFM_Event_Date,
    CONVERT(NVARCHAR(500), e.person_type) AS person_type,
    CONVERT(NVARCHAR(500), e.relationship_type) AS relationship_type,
    CONVERT(DATETIME2(7), e.benefit_effective_date)
        AS benefit_effective_date,
    CONVERT(DATETIME2(7), e.benefit_end_date) AS benefit_end_date,
    CONVERT(DATETIME2(7), e.enrollment_create_date)
        AS enrollment_create_date,
    CONVERT(DATETIME2(7), e.enrollment_last_update_date)
        AS enrollment_last_update_date,
    CONVERT(DATETIME2(7), e.enrollee_create_date)
        AS enrollee_create_date,
    CONVERT(DATETIME2(7), e.enrollee_last_update_date)
        AS enrollee_last_update_date,
    CONVERT(NVARCHAR(500), e.household_id) AS household_id,
    CONVERT(NVARCHAR(MAX), e.source) AS source
FROM ranked_target AS e
WHERE e._rn = 1
  AND e.coverage_year = @coverage_year
  AND UPPER(LTRIM(RTRIM(e.enrollment_status_description)))
      IN ('ENROLLED', 'PENDING');

CREATE UNIQUE CLUSTERED INDEX CX_target
    ON #target (FFM_Coverage_Year, FFM_Policy_ID, FFM_Enrollee_ID);

CREATE NONCLUSTERED INDEX IX_target_enrollee
    ON #target (FFM_Enrollee_ID)
    INCLUDE (FFM_Policy_ID, FFM_Issuer, FFM_Lifecycle, FFM_Event_Date);

DECLARE @target_count BIGINT = (SELECT COUNT_BIG(*) FROM #target);

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
-- 2) FULL AVAILABLE INBOUND HISTORY
-- =============================================================================
INSERT INTO #inbound (
    inbound_row_id,
    Inbound_Member_ID,
    Inbound_Issuer_Indiv_Identifier,
    Inbound_Exchange_Assigned_Enrollee_ID,
    Inbound_Policy_ID,
    Inbound_Health_Coverage_Policy_No,
    Inbound_Issuer,
    Inbound_Coverage_Year,
    Inbound_Status_Raw,
    Inbound_Lifecycle,
    Inbound_Event_Date,
    member_maint_effective_date,
    Inbound_Benefit_Effective_Date,
    Inbound_Source_File
)
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
        WHEN UPPER(LTRIM(RTRIM(ia.enrolleeStatus))) = 'CONFIRM' THEN 'CONFIRM'
        WHEN UPPER(LTRIM(RTRIM(ia.enrolleeStatus))) = 'CANCEL' THEN 'CANCEL'
        WHEN UPPER(LTRIM(RTRIM(ia.enrolleeStatus))) = 'TERM' THEN 'TERM'
        ELSE 'STATUS_MAPPING_REVIEW'
    END AS Inbound_Lifecycle,
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
    ia.member_maint_effective_date,
    ia.benefit_effective_date AS Inbound_Benefit_Effective_Date,
    ia.source_file AS Inbound_Source_File
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
        Inbound_Lifecycle,
        Inbound_Event_Date
    );

CREATE NONCLUSTERED INDEX IX_inbound_issuer_indiv
    ON #inbound (Inbound_Issuer_Indiv_Identifier)
    INCLUDE (
        Inbound_Policy_ID,
        Inbound_Health_Coverage_Policy_No,
        Inbound_Issuer,
        Inbound_Coverage_Year,
        Inbound_Lifecycle,
        Inbound_Event_Date
    );

CREATE NONCLUSTERED INDEX IX_inbound_exchange
    ON #inbound (Inbound_Exchange_Assigned_Enrollee_ID)
    INCLUDE (
        Inbound_Policy_ID,
        Inbound_Health_Coverage_Policy_No,
        Inbound_Issuer,
        Inbound_Coverage_Year,
        Inbound_Lifecycle,
        Inbound_Event_Date
    );


-- =============================================================================
-- 3) THREE INDEPENDENT ENROLLEE IDENTIFIER PATHS
-- =============================================================================
;WITH hit_raw AS (
    SELECT
        t.FFM_Coverage_Year,
        t.FFM_Policy_ID,
        t.FFM_Enrollee_ID,
        i.inbound_row_id,
        CAST('MEMBER_ID' AS VARCHAR(40)) AS hit_type
    FROM #target AS t
    INNER JOIN #inbound AS i
        ON i.Inbound_Member_ID = t.FFM_Enrollee_ID

    UNION ALL

    SELECT
        t.FFM_Coverage_Year,
        t.FFM_Policy_ID,
        t.FFM_Enrollee_ID,
        i.inbound_row_id,
        CAST('ISSUER_INDIV_IDENTIFIER' AS VARCHAR(40))
    FROM #target AS t
    INNER JOIN #inbound AS i
        ON i.Inbound_Issuer_Indiv_Identifier = t.FFM_Enrollee_ID

    UNION ALL

    SELECT
        t.FFM_Coverage_Year,
        t.FFM_Policy_ID,
        t.FFM_Enrollee_ID,
        i.inbound_row_id,
        CAST('EXCHG_ASSIGNED_ENROLLEE_ID' AS VARCHAR(40))
    FROM #target AS t
    INNER JOIN #inbound AS i
        ON i.Inbound_Exchange_Assigned_Enrollee_ID = t.FFM_Enrollee_ID
)
INSERT INTO #candidate_hits (
    FFM_Coverage_Year,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    inbound_row_id,
    Matched_Inbound_ID_Type
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
-- 4) VALIDATED CANDIDATE RANKING
-- =============================================================================
INSERT INTO #candidates (
    FFM_Coverage_Year,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    FFM_Issuer,
    FFM_Lifecycle,
    FFM_Event_Date,
    Matched_Inbound_ID_Type,
    Inbound_Policy_ID,
    Inbound_Health_Coverage_Policy_No,
    Inbound_Issuer,
    Inbound_Coverage_Year,
    Inbound_Status_Raw,
    Inbound_Lifecycle,
    Inbound_Event_Date,
    Inbound_Source_File,
    inbound_row_id,
    Policy_Match_Flag,
    Issuer_Match_Flag,
    Compatible_Lifecycle_Flag,
    Date_Difference_Days,
    rank_priority
)
SELECT
    t.FFM_Coverage_Year,
    t.FFM_Policy_ID,
    t.FFM_Enrollee_ID,
    t.FFM_Issuer,
    t.FFM_Lifecycle,
    t.FFM_Event_Date,
    h.Matched_Inbound_ID_Type,
    i.Inbound_Policy_ID,
    i.Inbound_Health_Coverage_Policy_No,
    i.Inbound_Issuer,
    i.Inbound_Coverage_Year,
    i.Inbound_Status_Raw,
    i.Inbound_Lifecycle,
    i.Inbound_Event_Date,
    i.Inbound_Source_File,
    i.inbound_row_id,
    CASE
        WHEN t.FFM_Policy_ID = i.Inbound_Policy_ID
          OR t.FFM_Policy_ID = i.Inbound_Health_Coverage_Policy_No
            THEN 1
        ELSE 0
    END AS Policy_Match_Flag,
    CASE WHEN t.FFM_Issuer = i.Inbound_Issuer THEN 1 ELSE 0 END
        AS Issuer_Match_Flag,
    CASE
        WHEN t.FFM_Lifecycle = 'CONFIRM'
         AND i.Inbound_Lifecycle = 'CONFIRM'
            THEN 1
        ELSE 0
    END AS Compatible_Lifecycle_Flag,
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
         AND t.FFM_Lifecycle = 'CONFIRM'
         AND i.Inbound_Lifecycle = 'CONFIRM'
         AND t.FFM_Event_Date IS NOT NULL
         AND i.Inbound_Event_Date IS NOT NULL
         AND ABS(DATEDIFF(day, t.FFM_Event_Date, i.Inbound_Event_Date)) = 0
            THEN 2
        WHEN t.FFM_Issuer = i.Inbound_Issuer
         AND t.FFM_Lifecycle = 'CONFIRM'
         AND i.Inbound_Lifecycle = 'CONFIRM'
         AND t.FFM_Event_Date IS NOT NULL
         AND i.Inbound_Event_Date IS NOT NULL
         AND ABS(DATEDIFF(day, t.FFM_Event_Date, i.Inbound_Event_Date)) <= 7
            THEN 3
        WHEN t.FFM_Issuer = i.Inbound_Issuer
         AND t.FFM_Lifecycle = 'CONFIRM'
         AND i.Inbound_Lifecycle = 'CONFIRM'
            THEN 4
        WHEN t.FFM_Issuer = i.Inbound_Issuer
            THEN 5
        WHEN t.FFM_Lifecycle = 'CONFIRM'
         AND i.Inbound_Lifecycle = 'CONFIRM'
         AND t.FFM_Event_Date IS NOT NULL
         AND i.Inbound_Event_Date IS NOT NULL
         AND ABS(DATEDIFF(day, t.FFM_Event_Date, i.Inbound_Event_Date)) <= 30
            THEN 6
        WHEN t.FFM_Lifecycle = 'CONFIRM'
         AND i.Inbound_Lifecycle = 'CONFIRM'
            THEN 7
        ELSE 8
    END AS rank_priority
FROM #candidate_hits AS h
INNER JOIN #target AS t
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


-- Select exactly one best inbound row per current target pair.
;WITH ranked AS (
    SELECT
        c.FFM_Coverage_Year,
        c.FFM_Policy_ID,
        c.FFM_Enrollee_ID,
        c.FFM_Issuer,
        c.FFM_Lifecycle,
        c.FFM_Event_Date,
        c.Matched_Inbound_ID_Type,
        c.Inbound_Policy_ID,
        c.Inbound_Health_Coverage_Policy_No,
        c.Inbound_Issuer,
        c.Inbound_Coverage_Year,
        c.Inbound_Status_Raw,
        c.Inbound_Lifecycle,
        c.Inbound_Event_Date,
        c.Inbound_Source_File,
        c.inbound_row_id,
        c.Policy_Match_Flag,
        c.Issuer_Match_Flag,
        c.Compatible_Lifecycle_Flag,
        c.Date_Difference_Days,
        c.rank_priority,
        ROW_NUMBER() OVER (
            PARTITION BY
                c.FFM_Coverage_Year,
                c.FFM_Policy_ID,
                c.FFM_Enrollee_ID
            ORDER BY
                c.rank_priority,
                CASE
                    WHEN c.Date_Difference_Days IS NULL THEN 999999
                    ELSE c.Date_Difference_Days
                END,
                c.inbound_row_id DESC
        ) AS _best_rn
    FROM #candidates AS c
)
INSERT INTO #best (
    FFM_Coverage_Year,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    FFM_Issuer,
    FFM_Lifecycle,
    FFM_Event_Date,
    Matched_Inbound_ID_Type,
    Inbound_Policy_ID,
    Inbound_Health_Coverage_Policy_No,
    Inbound_Issuer,
    Inbound_Coverage_Year,
    Inbound_Status_Raw,
    Inbound_Lifecycle,
    Inbound_Event_Date,
    Inbound_Source_File,
    inbound_row_id,
    Policy_Match_Flag,
    Issuer_Match_Flag,
    Compatible_Lifecycle_Flag,
    Date_Difference_Days,
    rank_priority
)
SELECT
    ranked.FFM_Coverage_Year,
    ranked.FFM_Policy_ID,
    ranked.FFM_Enrollee_ID,
    ranked.FFM_Issuer,
    ranked.FFM_Lifecycle,
    ranked.FFM_Event_Date,
    ranked.Matched_Inbound_ID_Type,
    ranked.Inbound_Policy_ID,
    ranked.Inbound_Health_Coverage_Policy_No,
    ranked.Inbound_Issuer,
    ranked.Inbound_Coverage_Year,
    ranked.Inbound_Status_Raw,
    ranked.Inbound_Lifecycle,
    ranked.Inbound_Event_Date,
    ranked.Inbound_Source_File,
    ranked.inbound_row_id,
    ranked.Policy_Match_Flag,
    ranked.Issuer_Match_Flag,
    ranked.Compatible_Lifecycle_Flag,
    ranked.Date_Difference_Days,
    ranked.rank_priority
FROM ranked
WHERE ranked._best_rn = 1;

CREATE UNIQUE CLUSTERED INDEX CX_best
    ON #best (FFM_Coverage_Year, FFM_Policy_ID, FFM_Enrollee_ID);


-- =============================================================================
-- 5) ONE MUTUALLY EXCLUSIVE MASTER ROW PER CURRENT TARGET PAIR
-- =============================================================================
INSERT INTO #master (
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
    household_id,
    source,
    Inbound_Evidence_Found,
    Match_Category,
    Inbound_Coverage_Year,
    Inbound_Issuer,
    Inbound_Status_Raw,
    Inbound_Lifecycle,
    Inbound_Policy_ID,
    Inbound_Health_Coverage_Policy_No,
    Inbound_Event_Date,
    Inbound_Source_File,
    Matched_Inbound_ID_Type,
    Date_Difference_Days,
    rank_priority
)
SELECT
    t.FFM_Coverage_Year,
    t.FFM_Issuer,
    t.FFM_Policy_ID,
    t.FFM_Enrollee_ID,
    t.FFM_Enrollment_Status,
    t.FFM_Enrollee_Status,
    t.person_type,
    t.relationship_type,
    t.benefit_effective_date,
    t.benefit_end_date,
    t.enrollment_create_date,
    t.enrollment_last_update_date,
    t.household_id,
    t.source,
    CASE WHEN b.FFM_Enrollee_ID IS NULL THEN 0 ELSE 1 END
        AS Inbound_Evidence_Found,
    CASE
        WHEN b.FFM_Enrollee_ID IS NULL
            THEN 'NO_INBOUND_ENROLLEE_EVIDENCE'
        WHEN b.Policy_Match_Flag = 1
            THEN 'EXACT_ENROLLEE_POLICY_MATCH'
        WHEN b.Issuer_Match_Flag = 1
         AND b.Compatible_Lifecycle_Flag = 1
         AND b.Date_Difference_Days IS NOT NULL
         AND b.Date_Difference_Days <= 7
            THEN 'SAME_TRANSACTION_DIFFERENT_POLICY'
        WHEN b.Issuer_Match_Flag = 1
         AND b.Compatible_Lifecycle_Flag = 1
            THEN 'SAME_LIFECYCLE_DIFFERENT_POLICY'
        WHEN b.Issuer_Match_Flag = 0
         AND b.Compatible_Lifecycle_Flag = 1
            THEN 'CROSS_ISSUER_TRANSITION'
        ELSE 'ENROLLEE_FOUND_DIFFERENT_LIFECYCLE'
    END AS Match_Category,
    b.Inbound_Coverage_Year,
    b.Inbound_Issuer,
    b.Inbound_Status_Raw,
    b.Inbound_Lifecycle,
    b.Inbound_Policy_ID,
    b.Inbound_Health_Coverage_Policy_No,
    b.Inbound_Event_Date,
    b.Inbound_Source_File,
    b.Matched_Inbound_ID_Type,
    b.Date_Difference_Days,
    b.rank_priority
FROM #target AS t
LEFT JOIN #best AS b
    ON b.FFM_Coverage_Year = t.FFM_Coverage_Year
   AND b.FFM_Policy_ID = t.FFM_Policy_ID
   AND b.FFM_Enrollee_ID = t.FFM_Enrollee_ID;

CREATE UNIQUE CLUSTERED INDEX CX_master
    ON #master (FFM_Coverage_Year, FFM_Policy_ID, FFM_Enrollee_ID);

CREATE NONCLUSTERED INDEX IX_master_category
    ON #master (Match_Category, FFM_Issuer);

DECLARE @master_count BIGINT = (SELECT COUNT_BIG(*) FROM #master);
DECLARE @found_count BIGINT = (
    SELECT COUNT_BIG(*) FROM #master WHERE Inbound_Evidence_Found = 1
);
DECLARE @no_inbound_count BIGINT = @master_count - @found_count;
DECLARE @category_count BIGINT = (
    SELECT SUM(pair_count)
    FROM (
        SELECT COUNT_BIG(*) AS pair_count
        FROM #master
        GROUP BY Match_Category
    ) AS category_totals
);

IF @master_count <> @expected_current_target
   OR @category_count <> @expected_current_target
   OR (@found_count + @no_inbound_count) <> @expected_current_target
BEGIN
    SELECT
        @target_count AS Current_Target,
        @master_count AS Final_Master_Row_Count,
        @found_count AS Inbound_Evidence_Found,
        @no_inbound_count AS No_Inbound_Evidence,
        @category_count AS Category_Sum,
        CAST('FAIL_STOP' AS VARCHAR(20)) AS Control_Status;

    RAISERROR(
        'STOP: master controls failed. target=%I64d master=%I64d categories=%I64d.',
        16, 1, @target_count, @master_count, @category_count
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
IF OBJECT_ID('tempdb..#category_order') IS NOT NULL DROP TABLE #category_order;

CREATE TABLE #category_order (
    category_order INT NOT NULL,
    Match_Category VARCHAR(50) NOT NULL,
    PRIMARY KEY (category_order)
);

INSERT INTO #category_order (category_order, Match_Category)
VALUES
    (1, 'EXACT_ENROLLEE_POLICY_MATCH'),
    (2, 'SAME_TRANSACTION_DIFFERENT_POLICY'),
    (3, 'SAME_LIFECYCLE_DIFFERENT_POLICY'),
    (4, 'CROSS_ISSUER_TRANSITION'),
    (5, 'ENROLLEE_FOUND_DIFFERENT_LIFECYCLE'),
    (6, 'NO_INBOUND_ENROLLEE_EVIDENCE');

SELECT
    o.Match_Category,
    COUNT_BIG(m.FFM_Coverage_Year) AS Pair_Count,
    CAST(
        100.0 * COUNT_BIG(m.FFM_Coverage_Year) / NULLIF(@target_count, 0)
        AS DECIMAL(10, 4)
    ) AS Percentage_Of_Target
FROM #category_order AS o
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
                THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
        END) AS No_Inbound,
        SUM(CASE
            WHEN Match_Category = 'EXACT_ENROLLEE_POLICY_MATCH'
                THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
        END) AS Exact_Match,
        SUM(CASE
            WHEN Match_Category = 'SAME_TRANSACTION_DIFFERENT_POLICY'
                THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
        END) AS Same_Transaction_Different_Policy,
        SUM(CASE
            WHEN Match_Category = 'SAME_LIFECYCLE_DIFFERENT_POLICY'
                THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
        END) AS Same_Lifecycle_Different_Policy,
        SUM(CASE
            WHEN Match_Category = 'CROSS_ISSUER_TRANSITION'
                THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
        END) AS Cross_Issuer,
        SUM(CASE
            WHEN Match_Category = 'ENROLLEE_FOUND_DIFFERENT_LIFECYCLE'
                THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
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
    COUNT_BIG(*) AS Target_Pairs,
    SUM(CONVERT(BIGINT, Inbound_Evidence_Found)) AS Inbound_Found,
    SUM(CASE
        WHEN Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
            THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
    END) AS No_Inbound,
    CAST(
        100.0 * SUM(CASE
            WHEN Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
                THEN CONVERT(BIGINT, 1) ELSE CONVERT(BIGINT, 0)
        END) / NULLIF(COUNT_BIG(*), 0)
        AS DECIMAL(10, 4)
    ) AS No_Inbound_Percentage
FROM #master
GROUP BY FFM_Enrollment_Status
ORDER BY FFM_Enrollment_Status;


-- =============================================================================
-- RESULT 5 — PERSON / RELATIONSHIP BREAKDOWN OF NO-INBOUND
-- =============================================================================
SELECT
    person_type,
    relationship_type,
    COUNT_BIG(*) AS No_Inbound_Pairs,
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
    No_Inbound_Pairs DESC,
    person_type,
    relationship_type;


-- =============================================================================
-- RESULT 6 — NO-INBOUND BY ISSUER + PERSON TYPE
-- =============================================================================
SELECT
    FFM_Issuer,
    person_type,
    relationship_type,
    COUNT_BIG(*) AS No_Inbound_Pairs
FROM #master
WHERE Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
GROUP BY
    FFM_Issuer,
    person_type,
    relationship_type
ORDER BY
    FFM_Issuer,
    No_Inbound_Pairs DESC,
    person_type,
    relationship_type;


-- =============================================================================
-- RESULT 7 — SELECTED/BEST INBOUND EVIDENCE YEAR
-- =============================================================================
SELECT
    Inbound_Coverage_Year,
    COUNT_BIG(*) AS Pair_Count,
    CAST(
        100.0 * COUNT_BIG(*) / NULLIF(@found_count, 0)
        AS DECIMAL(10, 4)
    ) AS Percentage_Of_Found
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
    household_id,
    source
FROM #master
WHERE Match_Category = 'NO_INBOUND_ENROLLEE_EVIDENCE'
ORDER BY
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollee_ID;
