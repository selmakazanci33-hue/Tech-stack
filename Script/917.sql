WITH InboundPolicies AS
(
    SELECT DISTINCT
        i.issuer,
        i.health_coverage_policy_no AS inbound_policy_id
    FROM dbo.inbound_automation i
    WHERE i.coverage_year = 2026
      AND i.health_coverage_policy_no IS NOT NULL
),

EnrollmentPolicies AS
(
    SELECT DISTINCT
        e.enrollment_id
    FROM dbo.Enrollments_TEST e
    WHERE e.coverage_year = 2026
      AND e.enrollment_id IS NOT NULL
)

SELECT
    i.issuer,
    COUNT(*) AS Missing_Policy_Count
FROM InboundPolicies i
WHERE NOT EXISTS
(
    SELECT 1
    FROM EnrollmentPolicies e
    WHERE e.enrollment_id = i.inbound_policy_id
)
GROUP BY i.issuer
ORDER BY Missing_Policy_Count DESC;
