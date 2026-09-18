WITH InboundPolicies AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(policy_id AS VARCHAR(100)))) AS policy_id,
        LTRIM(RTRIM(CAST(issuer AS VARCHAR(50)))) AS issuer
    FROM dbo.inbound_automation
    WHERE coverage_year = 2026
      AND policy_id IS NOT NULL
      AND LTRIM(RTRIM(CAST(policy_id AS VARCHAR(100)))) <> ''
),
EnrollmentPolicies AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(enrollment_id AS VARCHAR(100)))) AS policy_id
    FROM dbo.Enrollments_TEST
    WHERE coverage_year = 2026
      AND enrollment_id IS NOT NULL
)
SELECT
    i.issuer,
    COUNT(DISTINCT i.policy_id) AS Missing_Policy_Count
FROM InboundPolicies i
WHERE NOT EXISTS
(
    SELECT 1
    FROM EnrollmentPolicies e
    WHERE e.policy_id = i.policy_id
)
GROUP BY i.issuer
ORDER BY Missing_Policy_Count DESC;
