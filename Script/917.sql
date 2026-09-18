/* ============================================================
   TASK #2 - POLICY IDENTIFIER CLASSIFICATION
   PY2026 INBOUND vs ALL YEARS Enrollments_TEST
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
      AND LTRIM(RTRIM(CAST(policy_id AS VARCHAR(100)))) <> ''
),
EnrollmentPolicies AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(enrollment_id AS VARCHAR(100)))) AS policy_id
    FROM dbo.Enrollments_TEST
    WHERE enrollment_id IS NOT NULL
),
Classified AS
(
    SELECT
        i.issuer,
        i.policy_id,
        i.health_coverage_policy_no,

        CASE
            WHEN EXISTS
            (
                SELECT 1
                FROM EnrollmentPolicies e
                WHERE e.policy_id = i.policy_id
            )
            THEN 'MATCH_BY_POLICY_ID'

            WHEN EXISTS
            (
                SELECT 1
                FROM EnrollmentPolicies e
                WHERE e.policy_id = i.health_coverage_policy_no
            )
            THEN 'MATCH_BY_HEALTH_COVERAGE_POLICY_NO'

            ELSE 'NOT_FOUND_IN_ENROLLMENTS_TEST'
        END AS match_type

    FROM InboundPolicies i
)

SELECT
    match_type,
    COUNT(DISTINCT policy_id) AS Policy_Count
FROM Classified
GROUP BY match_type
ORDER BY Policy_Count DESC;
