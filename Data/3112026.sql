



SELECT
    'NOV30' AS Snapshot,
    coverage_year,
    COUNT(*) AS Raw_Rows,
    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,
    COUNT(DISTINCT enrollee_id) AS Distinct_Enrollees,
    MIN(GAA_Load_Datetime) AS Min_Load_Date,
    MAX(GAA_Load_Datetime) AS Max_Load_Date
FROM dbo.Enrollments_PY2526_NOV30
GROUP BY coverage_year

UNION ALL

SELECT
    'DEC31',
    coverage_year,
    COUNT(*) AS Raw_Rows,
    COUNT(DISTINCT enrollment_id),
    COUNT(DISTINCT enrollee_id),
    MIN(GAA_Load_Datetime),
    MAX(GAA_Load_Datetime)
FROM dbo.Enrollments_PY2526_DEC31
GROUP BY coverage_year

ORDER BY Snapshot, coverage_year;
