/* ============================================================
   NEXT VALIDATION
   For the 173,786 numeric policies missing from PY2026,
   check whether they exist ANYWHERE in Enrollments_TEST
   under another coverage year.
   ============================================================ */

SELECT
    CASE
        WHEN e.enrollment_id IS NOT NULL
            THEN 'FOUND_OTHER_COVERAGE_YEAR'
        ELSE 'NOT_FOUND_ANYWHERE'
    END AS validation_status,

    COUNT(DISTINCT p.inbound_policy_id) AS Policy_Count

FROM #PolicyComparison p

LEFT JOIN dbo.Enrollments_TEST e
    ON CONVERT(varchar(100), e.enrollment_id)
       = p.inbound_policy_id

WHERE p.match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'
  AND TRY_CONVERT(bigint, p.inbound_policy_id) IS NOT NULL

GROUP BY
    CASE
        WHEN e.enrollment_id IS NOT NULL
            THEN 'FOUND_OTHER_COVERAGE_YEAR'
        ELSE 'NOT_FOUND_ANYWHERE'
    END;


/* ============================================================
   SHOW COVERAGE YEAR FOR THOSE FOUND ELSEWHERE
   ============================================================ */

SELECT
    e.coverage_year,
    COUNT(DISTINCT p.inbound_policy_id) AS Policy_Count

FROM #PolicyComparison p

JOIN dbo.Enrollments_TEST e
    ON CONVERT(varchar(100), e.enrollment_id)
       = p.inbound_policy_id

WHERE p.match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'
  AND TRY_CONVERT(bigint, p.inbound_policy_id) IS NOT NULL

GROUP BY e.coverage_year
ORDER BY e.coverage_year;


/* ============================================================
   ACTUAL POLICIES NOT FOUND ANYWHERE IN Enrollments_TEST
   ============================================================ */

SELECT
    p.issuer,
    p.inbound_policy_id

FROM #PolicyComparison p

WHERE p.match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'
  AND TRY_CONVERT(bigint, p.inbound_policy_id) IS NOT NULL

  AND NOT EXISTS
  (
      SELECT 1
      FROM dbo.Enrollments_TEST e
      WHERE CONVERT(varchar(100), e.enrollment_id)
            = p.inbound_policy_id
  )

ORDER BY
    p.issuer,
    p.inbound_policy_id;
