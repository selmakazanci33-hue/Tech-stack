SELECT
    enrollment_confirmation_date,
    application_type,
    source,
    Insurance_Type,

    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,

    COUNT(DISTINCT enrollee_id) AS Distinct_People

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled'
  AND enrollment_confirmation_date IN ('2025-10-16', '2025-10-17')

GROUP BY
    enrollment_confirmation_date,
    application_type,
    source,
    Insurance_Type

ORDER BY
    enrollment_confirmation_date,
    Distinct_People DESC;
