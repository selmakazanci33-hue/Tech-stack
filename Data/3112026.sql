SELECT
    enrollment_confirmation_date,

    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,

    COUNT(DISTINCT enrollee_id) AS Distinct_People

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled'

GROUP BY enrollment_confirmation_date

ORDER BY enrollment_confirmation_date;
