


SELECT
    application_type,
    source,
    Insurance_Type,

    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,

    COUNT(DISTINCT enrollee_id) AS Distinct_People,

    MIN(enrollment_confirmation_date) AS Min_Confirmation_Date,

    MAX(enrollment_confirmation_date) AS Max_Confirmation_Date

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled'

GROUP BY
    application_type,
    source,
    Insurance_Type

ORDER BY
    application_type,
    source,
    Insurance_Type;
