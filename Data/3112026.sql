


SELECT
    'PY24252627_Applicants_test' AS Dataset,
    coverage_year,
    COUNT(*) AS Raw_Rows
FROM dbo.PY24252627_Applicants_test
GROUP BY coverage_year

UNION ALL

SELECT
    'PY2627_PAC_NEW',
    coverage_year,
    COUNT(*)
FROM dbo.PY2627_PAC_NEW
GROUP BY coverage_year

UNION ALL

SELECT
    'PY2627_PAC_NEW2',
    coverage_year,
    COUNT(*)
FROM dbo.PY2627_PAC_NEW2
GROUP BY coverage_year

ORDER BY Dataset, coverage_year;
