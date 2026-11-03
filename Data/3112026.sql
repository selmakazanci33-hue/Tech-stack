SELECT
    YEAR(enrollment_confirmation_date) AS Confirmation_Year,

    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,

    COUNT(DISTINCT enrollee_id) AS Distinct_People,

    MIN(enrollment_confirmation_date) AS Min_Confirmation_Date,

    MAX(enrollment_confirmation_date) AS Max_Confirmation_Date

FROM dbo.Enrollments_PY2526_NOV30

WHERE coverage_year = 2026
  AND application_type = 'OE'
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled'

GROUP BY YEAR(enrollment_confirmation_date)

ORDER BY Confirmation_Year;
