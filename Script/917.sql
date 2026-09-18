/* ============================================================
   TASK #2 - SECOND IDENTIFIER CHECK
   PY2026 inbound vs ALL YEARS Enrollments_TEST

   Missing only when NEITHER inbound policy identifier
   exists in Enrollments_TEST
   ============================================================ */

WITH InboundPolicies AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(policy_id AS VARCHAR(100)))) AS policy_id,
        LTRIM(RTRIM(CAST(health_coverage_policy_no AS VARCHAR(100))))
            AS health_coverage_policy_no,
        LTRIM(RTRIM(CAST(issuer AS VARCHAR(50)))) AS issuer
    FROM dbo.inbound_automation
    WHERE coverage_year = 2026
      AND policy_id IS NOT NULL
),
EnrollmentPolicies AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(enrollment_id AS VARCHAR(100)))) AS policy_id
    FROM dbo.Enrollments_TEST
    WHERE enrollment_id IS NOT NULL
)
SELECT
    i.issuer,
    COUNT(DISTINCT i.policy_id) AS Still_Missing_Policy_Count
FROM InboundPolicies i
WHERE NOT EXISTS
(
    SELECT 1
    FROM EnrollmentPolicies e
    WHERE e.policy_id = i.policy_id
)
AND NOT EXISTS
(
    SELECT 1
    FROM EnrollmentPolicies e
    WHERE e.policy_id = i.health_coverage_policy_no
)
GROUP BY i.issuer
ORDER BY Still_Missing_Policy_Count DESC;
