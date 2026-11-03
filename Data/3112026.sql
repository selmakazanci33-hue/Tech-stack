



SELECT
    'NOV30' AS Snapshot,
    coverage_year,
    COUNT(*) AS Raw_Rows,
    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,
    COUNT(DISTINCT enrollee_id) AS Distinct_People,
    MIN(enrollment_confirmation_date) AS Min_Confirmation_Date,
    MAX(enrollment_confirmation_date) AS Max_Confirmation_Date
FROM dbo.Enrollments_PY2526_NOV30
GROUP BY coverage_year

UNION ALL

SELECT
    'DEC31',
    coverage_year,
    COUNT(*),
    COUNT(DISTINCT enrollment_id),
    COUNT(DISTINCT enrollee_id),
    MIN(enrollment_confirmation_date),
    MAX(enrollment_confirmation_date)
FROM dbo.Enrollments_PY2526_DEC31
GROUP BY coverage_year

ORDER BY Snapshot, coverage_year;
