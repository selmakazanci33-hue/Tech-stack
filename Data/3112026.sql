



SELECT
    COUNT(DISTINCT enrollee_id) AS Enrolled_People,

    COUNT(DISTINCT CASE
        WHEN benefit_effective_date <= '2025-12-31'
        THEN enrollee_id
    END) AS Benefit_Started_By_Dec31,

    COUNT(DISTINCT CASE
        WHEN benefit_effective_date > '2025-12-31'
        THEN enrollee_id
    END) AS Future_Benefit_Start,

    MIN(benefit_effective_date) AS Min_Benefit_Effective_Date,
    MAX(benefit_effective_date) AS Max_Benefit_Effective_Date

FROM dbo.Enrollments_PY2526_DEC31
WHERE coverage_year = 2026
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled';
