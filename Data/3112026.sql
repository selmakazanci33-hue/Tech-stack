



SELECT
    COUNT(DISTINCT enrollee_id) AS Direct_OE_Enrolled_People,

    COUNT(DISTINCT CASE
        WHEN enrollment_confirmation_date IS NOT NULL
        THEN enrollee_id
    END) AS OE_People_With_Confirmation_Date,

    COUNT(DISTINCT CASE
        WHEN enrollment_confirmation_date IS NULL
        THEN enrollee_id
    END) AS OE_People_Without_Confirmation_Date

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND application_type = 'OE'
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled';
