SELECT
    COUNT(DISTINCT enrollee_id) AS NOV30_OE_Enrolled_People,

    MIN(enrollment_confirmation_date) AS Min_Confirmation_Date,

    MAX(enrollment_confirmation_date) AS Max_Confirmation_Date

FROM dbo.Enrollments_PY2526_NOV30

WHERE coverage_year = 2026
  AND application_type = 'OE'
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled';
