/* ============================================================
   TASK #2
   PURPOSE:
   Check whether 2026 Policy IDs found in inbound 834 data
   exist in dbo.Enrollments_TEST.

   MATCH:
       inbound_automation.policy_id
                VS
       Enrollments_TEST.enrollment_id

   IMPORTANT:
   policy_id = NVARCHAR
   enrollment_id = INT
   Therefore comparison is done as VARCHAR to avoid
   conversion errors such as ES797169500.
   ============================================================ */


/* ============================================================
   STEP 1 - Build distinct 2026 inbound policy population
   ============================================================ */

IF OBJECT_ID('tempdb..#InboundPolicies') IS NOT NULL
    DROP TABLE #InboundPolicies;

SELECT DISTINCT
    i.issuer,

    LTRIM(RTRIM(CONVERT(varchar(100), i.policy_id)))
        AS inbound_policy_id

INTO #InboundPolicies

FROM dbo.inbound_automation i

WHERE i.coverage_year = 2026
  AND i.policy_id IS NOT NULL
  AND LTRIM(RTRIM(CONVERT(varchar(100), i.policy_id))) <> '';


/* ============================================================
   STEP 2 - Build distinct 2026 Enrollments_TEST population
   ============================================================ */

IF OBJECT_ID('tempdb..#EnrollmentPolicies') IS NOT NULL
    DROP TABLE #EnrollmentPolicies;

SELECT DISTINCT

    LTRIM(RTRIM(CONVERT(varchar(100), e.enrollment_id)))
        AS enrollment_policy_id

INTO #EnrollmentPolicies

FROM dbo.Enrollments_TEST e

WHERE e.coverage_year = 2026
  AND e.enrollment_id IS NOT NULL;


/* ============================================================
   STEP 3 - Determine MATCH / NOT FOUND
   ============================================================ */

IF OBJECT_ID('tempdb..#PolicyComparison') IS NOT NULL
    DROP TABLE #PolicyComparison;

SELECT
    i.issuer,
    i.inbound_policy_id,

    CASE
        WHEN e.enrollment_policy_id IS NOT NULL
            THEN 'FOUND_IN_ENROLLMENTS_TEST'
        ELSE 'NOT_FOUND_IN_ENROLLMENTS_TEST'
    END AS match_status

INTO #PolicyComparison

FROM #InboundPolicies i

LEFT JOIN #EnrollmentPolicies e
    ON e.enrollment_policy_id = i.inbound_policy_id;


/* ============================================================
   RESULT 1
   TOTAL DISTINCT 2026 INBOUND POLICIES
   ============================================================ */

SELECT
    COUNT(*) AS Total_Inbound_Policies
FROM #InboundPolicies;


/* ============================================================
   RESULT 2
   FOUND vs NOT FOUND
   ============================================================ */

SELECT
    match_status,
    COUNT(*) AS Policy_Count
FROM #PolicyComparison
GROUP BY match_status
ORDER BY match_status;


/* ============================================================
   RESULT 3
   MISSING POLICIES BY ISSUER
   ============================================================ */

SELECT
    issuer,
    COUNT(*) AS Missing_Policy_Count
FROM #PolicyComparison
WHERE match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'
GROUP BY issuer
ORDER BY Missing_Policy_Count DESC;


/* ============================================================
   RESULT 4
   ACTUAL MISSING POLICY IDs
   This is the population Hari wants us to investigate.
   ============================================================ */

SELECT
    issuer,
    inbound_policy_id AS Missing_Inbound_Policy_ID
FROM #PolicyComparison
WHERE match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'
ORDER BY
    issuer,
    inbound_policy_id;


/* ============================================================
   RESULT 5
   SANITY CHECK - MATCHED POLICIES
   ============================================================ */

SELECT TOP (100)
    issuer,
    inbound_policy_id
FROM #PolicyComparison
WHERE match_status = 'FOUND_IN_ENROLLMENTS_TEST'
ORDER BY
    issuer,
    inbound_policy_id;
