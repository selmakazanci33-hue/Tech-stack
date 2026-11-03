


SELECT
    enrollment_status_description,

    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollment_id) AS Distinct_Policies,

    COUNT(DISTINCT enrollee_id) AS Distinct_People,

    MIN(enrollment_last_update_date) AS Min_Enrollment_Last_Update,

    MAX(enrollment_last_update_date) AS Max_Enrollment_Last_Update,

    MIN(enrollee_end_date) AS Min_Enrollee_End_Date,

    MAX(enrollee_end_date) AS Max_Enrollee_End_Date,

    MIN(benefit_end_date) AS Min_Benefit_End_Date,

    MAX(benefit_end_date) AS Max_Benefit_End_Date

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND enrollment_status_description IN ('Cancelled', 'Terminated')

GROUP BY enrollment_status_description

ORDER BY enrollment_status_description;
