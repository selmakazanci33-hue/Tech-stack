

SELECT
    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollee_id) AS Distinct_Enrolled_People,

    MIN(enrollment_confirmation_date) AS Min_Confirmation_Date,

    MAX(enrollment_confirmation_date) AS Max_Confirmation_Date,

    SUM(CASE
        WHEN enrollment_confirmation_date IS NULL
        THEN 1 ELSE 0
    END) AS Null_Confirmation_Date_Rows,

    COUNT(DISTINCT CASE
        WHEN enrollment_confirmation_date IS NULL
        THEN enrollee_id
    END) AS People_With_Null_Confirmation_Date

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled';
