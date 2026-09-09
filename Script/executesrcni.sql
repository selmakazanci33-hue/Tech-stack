

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
