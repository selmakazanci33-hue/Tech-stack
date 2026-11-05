

/* ============================================================
   DISCOVERY #3
   PY2026 / PY2027 source population
   ============================================================ */

-- 1. Applicant table
SELECT
    'PY24252627_Applicants_test' AS source_table,
    coverage_year,
    COUNT(*) AS row_count,
    COUNT(DISTINCT household_id) AS distinct_households,
    COUNT(DISTINCT applicant_guid) AS distinct_applicants
FROM dbo.PY24252627_Applicants_test
GROUP BY coverage_year

UNION ALL

-- 2. PAC NEW
SELECT
    'PY2627_PAC_NEW' AS source_table,
    coverage_year,
    COUNT(*) AS row_count,
    COUNT(DISTINCT houshold_id) AS distinct_households,
    COUNT(DISTINCT exchg_indiv_identifier) AS distinct_applicants
FROM dbo.PY2627_PAC_NEW
GROUP BY coverage_year

UNION ALL

-- 3. PAC NEW2
SELECT
    'PY2627_PAC_NEW2' AS source_table,
    coverage_year,
    COUNT(*) AS row_count,
    COUNT(DISTINCT houshold_id) AS distinct_households,
    COUNT(DISTINCT exchg_indiv_identifier) AS distinct_applicants
FROM dbo.PY2627_PAC_NEW2
GROUP BY coverage_year

ORDER BY source_table, coverage_year;
