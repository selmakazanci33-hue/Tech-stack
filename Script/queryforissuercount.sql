SELECT
    coverage_year,
    COUNT(DISTINCT COALESCE(
        NULLIF(member_id, ''),
        NULLIF(issuer_indiv_identifier, ''),
        NULLIF(exchg_assigned_enrollee_id, '')
    )) AS Total_Enrollees
FROM dbo.inbound_automation
WHERE issuer = '37301'
  AND coverage_year IN (2025, 2026)
GROUP BY coverage_year
ORDER BY coverage_year;


SELECT
    coverage_year,

    COUNT(DISTINCT COALESCE(
        NULLIF(policy_id, ''),
        NULLIF(health_coverage_policy_no, '')
    )) AS Total_Enrollments,

    COUNT(DISTINCT COALESCE(
        NULLIF(member_id, ''),
        NULLIF(issuer_indiv_identifier, ''),
        NULLIF(exchg_assigned_enrollee_id, '')
    )) AS Total_Enrollees

FROM dbo.inbound_automation
WHERE issuer = '37301'
  AND coverage_year IN (2025, 2026)
GROUP BY coverage_year
ORDER BY coverage_year;
