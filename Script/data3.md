-- =============================================================================
-- PROFILE — VALIDATED 2026 NO_INBOUND_ENROLLEE_EVIDENCE PREMIUM
-- =============================================================================
-- Source population:
--   Exact validated logic from:
--   sql/export_2026_no_inbound_enrollee_evidence.sql
--
-- Validated controls:
--   2026 FFM Enrolled/Pending target = 960,531 Policy + Enrollee pairs
--   NO_INBOUND_ENROLLEE_EVIDENCE     = 109,776 Policy + Enrollee pairs
--
-- Grain:
--   FFM_Coverage_Year + FFM_Policy_ID + FFM_Enrollee_ID
--
-- Premium field confirmed:
--   dbo.Enrollments_TEST.net_premium_amt
--
-- Safety:
--   READ ONLY on permanent tables.
--   Temp tables/indexes only.
--   No RCNI.
--   No Auto-Renewal analysis.
--   No permanent writes.
-- =============================================================================

SET NOCOUNT ON;
SET XACT_ABORT ON;

DECLARE @CoverageYear INT = 2026;
DECLARE @ExpectedFFMTarget BIGINT = 960531;
DECLARE @ExpectedNoInbound BIGINT = 109776;

-- CONFIRMED from dbo.Enrollments_TEST schema
DECLARE @NetPremiumColumn SYSNAME = N'net_premium_amt';

DECLARE @StartedAt DATETIME2 = SYSDATETIME();
DECLARE @Message NVARCHAR(400);


-- =============================================================================
-- SAFETY CHECK — Confirm premium column still exists
-- =============================================================================

IF NOT EXISTS (
    SELECT 1
    FROM sys.columns AS c
    WHERE c.object_id = OBJECT_ID(N'dbo.Enrollments_TEST')
      AND c.name = @NetPremiumColumn
)
BEGIN
    THROW 50002,
        'STOP: dbo.Enrollments_TEST.net_premium_amt does not exist.',
        1;
END;


-- =============================================================================
-- STEP 1 — Exact validated 2026 FFM target population and deduplication
-- =============================================================================

RAISERROR(
    'PREMIUM PROFILE STEP1: build validated FFM target',
    10, 1
) WITH NOWAIT;

IF OBJECT_ID('tempdb..#ffm_target') IS NOT NULL
    DROP TABLE #ffm_target;

CREATE TABLE #ffm_target (
    FFM_Coverage_Year INT NULL,
    FFM_Issuer VARCHAR(20) NULL,
    FFM_Policy_ID VARCHAR(100) NULL,
    FFM_Enrollee_ID VARCHAR(100) NULL,
    FFM_Enrollment_Status NVARCHAR(255) NULL,
    FFM_Enrollee_Status NVARCHAR(255) NULL,
    Net_Premium_Amount DECIMAL(38,10) NULL
);


DECLARE @LoadFFMTargetSQL NVARCHAR(MAX) =
N'
INSERT INTO #ffm_target (
    FFM_Coverage_Year,
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    FFM_Enrollment_Status,
    FFM_Enrollee_Status,
    Net_Premium_Amount
)
SELECT
    e.coverage_year,
    CAST(e.hios_issuer_id AS VARCHAR(20)),
    CAST(e.enrollment_id AS VARCHAR(100)),
    CAST(e.enrollee_id AS VARCHAR(100)),
    e.enrollment_status_description,
    e.enrollee_status_description,
    TRY_CONVERT(DECIMAL(38,10), e.Net_Premium_Source_Value)
FROM (
    SELECT
        src.coverage_year,
        src.hios_issuer_id,
        src.enrollment_id,
        src.enrollee_id,
        src.enrollment_status_description,
        src.enrollee_status_description,
        src.enrollment_create_date,
        src.enrollment_last_update_date,
        src.' + QUOTENAME(@NetPremiumColumn) + N' AS Net_Premium_Source_Value,

        ROW_NUMBER() OVER (
            PARTITION BY
                src.coverage_year,
                src.enrollment_id,
                src.enrollee_id
            ORDER BY
                src.enrollment_last_update_date DESC,
                src.enrollment_create_date DESC
        ) AS _rn

    FROM dbo.Enrollments_TEST AS src

    WHERE src.coverage_year = @DynamicCoverageYear
      AND UPPER(LTRIM(RTRIM(src.enrollment_status_description)))
          IN (''ENROLLED'', ''PENDING'')
) AS e

WHERE e._rn = 1;
';


EXEC sys.sp_executesql
    @LoadFFMTargetSQL,
    N'@DynamicCoverageYear INT',
    @DynamicCoverageYear = @CoverageYear;


CREATE UNIQUE CLUSTERED INDEX CX_ffm_target
ON #ffm_target (
    FFM_Coverage_Year,
    FFM_Policy_ID,
    FFM_Enrollee_ID
);


CREATE NONCLUSTERED INDEX IX_ffm_target_enrollee
ON #ffm_target (FFM_Enrollee_ID)
INCLUDE (
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollment_Status,
    FFM_Enrollee_Status,
    Net_Premium_Amount
);


DECLARE @FFMTargetCount BIGINT =
(
    SELECT COUNT_BIG(*)
    FROM #ffm_target
);


IF @FFMTargetCount <> @ExpectedFFMTarget
BEGIN

    RAISERROR(
        'STOP: FFM_TARGET_COUNT=%I64d; expected %I64d. No premium profile returned.',
        16,
        1,
        @FFMTargetCount,
        @ExpectedFFMTarget
    );

    RETURN;
END;


-- =============================================================================
-- STEP 2 — Exact validated ALL-HISTORY inbound enrollee identifier stage
-- =============================================================================
-- IMPORTANT:
-- We intentionally search ALL inbound history.
--
-- Do NOT restrict this to 2025/2026.
--
-- Previous validation established that 13,006 records had qualifying
-- enrollee evidence in 2024. Restricting inbound history would incorrectly
-- inflate NO_INBOUND from 109,776 to 122,782.
-- =============================================================================

RAISERROR(
    'PREMIUM PROFILE STEP2: stage all-history inbound identifiers',
    10,
    1
) WITH NOWAIT;


IF OBJECT_ID('tempdb..#inbound_identifiers') IS NOT NULL
    DROP TABLE #inbound_identifiers;


SELECT
    ia.id AS inbound_row_id,

    NULLIF(
        LTRIM(RTRIM(CAST(ia.member_id AS VARCHAR(100)))),
        ''
    ) AS Inbound_Member_ID,

    NULLIF(
        LTRIM(RTRIM(CAST(ia.issuer_indiv_identifier AS VARCHAR(100)))),
        ''
    ) AS Inbound_Issuer_Indiv_Identifier,

    NULLIF(
        LTRIM(RTRIM(CAST(ia.exchg_assigned_enrollee_id AS VARCHAR(100)))),
        ''
    ) AS Inbound_Exchange_Assigned_Enrollee_ID

INTO #inbound_identifiers

FROM dbo.inbound_automation AS ia

WHERE
       NULLIF(LTRIM(RTRIM(CAST(ia.member_id AS VARCHAR(100)))), '') IS NOT NULL
    OR NULLIF(LTRIM(RTRIM(CAST(ia.issuer_indiv_identifier AS VARCHAR(100)))), '') IS NOT NULL
    OR NULLIF(LTRIM(RTRIM(CAST(ia.exchg_assigned_enrollee_id AS VARCHAR(100)))), '') IS NOT NULL;


CREATE UNIQUE CLUSTERED INDEX CX_inbound_identifiers
ON #inbound_identifiers (inbound_row_id);


CREATE NONCLUSTERED INDEX IX_inbound_member
ON #inbound_identifiers (Inbound_Member_ID);


CREATE NONCLUSTERED INDEX IX_inbound_issuer_indiv
ON #inbound_identifiers (Inbound_Issuer_Indiv_Identifier);


CREATE NONCLUSTERED INDEX IX_inbound_exchange
ON #inbound_identifiers (Inbound_Exchange_Assigned_Enrollee_ID);


-- =============================================================================
-- STEP 3 — Exact validated NO_INBOUND_ENROLLEE_EVIDENCE population
-- =============================================================================

RAISERROR(
    'PREMIUM PROFILE STEP3: build validated NO_INBOUND population',
    10,
    1
) WITH NOWAIT;


IF OBJECT_ID('tempdb..#no_inbound_premium') IS NOT NULL
    DROP TABLE #no_inbound_premium;


SELECT
    t.FFM_Coverage_Year,
    t.FFM_Issuer,
    t.FFM_Policy_ID,
    t.FFM_Enrollee_ID,
    t.FFM_Enrollment_Status,
    t.FFM_Enrollee_Status,
    t.Net_Premium_Amount,

    CAST(
        CASE
            WHEN t.Net_Premium_Amount IS NULL
                THEN 'NULL_PREMIUM'

            WHEN t.Net_Premium_Amount = 0
                THEN 'ZERO_DOLLAR'

            ELSE 'NON_ZERO'
        END
        AS VARCHAR(20)
    ) AS Premium_Category,

    CAST(
        'NO_INBOUND_ENROLLEE_EVIDENCE'
        AS VARCHAR(40)
    ) AS Match_Level

INTO #no_inbound_premium

FROM #ffm_target AS t

WHERE NOT EXISTS (
        SELECT 1
        FROM #inbound_identifiers AS i
        WHERE i.Inbound_Member_ID = t.FFM_Enrollee_ID
    )

  AND NOT EXISTS (
        SELECT 1
        FROM #inbound_identifiers AS i
        WHERE i.Inbound_Issuer_Indiv_Identifier = t.FFM_Enrollee_ID
    )

  AND NOT EXISTS (
        SELECT 1
        FROM #inbound_identifiers AS i
        WHERE i.Inbound_Exchange_Assigned_Enrollee_ID = t.FFM_Enrollee_ID
    );


CREATE UNIQUE CLUSTERED INDEX CX_no_inbound_premium
ON #no_inbound_premium (
    FFM_Coverage_Year,
    FFM_Policy_ID,
    FFM_Enrollee_ID
);


CREATE NONCLUSTERED INDEX IX_no_inbound_premium_category
ON #no_inbound_premium (Premium_Category)
INCLUDE (
    FFM_Issuer,
    FFM_Enrollment_Status,
    FFM_Enrollee_Status
);


DECLARE @NoInboundCount BIGINT =
(
    SELECT COUNT_BIG(*)
    FROM #no_inbound_premium
);


IF @NoInboundCount <> @ExpectedNoInbound
BEGIN

    RAISERROR(
        'STOP: NO_INBOUND_COUNT=%I64d; expected %I64d. No premium profile returned.',
        16,
        1,
        @NoInboundCount,
        @ExpectedNoInbound
    );

    RETURN;
END;


SET @Message =
    CONCAT(
        'PREMIUM PROFILE population validated; FFM_TARGET_COUNT=',
        @FFMTargetCount,
        '; NO_INBOUND_COUNT=',
        @NoInboundCount,
        '; elapsed_s=',
        DATEDIFF(
            SECOND,
            @StartedAt,
            SYSDATETIME()
        )
    );


RAISERROR(
    @Message,
    10,
    1
) WITH NOWAIT;


-- =============================================================================
-- REQUIRED CONTROL
-- =============================================================================

SELECT
    @FFMTargetCount AS FFM_TARGET_COUNT,
    @NoInboundCount AS NO_INBOUND_COUNT,

    CASE
        WHEN @FFMTargetCount = @ExpectedFFMTarget
         AND @NoInboundCount = @ExpectedNoInbound
        THEN 'PASS'
        ELSE 'FAIL'
    END AS CONTROL_STATUS;


-- =============================================================================
-- RESULT 1 — Premium category distribution
-- =============================================================================

SELECT
    Premium_Category,
    COUNT_BIG(*) AS Record_Count,

    CAST(
        100.0 * COUNT_BIG(*)
        / NULLIF(@NoInboundCount, 0)
        AS DECIMAL(10,4)
    ) AS Percent_of_109776

FROM #no_inbound_premium

GROUP BY
    Premium_Category

ORDER BY
    CASE Premium_Category
        WHEN 'ZERO_DOLLAR' THEN 1
        WHEN 'NON_ZERO' THEN 2
        WHEN 'NULL_PREMIUM' THEN 3
        ELSE 99
    END;


-- =============================================================================
-- RESULT 2 — FFM Enrollment Status by Premium Category
-- =============================================================================

SELECT
    FFM_Enrollment_Status,
    Premium_Category,
    COUNT_BIG(*) AS Record_Count

FROM #no_inbound_premium

GROUP BY
    FFM_Enrollment_Status,
    Premium_Category

ORDER BY
    FFM_Enrollment_Status,

    CASE Premium_Category
        WHEN 'ZERO_DOLLAR' THEN 1
        WHEN 'NON_ZERO' THEN 2
        WHEN 'NULL_PREMIUM' THEN 3
        ELSE 99
    END;


-- =============================================================================
-- RESULT 3 — FFM Enrollee Status by Premium Category
-- =============================================================================

SELECT
    FFM_Enrollee_Status,
    Premium_Category,
    COUNT_BIG(*) AS Record_Count

FROM #no_inbound_premium

GROUP BY
    FFM_Enrollee_Status,
    Premium_Category

ORDER BY
    FFM_Enrollee_Status,

    CASE Premium_Category
        WHEN 'ZERO_DOLLAR' THEN 1
        WHEN 'NON_ZERO' THEN 2
        WHEN 'NULL_PREMIUM' THEN 3
        ELSE 99
    END;


-- =============================================================================
-- RESULT 4 — Issuer by Premium Category
-- =============================================================================

SELECT
    FFM_Issuer AS Issuer,
    Premium_Category,
    COUNT_BIG(*) AS Record_Count

FROM #no_inbound_premium

GROUP BY
    FFM_Issuer,
    Premium_Category

ORDER BY
    FFM_Issuer,

    CASE Premium_Category
        WHEN 'ZERO_DOLLAR' THEN 1
        WHEN 'NON_ZERO' THEN 2
        WHEN 'NULL_PREMIUM' THEN 3
        ELSE 99
    END;


-- =============================================================================
-- RESULT 5 — Additional sanity check
-- Must equal 109,776
-- =============================================================================

SELECT
    COUNT_BIG(*) AS Final_Detail_Record_Count,

    COUNT_BIG(
        DISTINCT CONCAT(
            FFM_Coverage_Year,
            '|',
            FFM_Policy_ID,
            '|',
            FFM_Enrollee_ID
        )
    ) AS Final_Distinct_Policy_Enrollee_Count

FROM #no_inbound_premium

WHERE Match_Level = 'NO_INBOUND_ENROLLEE_EVIDENCE';


-- =============================================================================
-- FINAL RESULT — All 109,776 validated row-level records
-- =============================================================================

SELECT
    FFM_Coverage_Year,
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollee_ID,
    FFM_Enrollment_Status,
    FFM_Enrollee_Status,
    Net_Premium_Amount,
    Premium_Category

FROM #no_inbound_premium

WHERE Match_Level = 'NO_INBOUND_ENROLLEE_EVIDENCE'

ORDER BY
    FFM_Issuer,
    FFM_Policy_ID,
    FFM_Enrollee_ID;
