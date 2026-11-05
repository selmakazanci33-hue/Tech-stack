


/* ============================================================
   DISCOVERY #4 — PY2027 Applicant Population
   Goal: understand the 1.109M population and find the
         relationship to Sisense Total Applicants = 830,512
   ============================================================ */

SELECT
    coverage_year,

    COUNT(*) AS total_rows,

    COUNT(DISTINCT applicant_guid) AS distinct_applicants,

    COUNT(DISTINCT household_id) AS distinct_households,

    COUNT(DISTINCT MAX_id) AS distinct_max_ids,

    COUNT(DISTINCT ssn) AS distinct_ssn,

    SUM(CASE WHEN applicant_guid IS NULL THEN 1 ELSE 0 END)
        AS null_applicant_guid,

    SUM(CASE WHEN household_id IS NULL THEN 1 ELSE 0 END)
        AS null_household_id,

    SUM(CASE WHEN MAX_id IS NULL THEN 1 ELSE 0 END)
        AS null_max_id

FROM dbo.PY24252627_Applicants_test

WHERE coverage_year = 2027

GROUP BY coverage_year;


====================

SELECT TOP 30
    coverage_year,
    household_id,
    applicant_guid,
    MAX_id,
    first_name,
    last_name,
    age
FROM dbo.PY24252627_Applicants_test
WHERE coverage_year = 2027
ORDER BY MAX_id, household_id, applicant_guid;
