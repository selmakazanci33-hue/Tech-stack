


/* ============================================================
   DISCOVERY #6
   Test AT_external_applications against Sisense PY2027 metrics

   Sisense reference:
   Applications Started     = 564,433
   Submitted Applications   = 563,516
   ============================================================ */

SELECT
    application_status,
    source,
    application_type,

    COUNT(*) AS row_count,

    COUNT(DISTINCT external_application_id)
        AS distinct_applications,

    MIN(create_date) AS first_create_date,
    MAX(create_date) AS last_create_date,

    MIN(last_update_date) AS first_update_date,
    MAX(last_update_date) AS last_update_date

FROM dbo.AT_external_applications

GROUP BY
    application_status,
    source,
    application_type

ORDER BY
    distinct_applications DESC;
