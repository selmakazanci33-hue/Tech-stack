-- =============================================================================
-- DIAGNOSTIC — dbo.inbound_automation freshness
-- =============================================================================
-- Purpose:
--   Establish the current inbound 834 data boundary before any further 2026
--   enrollment reconciliation or Auto-Renewal analysis.
--
-- Repository definitions reused:
--   sql/inbound_automation_ddl.sql
--   docs/inbound_automation_schema.md
--   inbound_automation/filename_utils.py
--   inbound_automation/enrich.py
--   inbound_automation/azure_writer.py
--
-- Date semantics kept separate:
--   Source_File_Date:
--     Derived only from filename layouts supported by filename_utils.py.
--     Exact day is not persisted as a dedicated database column. Unsupported
--     or inconsistent names remain NULL.
--   Source_File_Month:
--     Persisted filename_file_year + filename_file_month from the loader.
--   Load_Ingestion_Date:
--     loaded_at assigned by the inbound automation load.
--   Transaction_Date:
--     member_maint_effective_date from Parser834.
--   Effective_Date:
--     benefit_effective_date from Parser834.
--
-- Safety:
--   READ ONLY on permanent tables. Temp tables/indexes only.
--   Does not query Enrollments_TEST and does not rebuild reconciliation controls.
-- =============================================================================

SET NOCOUNT ON;
SET XACT_ABORT ON;

IF OBJECT_ID(N'dbo.inbound_automation', N'U') IS NULL
BEGIN
    RAISERROR('Required table dbo.inbound_automation does not exist.', 16, 1);
    RETURN;
END;


-- =============================================================================
-- Stage the authoritative inbound freshness fields once.
-- =============================================================================
IF OBJECT_ID('tempdb..#inbound_freshness') IS NOT NULL
    DROP TABLE #inbound_freshness;

SELECT
    CAST(ia.issuer AS VARCHAR(20)) AS issuer,
    ia.coverage_year,
    ia.filename_file_year,
    ia.filename_file_month,
    ia.source_file,
    ia.file_hash,
    ia.loaded_at,
    ia.member_maint_effective_date,
    ia.benefit_effective_date,
    ia.benefit_end_date,
    parsed.Candidate_Source_File_Date,
    CASE
        WHEN parsed.Candidate_Source_File_Date IS NULL THEN NULL
        WHEN
            (
                ia.filename_file_year IS NULL
                OR ia.filename_file_year = YEAR(parsed.Candidate_Source_File_Date)
            )
            AND
            (
                ia.filename_file_month IS NULL
                OR ia.filename_file_month = MONTH(parsed.Candidate_Source_File_Date)
            )
            THEN parsed.Candidate_Source_File_Date
        ELSE NULL
    END AS Source_File_Date,
    CASE
        WHEN ia.filename_file_year BETWEEN 1900 AND 2100
         AND ia.filename_file_month BETWEEN 1 AND 12
            THEN DATEFROMPARTS(
                ia.filename_file_year,
                ia.filename_file_month,
                1
            )
        ELSE NULL
    END AS Source_File_Month
INTO #inbound_freshness
FROM dbo.inbound_automation AS ia
OUTER APPLY (
    SELECT
        PATINDEX(
            '%_[12][0-9][0-9][0-9][01][0-9][0-3][0-9]'
            + '[0-2][0-9][0-5][0-9][0-5][0-9]%',
            ia.source_file
        ) AS Compact_Timestamp_Position,
        PATINDEX(
            '%_[12][0-9][0-9][0-9]-[01][0-9]-[0-3][0-9]T%',
            ia.source_file
        ) AS ISO_Timestamp_Position
) AS pos
OUTER APPLY (
    SELECT
        CASE
            WHEN RIGHT(LOWER(ia.source_file), 4) = '.xml'
             AND pos.Compact_Timestamp_Position > 0
                THEN TRY_CONVERT(
                    date,
                    SUBSTRING(
                        ia.source_file,
                        pos.Compact_Timestamp_Position + 1,
                        8
                    ),
                    112
                )
            WHEN RIGHT(LOWER(ia.source_file), 4) = '.xml'
             AND pos.ISO_Timestamp_Position > 0
                THEN TRY_CONVERT(
                    date,
                    SUBSTRING(
                        ia.source_file,
                        pos.ISO_Timestamp_Position + 1,
                        10
                    ),
                    23
                )
            ELSE NULL
        END AS Candidate_Source_File_Date
) AS parsed;

CREATE CLUSTERED INDEX CX_inbound_freshness
    ON #inbound_freshness (issuer, coverage_year);

CREATE NONCLUSTERED INDEX IX_inbound_freshness_loaded
    ON #inbound_freshness (loaded_at)
    INCLUDE (
        source_file,
        Source_File_Date,
        Source_File_Month,
        member_maint_effective_date,
        benefit_effective_date
    );


-- One row per issuer + physical source-file hash for file-level selection.
IF OBJECT_ID('tempdb..#inbound_files') IS NOT NULL
    DROP TABLE #inbound_files;

SELECT
    issuer,
    source_file,
    file_hash,
    MAX(Source_File_Date) AS Source_File_Date,
    MAX(Source_File_Month) AS Source_File_Month,
    MAX(loaded_at) AS Latest_Load_Ingestion_Date,
    MAX(member_maint_effective_date) AS Latest_Transaction_Date,
    MAX(benefit_effective_date) AS Latest_Effective_Date,
    MAX(coverage_year) AS Latest_Coverage_Year,
    COUNT_BIG(*) AS Record_Count
INTO #inbound_files
FROM #inbound_freshness
GROUP BY
    issuer,
    source_file,
    file_hash;

CREATE CLUSTERED INDEX CX_inbound_files
    ON #inbound_files (issuer, source_file, file_hash);


-- =============================================================================
-- RESULT 1 — Overall inbound freshness
-- =============================================================================
DECLARE @latest_source_file VARCHAR(500);
DECLARE @latest_loaded_source_file VARCHAR(500);

SELECT TOP (1)
    @latest_source_file = source_file
FROM #inbound_files
ORDER BY
    CASE WHEN Source_File_Date IS NULL THEN 1 ELSE 0 END,
    Source_File_Date DESC,
    Latest_Load_Ingestion_Date DESC,
    source_file DESC;

SELECT TOP (1)
    @latest_loaded_source_file = source_file
FROM #inbound_files
ORDER BY
    Latest_Load_Ingestion_Date DESC,
    Source_File_Date DESC,
    source_file DESC;

SELECT
    COUNT_BIG(*) AS Total_Record_Count,
    COUNT(DISTINCT issuer) AS Distinct_Issuer_Count,
    COUNT(DISTINCT source_file) AS Distinct_Source_File_Count,
    COUNT(DISTINCT file_hash) AS Distinct_File_Hash_Count,
    MIN(Source_File_Date) AS Earliest_Derived_Source_File_Date,
    MAX(Source_File_Date) AS Latest_Derived_Source_File_Date,
    @latest_source_file AS Latest_Source_File_By_Derived_Date,
    MAX(Source_File_Month) AS Latest_Persisted_Source_File_Month,
    MAX(loaded_at) AS Latest_Load_Ingestion_Date,
    @latest_loaded_source_file AS Latest_Source_File_By_Load_Date,
    MAX(member_maint_effective_date) AS Latest_Transaction_Date,
    MAX(benefit_effective_date) AS Latest_Effective_Date,
    MAX(benefit_end_date) AS Latest_Benefit_End_Date,
    MAX(coverage_year) AS Latest_Coverage_Year,
    COUNT(DISTINCT CASE
        WHEN Source_File_Date IS NOT NULL THEN file_hash
    END) AS Files_With_Reliable_Exact_Source_Date,
    COUNT(DISTINCT CASE
        WHEN Candidate_Source_File_Date IS NOT NULL
         AND Source_File_Date IS NULL
            THEN file_hash
    END) AS Files_With_Filename_Month_Mismatch
FROM #inbound_freshness;


-- RESULT 1B — Latest inbound data by Coverage Year
SELECT
    coverage_year AS Coverage_Year,
    COUNT_BIG(*) AS Inbound_Record_Count,
    COUNT(DISTINCT issuer) AS Distinct_Issuers,
    COUNT(DISTINCT source_file) AS Distinct_Source_Files,
    MIN(Source_File_Date) AS Earliest_Derived_Source_File_Date,
    MAX(Source_File_Date) AS Latest_Derived_Source_File_Date,
    MAX(Source_File_Month) AS Latest_Persisted_Source_File_Month,
    MAX(loaded_at) AS Latest_Load_Ingestion_Date,
    MAX(member_maint_effective_date) AS Latest_Transaction_Date,
    MAX(benefit_effective_date) AS Latest_Effective_Date,
    MAX(benefit_end_date) AS Latest_Benefit_End_Date
FROM #inbound_freshness
GROUP BY coverage_year
ORDER BY coverage_year;


-- =============================================================================
-- RESULT 2 — Freshness by issuer
-- =============================================================================
SELECT
    agg.issuer AS Issuer,
    latest_source.source_file AS Latest_Source_File,
    latest_source.Source_File_Date AS Latest_File_Source_Date,
    agg.Latest_Persisted_Source_File_Month,
    latest_load.source_file AS Latest_Loaded_Source_File,
    agg.Latest_Load_Ingestion_Date,
    agg.Latest_Transaction_Date,
    agg.Latest_Effective_Date,
    agg.Latest_Coverage_Year,
    agg.Total_Record_Count,
    agg.Distinct_Source_File_Count,
    agg.Distinct_File_Hash_Count
FROM (
    SELECT
        issuer,
        MAX(Source_File_Month) AS Latest_Persisted_Source_File_Month,
        MAX(loaded_at) AS Latest_Load_Ingestion_Date,
        MAX(member_maint_effective_date) AS Latest_Transaction_Date,
        MAX(benefit_effective_date) AS Latest_Effective_Date,
        MAX(coverage_year) AS Latest_Coverage_Year,
        COUNT_BIG(*) AS Total_Record_Count,
        COUNT(DISTINCT source_file) AS Distinct_Source_File_Count,
        COUNT(DISTINCT file_hash) AS Distinct_File_Hash_Count
    FROM #inbound_freshness
    GROUP BY issuer
) AS agg
OUTER APPLY (
    SELECT TOP (1)
        f.source_file,
        f.Source_File_Date
    FROM #inbound_files AS f
    WHERE f.issuer = agg.issuer
    ORDER BY
        CASE WHEN f.Source_File_Date IS NULL THEN 1 ELSE 0 END,
        f.Source_File_Date DESC,
        f.Latest_Load_Ingestion_Date DESC,
        f.source_file DESC
) AS latest_source
OUTER APPLY (
    SELECT TOP (1)
        f.source_file
    FROM #inbound_files AS f
    WHERE f.issuer = agg.issuer
    ORDER BY
        f.Latest_Load_Ingestion_Date DESC,
        f.Source_File_Date DESC,
        f.source_file DESC
) AS latest_load
ORDER BY agg.issuer;


-- =============================================================================
-- RESULT 3 — 2026 monthly inbound coverage
-- Month basis: persisted filename_file_year + filename_file_month.
-- A NULL month row is intentionally retained to expose unparsed filenames.
-- =============================================================================
SELECT
    Source_File_Month AS [Month],
    CASE
        WHEN Source_File_Month IS NULL
            THEN 'UNPARSED_FILENAME_MONTH'
        ELSE 'PERSISTED_FILENAME_MONTH'
    END AS Month_Basis_Status,
    COUNT_BIG(*) AS Inbound_Record_Count,
    COUNT(DISTINCT issuer) AS Distinct_Issuers,
    COUNT(DISTINCT source_file) AS Distinct_Source_Files
FROM #inbound_freshness
WHERE coverage_year = 2026
GROUP BY Source_File_Month
ORDER BY
    CASE WHEN Source_File_Month IS NULL THEN 1 ELSE 0 END,
    Source_File_Month;


-- =============================================================================
-- RESULT 4 — File/run-log freshness, when the operational tables exist
-- Dynamic SQL prevents an absent optional log table from breaking compilation.
-- =============================================================================
DECLARE @file_log_exists BIT =
    CASE
        WHEN OBJECT_ID(N'dbo.inbound_automation_file_log', N'U') IS NULL
            THEN 0
        ELSE 1
    END;

DECLARE @run_log_exists BIT =
    CASE
        WHEN OBJECT_ID(N'dbo.inbound_automation_run_log', N'U') IS NULL
            THEN 0
        ELSE 1
    END;

SELECT
    @file_log_exists AS File_Log_Table_Exists,
    @run_log_exists AS Run_Log_Table_Exists;

DECLARE @latest_successful_file_log_loaded_at DATETIME2(3);
DECLARE @latest_run_log_completed_at DATETIME2(3);

IF @file_log_exists = 1
BEGIN
    EXEC sys.sp_executesql N'
        SELECT
            CASE
                WHEN GROUPING(issuer) = 1 THEN ''OVERALL''
                ELSE ''ISSUER''
            END AS Log_Scope,
            CASE
                WHEN GROUPING(issuer) = 1 THEN NULL
                ELSE CAST(issuer AS VARCHAR(20))
            END AS Issuer,
            COUNT_BIG(*) AS File_Log_Row_Count,
            COUNT(DISTINCT source_file) AS Distinct_Source_File_Count,
            SUM(CASE WHEN parse_status = ''loaded'' THEN 1 ELSE 0 END)
                AS Loaded_File_Count,
            SUM(CASE WHEN parse_status = ''failed'' THEN 1 ELSE 0 END)
                AS Failed_File_Count,
            SUM(CASE
                WHEN parse_status = ''loaded'' AND row_count = 0 THEN 1
                ELSE 0
            END) AS Zero_Row_Loaded_File_Count,
            MIN(loaded_at) AS Earliest_File_Log_Loaded_At,
            MAX(loaded_at) AS Latest_File_Log_Loaded_At,
            MAX(CASE
                WHEN filename_file_year BETWEEN 1900 AND 2100
                 AND filename_file_month BETWEEN 1 AND 12
                    THEN DATEFROMPARTS(
                        filename_file_year,
                        filename_file_month,
                        1
                    )
            END) AS Latest_Persisted_Source_File_Month
        FROM dbo.inbound_automation_file_log
        GROUP BY GROUPING SETS ((), (issuer))
        ORDER BY
            GROUPING(issuer) DESC,
            issuer;
    ';

    EXEC sys.sp_executesql
        N'
            SELECT
                @latest = MAX(loaded_at)
            FROM dbo.inbound_automation_file_log
            WHERE parse_status = ''loaded'';
        ',
        N'@latest DATETIME2(3) OUTPUT',
        @latest = @latest_successful_file_log_loaded_at OUTPUT;
END
ELSE
BEGIN
    SELECT
        CAST(
            'dbo.inbound_automation_file_log does not exist.'
            AS VARCHAR(100)
        ) AS File_Log_Note;
END;

IF @run_log_exists = 1
BEGIN
    EXEC sys.sp_executesql N'
        SELECT TOP (25)
            load_run_id AS Load_Run_ID,
            started_at AS Run_Started_At,
            completed_at AS Run_Completed_At,
            run_mode AS Run_Mode,
            source_mode AS Source_Mode,
            year_filter AS Year_Filter,
            issuer_filter AS Issuer_Filter,
            month_filter AS Month_Filter,
            files_discovered AS Files_Discovered,
            files_loaded AS Files_Loaded,
            files_failed AS Files_Failed,
            rows_inserted AS Rows_Inserted,
            status AS Run_Status,
            error_summary AS Error_Summary
        FROM dbo.inbound_automation_run_log
        ORDER BY
            COALESCE(completed_at, started_at) DESC,
            load_run_id DESC;
    ';

    EXEC sys.sp_executesql
        N'
            SELECT
                @latest = MAX(completed_at)
            FROM dbo.inbound_automation_run_log;
        ',
        N'@latest DATETIME2(3) OUTPUT',
        @latest = @latest_run_log_completed_at OUTPUT;
END
ELSE
BEGIN
    SELECT
        CAST(
            'dbo.inbound_automation_run_log does not exist.'
            AS VARCHAR(100)
        ) AS Run_Log_Note;
END;


-- =============================================================================
-- RESULT 5 — Diagnostic summary / latest reliable inbound boundaries
-- No missing-834, Auto-Renewal, or business conclusion is made here.
-- =============================================================================
DECLARE @total_file_hashes BIGINT = (
    SELECT COUNT(DISTINCT file_hash)
    FROM #inbound_freshness
);

DECLARE @dated_file_hashes BIGINT = (
    SELECT COUNT(DISTINCT file_hash)
    FROM #inbound_freshness
    WHERE Source_File_Date IS NOT NULL
);

SELECT
    MAX(Source_File_Date) AS Latest_Reliable_Source_File_Date,
    MAX(Source_File_Month) AS Latest_Persisted_Source_File_Month,
    MAX(loaded_at) AS Latest_Database_Ingestion_Date,
    MAX(member_maint_effective_date) AS Latest_Transaction_Date,
    MAX(benefit_effective_date) AS Latest_Effective_Date,
    MAX(coverage_year) AS Latest_Coverage_Year,
    @dated_file_hashes AS Files_With_Reliable_Exact_Source_Date,
    @total_file_hashes AS Total_Distinct_File_Hashes,
    CAST(
        100.0 * @dated_file_hashes / NULLIF(@total_file_hashes, 0)
        AS DECIMAL(10, 2)
    ) AS Exact_Source_Date_File_Percent,
    @latest_successful_file_log_loaded_at
        AS Latest_Successful_File_Log_Loaded_At,
    @latest_run_log_completed_at AS Latest_Run_Log_Completed_At,
    CAST(
        CASE
            WHEN @dated_file_hashes = @total_file_hashes
                THEN
                    'Exact source-file date parsed for every distinct loaded file hash.'
            WHEN @dated_file_hashes > 0
                THEN
                    'Exact source-file date is partial; use persisted file month, load, transaction, and effective boundaries separately.'
            ELSE
                'No exact source-file day was reliably parsed; use persisted file month, load, transaction, and effective boundaries separately.'
        END
        AS VARCHAR(220)
    ) AS Source_Date_Reliability_Note,
    CAST(
        'Freshness boundaries only. Do not infer missing 834 records or change validated reconciliation controls.'
        AS VARCHAR(180)
    ) AS Diagnostic_Scope_Note
FROM #inbound_freshness;
