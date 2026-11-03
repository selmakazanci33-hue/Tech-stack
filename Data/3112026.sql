



SELECT
    coverage_year,

    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollment_id)
        AS Distinct_Enrollment_IDs,

    COUNT(DISTINCT exchg_indiv_identifier)
        AS Distinct_Individual_IDs,

    COUNT(DISTINCT ssap_application_id)
        AS Distinct_Applications,

    COUNT(DISTINCT houshold_id)
        AS Distinct_Households,

    SUM(CASE
            WHEN enrollment_id IS NULL THEN 1
            ELSE 0
        END) AS Null_Enrollment_ID,

    SUM(CASE
            WHEN exchg_indiv_identifier IS NULL THEN 1
            ELSE 0
        END) AS Null_Individual_ID,

    SUM(CASE
            WHEN ssap_application_id IS NULL THEN 1
            ELSE 0
        END) AS Null_Application_ID

FROM dbo.PY2627_PAC_NEW2
GROUP BY coverage_year
ORDER BY coverage_year;
