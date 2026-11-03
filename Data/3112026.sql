

SELECT
    '09/30/2026' AS Dataset,
    COUNT(*) AS Raw_Rows,
    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,
    COUNT(DISTINCT enrollee_id) AS Distinct_Enrollees,
    MIN(GAA_Load_Datetime) AS Min_Load_Date,
    MAX(GAA_Load_Datetime) AS Max_Load_Date,
    MIN(coverage_year) AS Min_Coverage_Year,
    MAX(coverage_year) AS Max_Coverage_Year
FROM dbo.Enrollments_PY2526_09302026

UNION ALL

SELECT
    '10/31/2026',
    COUNT(*),
    COUNT(DISTINCT enrollment_id),
    COUNT(DISTINCT enrollee_id),
    MIN(GAA_Load_Datetime),
    MAX(GAA_Load_Datetime),
    MIN(coverage_year),
    MAX(coverage_year)
FROM dbo.Enrollments_PY2526_10312026

UNION ALL

SELECT
    'CURRENT',
    COUNT(*),
    COUNT(DISTINCT enrollment_id),
    COUNT(DISTINCT enrollee_id),
    MIN(GAA_Load_Datetime),
    MAX(GAA_Load_Datetime),
    MIN(coverage_year),
    MAX(coverage_year)
FROM dbo.Enrollments_TEST;
