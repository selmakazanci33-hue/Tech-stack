SELECT
    coverage_year AS Plan_Year,

    DATEFROMPARTS(
        YEAR(enrollment_confirmation_date),
        MONTH(enrollment_confirmation_date),
        1
    ) AS Confirmation_Month,

    COUNT(DISTINCT enrollee_id) AS Distinct_People,

    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments

FROM dbo.Enrollments_PY2526_NOV30

WHERE coverage_year IN (2025, 2026)
  AND application_type = 'OE'
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled'
  AND enrollment_confirmation_date IS NOT NULL

GROUP BY
    coverage_year,
    DATEFROMPARTS(
        YEAR(enrollment_confirmation_date),
        MONTH(enrollment_confirmation_date),
        1
    )

ORDER BY
    Plan_Year,
    Confirmation_Month;
