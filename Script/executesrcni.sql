SELECT
    COUNT(*) AS Total_Discrepancy_Records,
    COUNT(DISTINCT issuer_id) AS Total_Issuers,
    COUNT(DISTINCT source_file) AS Total_Source_Files
FROM dbo.rcni_raw;


DECLARE @file_hash VARCHAR(64) =
'791be3df3f97305ddff98879b2d9778bafebc80b8e52baf402a8c45983e19924';

SELECT
    COUNT(*) AS Raw_Rows
FROM dbo.rcni_raw
WHERE file_hash = @file_hash;

SELECT
    processing_status,
    load_run_id,
    rows_parsed,
    rows_loaded,
    rows_rejected,
    started_at,
    completed_at,
    error_message
FROM dbo.rcni_file_log
WHERE file_hash = @file_hash
ORDER BY started_at;
processing_status	load_run_id	rows_parsed	rows_loaded	rows_rejected	started_at	completed_at	error_message
FAILED	C0E9161F-9DE9-40D1-A3B4-642D6630DBCA	2211717	0	0	2026-09-07 21:51:08	2026-09-07 22:08:32	(pyodbc.OperationalError) ('08S01', '[08S01] [Microsoft][ODBC Driver 17 for SQL Server]TCP Provider: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.\r\n (10060) (SQLExecDirectW); [08S01] [Microsoft][ODBC Driver 17 for SQL Server]Communication link failure (10060)') [SQL: INSERT INTO [dbo].[rcni_raw] (load_run_id, file_hash, issuer_id, coverage_year, processing_year, processing_month, processing_day, file_timestamp, source_file, source_path, row_number_in_file, quality_status, loaded_at, exchange_assigned_policy_id, plan_id, member_last_name, member_first_name, exchange_assigned_member_id, issuer_assigned_member_id, subscriber_last_name, subscriber_first_name, exchange_assigned_subscriber_id, issuer_assigned_subscriber_id, discrepancy_reason_code, discrepancy_reason_text, hix_value, issuer_value, date_of_discrepancy, recon_file_name, autofixed_by_hix, assignee, enrollment_status) SELECT load_run_id, file_hash, issuer_id, coverage_year, processing_year, processing_month, processing_day, file_timestamp, source_file, source_path, row_number_in_file, quality_status, ? AS loaded_at, exchange_assigned_policy_id, plan_id, member_last_name, member_first_name, exchange_assigned_member_id, issuer_assigned_member_id, subscriber_last_name, subscriber_first_name, exchange_assigned_subscriber_id, issuer_assigned_subscriber_id, discrepancy_reason_code, discrepancy_reason_text, hix_value, issuer_value, date_of_discrepancy, recon_file_name, autofixed_by_hix, assignee, enrollment_status FROM [dbo].[rcni_stage] WHERE load_run_id = ? AND file_hash = ?] [parameters: (datetime.datetime(2026, 9, 7, 21, 51, 8, 441280), UUID('c0e9161f-9de9-40d1-a3b4-642d6630dbca'), '791be3df3f97305ddff98879b2d9778bafebc80b8e52baf402a8c45983e19924')] (Background on this error at: https://sqlalche.me/e/20/e3q8)
SUCCESS	854E9EAD-CEFC-438D-8B28-AC617841C5E3	2211717	2211717	0	2026-09-08 10:11:03	2026-09-08 11:18:25	NULL

    Raw_Rows
2211717

==================================

/* ============================================================
   RCNI ISSUER LEVEL EXECUTIVE LOAD REPORT
   ============================================================ */

WITH RawCounts AS
(
    SELECT
        issuer_id,
        COUNT(*) AS discrepancy_record_count,
        COUNT(DISTINCT source_file) AS source_file_count,
        COUNT(DISTINCT coverage_year) AS coverage_year_count,
        MIN(loaded_at) AS first_raw_load_at,
        MAX(loaded_at) AS last_raw_load_at
    FROM dbo.rcni_raw
    GROUP BY issuer_id
),

FileStats AS
(
    SELECT
        issuer_id,

        COUNT(*) AS file_log_records,

        SUM(CASE
                WHEN processing_status = 'SUCCESS'
                THEN 1 ELSE 0
            END) AS successful_files,

        SUM(CASE
                WHEN processing_status = 'FAILED'
                THEN 1 ELSE 0
            END) AS failed_files,

        SUM(CASE
                WHEN processing_status = 'SKIPPED_DUPLICATE'
                THEN 1 ELSE 0
            END) AS skipped_duplicate_files,

        SUM(CASE
                WHEN file_disposition = 'NEW'
                THEN 1 ELSE 0
            END) AS new_files,

        SUM(CASE
                WHEN file_disposition = 'DUPLICATE'
                THEN 1 ELSE 0
            END) AS duplicate_files,

        SUM(CASE
                WHEN file_disposition = 'POSSIBLE_REPLACEMENT'
                THEN 1 ELSE 0
            END) AS possible_replacement_files,

        SUM(COALESCE(rows_read, 0)) AS rows_read,

        SUM(COALESCE(rows_parsed, 0)) AS rows_parsed,

        SUM(COALESCE(rows_loaded, 0)) AS rows_loaded,

        SUM(COALESCE(rows_flagged, 0)) AS rows_flagged,

        SUM(COALESCE(rows_rejected, 0)) AS rows_rejected,

        SUM(
            CASE
                WHEN started_at IS NOT NULL
                 AND completed_at IS NOT NULL
                THEN DATEDIFF(SECOND, started_at, completed_at)
                ELSE 0
            END
        ) AS execution_seconds,

        MIN(started_at) AS first_file_started_at,
        MAX(completed_at) AS last_file_completed_at

    FROM dbo.rcni_file_log
    GROUP BY issuer_id
),

DQ AS
(
    SELECT
        issuer_id,
        COUNT(*) AS dq_issue_count
    FROM dbo.rcni_data_quality_issue
    GROUP BY issuer_id
)

SELECT
    COALESCE(r.issuer_id, f.issuer_id, q.issuer_id) AS issuer_id,

    COALESCE(r.discrepancy_record_count, 0)
        AS discrepancy_records,

    COALESCE(r.source_file_count, 0)
        AS files_in_raw,

    COALESCE(f.successful_files, 0)
        AS successful_files,

    COALESCE(f.failed_files, 0)
        AS failed_files,

    COALESCE(f.skipped_duplicate_files, 0)
        AS skipped_duplicate_files,

    COALESCE(f.new_files, 0)
        AS new_files,

    COALESCE(f.duplicate_files, 0)
        AS duplicate_files,

    COALESCE(f.possible_replacement_files, 0)
        AS possible_replacement_files,

    COALESCE(f.rows_read, 0)
        AS rows_read,

    COALESCE(f.rows_parsed, 0)
        AS rows_parsed,

    COALESCE(f.rows_loaded, 0)
        AS rows_loaded,

    COALESCE(f.rows_flagged, 0)
        AS rows_flagged,

    COALESCE(f.rows_rejected, 0)
        AS rows_rejected,

    COALESCE(q.dq_issue_count, 0)
        AS dq_issue_count,

    COALESCE(r.coverage_year_count, 0)
        AS coverage_year_count,

    CAST(
        COALESCE(f.execution_seconds, 0) / 60.0
        AS DECIMAL(18,2)
    ) AS execution_minutes,

    CAST(
        COALESCE(f.execution_seconds, 0) / 3600.0
        AS DECIMAL(18,2)
    ) AS execution_hours,

    r.first_raw_load_at,
    r.last_raw_load_at,

    f.first_file_started_at,
    f.last_file_completed_at

FROM RawCounts r

FULL OUTER JOIN FileStats f
    ON r.issuer_id = f.issuer_id

FULL OUTER JOIN DQ q
    ON COALESCE(r.issuer_id, f.issuer_id) = q.issuer_id

ORDER BY discrepancy_records DESC;
