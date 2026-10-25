


-- =============================================================================
-- DIAGNOSTIC — Historical enrollment snapshot candidate fingerprint
-- =============================================================================
-- Purpose:
--   Determine whether a repository-referenced dbo.Enrollments_* table can
--   reproduce the previously validated 2026 enrollment snapshot.
--
-- Safety:
--   READ ONLY on permanent objects. Temp tables only.
--   Does not query dbo.Enrollments_TEST or dbo.inbound_automation.
--   Does not rebuild No-Inbound or perform reconciliation.
--
-- NEAR_MATCH is diagnostic only:
--   complete and target counts are each within 1% of their historical control,
--   target issuer count is within 1, and issuer 82824 remains absent.
-- =============================================================================

SET NOCOUNT ON;
SET XACT_ABORT ON;

DECLARE @coverage_year INT = 2026;
DECLARE @expected_complete BIGINT = 2263972;
DECLARE @expected_target BIGINT = 960531;
DECLARE @expected_target_issuers INT = 16;
DECLARE @complete_near_tolerance BIGINT =
    CEILING(@expected_complete * 0.01);
DECLARE @target_near_tolerance BIGINT =
    CEILING(@expected_target * 0.01);


-- Candidate list comes from azure_reconciliation/azure_client.py.
CREATE TABLE #candidates (
    candidate_order INT NOT NULL,
    schema_name SYSNAME NOT NULL,
    table_name SYSNAME NOT NULL,
    object_id INT NULL,
    object_type NVARCHAR(60) NULL,
    required_columns_found INT NOT NULL DEFAULT 0,
    missing_required_columns NVARCHAR(MAX) NULL,
    supports_exact_logic BIT NOT NULL DEFAULT 0,
    PRIMARY KEY (candidate_order)
);

INSERT INTO #candidates (candidate_order, schema_name, table_name)
VALUES
    (1, N'dbo', N'Enrollments_PY2026'),
    (2, N'dbo', N'Enrollments_PY2526_01312026'),
    (3, N'dbo', N'Enrollments_PY2526_02272026'),
    (4, N'dbo', N'Enrollments_PY2526_03312026'),
    (5, N'dbo', N'Enrollments_PY2526_04302026'),
    (6, N'dbo', N'Enrollments_PY2526_FEB10'),
    (7, N'dbo', N'Enrollments_PY2526_DEC31');

UPDATE c
SET
    object_id = o.object_id,
    object_type = o.type_desc
FROM #candidates AS c
INNER JOIN sys.schemas AS s
    ON s.name = c.schema_name
INNER JOIN sys.objects AS o
    ON o.schema_id = s.schema_id
   AND o.name = c.table_name
   AND o.type IN ('U', 'V');


CREATE TABLE #required_columns (
    required_order INT NOT NULL,
    column_name SYSNAME NOT NULL,
    PRIMARY KEY (required_order)
);

INSERT INTO #required_columns (required_order, column_name)
VALUES
    (1, N'coverage_year'),
    (2, N'enrollment_id'),
    (3, N'enrollee_id'),
    (4, N'hios_issuer_id'),
    (5, N'enrollment_status_description'),
    (6, N'enrollee_status_description'),
    (7, N'enrollment_last_update_date'),
    (8, N'enrollee_last_update_date'),
    (9, N'enrollment_create_date'),
    (10, N'enrollee_create_date'),
    (11, N'benefit_effective_date');

UPDATE c
SET
    required_columns_found = profile.required_columns_found,
    missing_required_columns = profile.missing_required_columns,
    supports_exact_logic =
        CASE
            WHEN c.object_id IS NOT NULL
             AND profile.required_columns_found = 11
                THEN 1
            ELSE 0
        END
FROM #candidates AS c
CROSS APPLY (
    SELECT
        SUM(CASE WHEN sc.column_id IS NOT NULL THEN 1 ELSE 0 END)
            AS required_columns_found,
        STRING_AGG(
            CONVERT(
                NVARCHAR(MAX),
                CASE WHEN sc.column_id IS NULL THEN r.column_name END
            ),
            N', '
        ) WITHIN GROUP (ORDER BY r.required_order)
            AS missing_required_columns
    FROM #required_columns AS r
    LEFT JOIN sys.columns AS sc
        ON sc.object_id = c.object_id
       AND sc.name = r.column_name
) AS profile;


-- RESULT 1 — Candidate existence and exact-logic support
SELECT
    QUOTENAME(schema_name) + N'.' + QUOTENAME(table_name) AS Table_Name,
    CASE WHEN object_id IS NULL THEN 0 ELSE 1 END AS Object_Exists,
    object_type AS Object_Type,
    required_columns_found AS Required_Columns_Found,
    supports_exact_logic AS Supports_Exact_Five_Field_Logic,
    CASE
        WHEN object_id IS NULL THEN N'OBJECT_NOT_FOUND'
        WHEN supports_exact_logic = 0 THEN missing_required_columns
        ELSE NULL
    END AS Missing_Required_Columns
FROM #candidates
ORDER BY candidate_order;


-- RESULT 1B — Required-field schema matrix
SELECT
    QUOTENAME(c.schema_name) + N'.' + QUOTENAME(c.table_name) AS Table_Name,
    r.column_name AS Required_Field,
    CASE WHEN sc.column_id IS NULL THEN 0 ELSE 1 END AS Field_Present,
    ty.name AS Data_Type,
    sc.max_length AS Max_Length,
    sc.precision AS Numeric_Precision,
    sc.scale AS Numeric_Scale,
    sc.is_nullable AS Is_Nullable
FROM #candidates AS c
CROSS JOIN #required_columns AS r
LEFT JOIN sys.columns AS sc
    ON sc.object_id = c.object_id
   AND sc.name = r.column_name
LEFT JOIN sys.types AS ty
    ON ty.user_type_id = sc.user_type_id
ORDER BY
    c.candidate_order,
    r.required_order;


CREATE TABLE #candidate_dedup (
    coverage_year NVARCHAR(100) NULL,
    enrollment_id NVARCHAR(200) NULL,
    enrollee_id NVARCHAR(200) NULL,
    hios_issuer_id NVARCHAR(100) NULL,
    enrollment_status_description NVARCHAR(500) NULL,
    enrollee_status_description NVARCHAR(500) NULL
);

CREATE TABLE #fingerprints (
    candidate_order INT NOT NULL,
    complete_2026_pairs BIGINT NULL,
    enrolled_pending_2026_pairs BIGINT NULL,
    target_distinct_issuers INT NULL,
    has_issuer_82824_in_target BIT NULL,
    difference_from_2263972 BIGINT NULL,
    difference_from_960531 BIGINT NULL,
    fingerprint_status VARCHAR(50) NOT NULL,
    diagnostic_reason NVARCHAR(4000) NULL,
    PRIMARY KEY (candidate_order)
);

CREATE TABLE #issuer_target_counts (
    candidate_order INT NOT NULL,
    issuer NVARCHAR(100) NULL,
    target_pair_count BIGINT NOT NULL
);

-- Unsupported/missing candidates are reported without executing alternate logic.
INSERT INTO #fingerprints (
    candidate_order,
    fingerprint_status,
    diagnostic_reason
)
SELECT
    candidate_order,
    'UNSUPPORTED_FOR_EXACT_REPRODUCTION',
    COALESCE(missing_required_columns, N'OBJECT_NOT_FOUND')
FROM #candidates
WHERE supports_exact_logic = 0;


DECLARE
    @candidate_order INT,
    @schema_name SYSNAME,
    @table_name SYSNAME,
    @sql NVARCHAR(MAX),
    @complete_pairs BIGINT,
    @target_pairs BIGINT,
    @target_issuers INT,
    @has_82824 BIT;

DECLARE candidate_cursor CURSOR LOCAL FAST_FORWARD FOR
SELECT candidate_order, schema_name, table_name
FROM #candidates
WHERE supports_exact_logic = 1
ORDER BY candidate_order;

OPEN candidate_cursor;

FETCH NEXT FROM candidate_cursor
INTO @candidate_order, @schema_name, @table_name;

WHILE @@FETCH_STATUS = 0
BEGIN
    TRUNCATE TABLE #candidate_dedup;

    -- Exact five-field ordering; no missing-field fallback or substitution.
    SET @sql = N'
        ;WITH ranked AS (
            SELECT
                coverage_year,
                enrollment_id,
                enrollee_id,
                hios_issuer_id,
                enrollment_status_description,
                enrollee_status_description,
                ROW_NUMBER() OVER (
                    PARTITION BY
                        coverage_year,
                        enrollment_id,
                        enrollee_id
                    ORDER BY
                        enrollment_last_update_date DESC,
                        enrollee_last_update_date DESC,
                        enrollment_create_date DESC,
                        enrollee_create_date DESC,
                        benefit_effective_date DESC
                ) AS _rn
            FROM ' + QUOTENAME(@schema_name) + N'.'
                      + QUOTENAME(@table_name) + N'
            WHERE coverage_year = @p_coverage_year
        )
        INSERT INTO #candidate_dedup (
            coverage_year,
            enrollment_id,
            enrollee_id,
            hios_issuer_id,
            enrollment_status_description,
            enrollee_status_description
        )
        SELECT
            CONVERT(NVARCHAR(100), coverage_year),
            CONVERT(NVARCHAR(200), enrollment_id),
            CONVERT(NVARCHAR(200), enrollee_id),
            CONVERT(NVARCHAR(100), hios_issuer_id),
            CONVERT(NVARCHAR(500), enrollment_status_description),
            CONVERT(NVARCHAR(500), enrollee_status_description)
        FROM ranked
        WHERE _rn = 1;';

    BEGIN TRY
        EXEC sys.sp_executesql
            @sql,
            N'@p_coverage_year INT',
            @p_coverage_year = @coverage_year;

        SELECT
            @complete_pairs = COUNT_BIG(*),
            @target_pairs = COALESCE(SUM(
                CASE
                    WHEN UPPER(LTRIM(RTRIM(enrollment_status_description)))
                         IN ('ENROLLED', 'PENDING')
                        THEN CONVERT(BIGINT, 1)
                    ELSE CONVERT(BIGINT, 0)
                END
            ), 0),
            @target_issuers = COUNT(DISTINCT CASE
                WHEN UPPER(LTRIM(RTRIM(enrollment_status_description)))
                     IN ('ENROLLED', 'PENDING')
                    THEN hios_issuer_id
            END),
            @has_82824 = CONVERT(BIT, COALESCE(MAX(
                CASE
                    WHEN UPPER(LTRIM(RTRIM(enrollment_status_description)))
                         IN ('ENROLLED', 'PENDING')
                     AND LTRIM(RTRIM(hios_issuer_id)) = '82824'
                        THEN 1
                    ELSE 0
                END
            ), 0))
        FROM #candidate_dedup;

        INSERT INTO #fingerprints (
            candidate_order,
            complete_2026_pairs,
            enrolled_pending_2026_pairs,
            target_distinct_issuers,
            has_issuer_82824_in_target,
            difference_from_2263972,
            difference_from_960531,
            fingerprint_status
        )
        VALUES (
            @candidate_order,
            @complete_pairs,
            @target_pairs,
            @target_issuers,
            @has_82824,
            @complete_pairs - @expected_complete,
            @target_pairs - @expected_target,
            'PENDING_CLASSIFICATION'
        );

        INSERT INTO #issuer_target_counts (
            candidate_order,
            issuer,
            target_pair_count
        )
        SELECT
            @candidate_order,
            hios_issuer_id,
            COUNT_BIG(*)
        FROM #candidate_dedup
        WHERE UPPER(LTRIM(RTRIM(enrollment_status_description)))
              IN ('ENROLLED', 'PENDING')
        GROUP BY hios_issuer_id;
    END TRY
    BEGIN CATCH
        INSERT INTO #fingerprints (
            candidate_order,
            fingerprint_status,
            diagnostic_reason
        )
        VALUES (
            @candidate_order,
            'UNSUPPORTED_FOR_EXACT_REPRODUCTION',
            CONCAT(
                'Exact query could not execute: ',
                ERROR_MESSAGE()
            )
        );
    END CATCH;

    FETCH NEXT FROM candidate_cursor
    INTO @candidate_order, @schema_name, @table_name;
END;

CLOSE candidate_cursor;
DEALLOCATE candidate_cursor;


UPDATE f
SET fingerprint_status =
    CASE
        WHEN f.complete_2026_pairs = @expected_complete
         AND f.enrolled_pending_2026_pairs = @expected_target
         AND f.target_distinct_issuers = @expected_target_issuers
         AND f.has_issuer_82824_in_target = 0
            THEN 'EXACT_MATCH'
        WHEN ABS(f.difference_from_2263972) <= @complete_near_tolerance
         AND ABS(f.difference_from_960531) <= @target_near_tolerance
         AND ABS(f.target_distinct_issuers - @expected_target_issuers) <= 1
         AND f.has_issuer_82824_in_target = 0
            THEN 'NEAR_MATCH'
        ELSE 'NO_MATCH'
    END
FROM #fingerprints AS f
WHERE f.fingerprint_status = 'PENDING_CLASSIFICATION';


-- RESULT 2 — Historical fingerprint comparison
SELECT
    QUOTENAME(c.schema_name) + N'.' + QUOTENAME(c.table_name) AS Table_Name,
    f.complete_2026_pairs AS Complete_2026_Pairs,
    f.enrolled_pending_2026_pairs AS Enrolled_Pending_2026_Pairs,
    f.target_distinct_issuers AS Target_Distinct_Issuers,
    f.has_issuer_82824_in_target AS Has_Issuer_82824_In_Target,
    f.difference_from_2263972 AS Difference_From_2263972,
    f.difference_from_960531 AS Difference_From_960531,
    f.fingerprint_status AS Fingerprint_Status,
    CASE
        WHEN f.fingerprint_status = 'UNSUPPORTED_FOR_EXACT_REPRODUCTION'
            THEN COALESCE(
                f.diagnostic_reason,
                c.missing_required_columns,
                N'OBJECT_NOT_FOUND'
            )
        ELSE NULL
    END AS Unsupported_Reason
FROM #candidates AS c
INNER JOIN #fingerprints AS f
    ON f.candidate_order = c.candidate_order
ORDER BY c.candidate_order;


-- RESULT 3 — Issuer target counts for EXACT_MATCH / strong NEAR_MATCH only
SELECT
    QUOTENAME(c.schema_name) + N'.' + QUOTENAME(c.table_name) AS Table_Name,
    f.fingerprint_status AS Fingerprint_Status,
    i.issuer AS Issuer,
    i.target_pair_count AS Enrolled_Pending_Target_Pairs
FROM #issuer_target_counts AS i
INNER JOIN #candidates AS c
    ON c.candidate_order = i.candidate_order
INNER JOIN #fingerprints AS f
    ON f.candidate_order = i.candidate_order
WHERE f.fingerprint_status IN ('EXACT_MATCH', 'NEAR_MATCH')
ORDER BY
    c.candidate_order,
    i.target_pair_count DESC,
    i.issuer;


-- RESULT 4 — Diagnostic disposition only; no reconciliation conclusion
SELECT
    SUM(CASE WHEN fingerprint_status = 'EXACT_MATCH' THEN 1 ELSE 0 END)
        AS Exact_Match_Candidate_Count,
    SUM(CASE WHEN fingerprint_status = 'NEAR_MATCH' THEN 1 ELSE 0 END)
        AS Near_Match_Candidate_Count,
    SUM(CASE
        WHEN fingerprint_status = 'UNSUPPORTED_FOR_EXACT_REPRODUCTION'
            THEN 1 ELSE 0
    END) AS Unsupported_Candidate_Count,
    @complete_near_tolerance AS Complete_Pair_Near_Tolerance,
    @target_near_tolerance AS Target_Pair_Near_Tolerance,
    CAST(
        'Fingerprint discovery only. Do not rebuild No-Inbound or continue reconciliation.'
        AS VARCHAR(120)
    ) AS Diagnostic_Note
FROM #fingerprints;
