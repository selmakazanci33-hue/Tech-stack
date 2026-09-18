/* ============================================================
   TASK #2
   2026 INBOUND 834 POLICY IDs
   vs
   Enrollments_TEST POLICY IDs

   PURPOSE:
   Find inbound 834 policies that do NOT exist
   in Enrollments_TEST for PY2026.
   ============================================================ */

WITH InboundPolicies AS
(
    SELECT DISTINCT
        i.issuer,
        LTRIM(RTRIM(CONVERT(varchar(100), i.inbound_policy_id)))
            AS inbound_policy_id
    FROM dbo.inbound_automation i
    WHERE i.coverage_year = 2026
      AND i.inbound_policy_id IS NOT NULL
      AND LTRIM(RTRIM(CONVERT(varchar(100), i.inbound_policy_id))) <> ''
),

EnrollmentPolicies AS
(
    SELECT DISTINCT
        LTRIM(RTRIM(CONVERT(varchar(100), e.health_coverage_policy_no)))
            AS policy_id
    FROM dbo.Enrollments_TEST e
    WHERE e.coverage_year = 2026
      AND e.health_coverage_policy_no IS NOT NULL
      AND LTRIM(RTRIM(CONVERT(varchar(100), e.health_coverage_policy_no))) <> ''
),

MissingPolicies AS
(
    SELECT
        i.issuer,
        i.inbound_policy_id
    FROM InboundPolicies i
    WHERE NOT EXISTS
    (
        SELECT 1
        FROM EnrollmentPolicies e
        WHERE e.policy_id = i.inbound_policy_id
    )
)

/* ============================================================
   RESULT 1 - TOTAL UNIQUE INBOUND POLICIES
   ============================================================ */

SELECT
    COUNT(*) AS Total_Inbound_Policies
FROM InboundPolicies;


/* ============================================================
   RESULT 2 - TOTAL POLICIES MISSING FROM Enrollments_TEST
   ============================================================ */

SELECT
    COUNT(*) AS Missing_Policy_Count
FROM MissingPolicies;


/* ============================================================
   RESULT 3 - MISSING POLICIES BY ISSUER
   ============================================================ */

SELECT
    issuer,
    COUNT(*) AS Missing_Policy_Count
FROM MissingPolicies
GROUP BY issuer
ORDER BY Missing_Policy_Count DESC;


/* ============================================================
   RESULT 4 - ACTUAL MISSING POLICY IDs
   This is the population Hari wants us to investigate.
   ============================================================ */

SELECT
    issuer,
    inbound_policy_id AS Missing_Inbound_Policy_ID
FROM MissingPolicies
ORDER BY issuer, inbound_policy_id;
