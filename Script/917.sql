/* ============================================================
   VALIDATE THE 173,786 NOT-FOUND POPULATION
   Separate numeric IDs from non-numeric IDs
   ============================================================ */

SELECT
    CASE
        WHEN TRY_CONVERT(bigint, inbound_policy_id) IS NOT NULL
            THEN 'NUMERIC_POLICY_ID'
        ELSE 'NON_NUMERIC_POLICY_ID'
    END AS Policy_ID_Type,

    COUNT(*) AS Policy_Count

FROM #PolicyComparison

WHERE match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'

GROUP BY
    CASE
        WHEN TRY_CONVERT(bigint, inbound_policy_id) IS NOT NULL
            THEN 'NUMERIC_POLICY_ID'
        ELSE 'NON_NUMERIC_POLICY_ID'
    END

ORDER BY Policy_Count DESC;


/* ============================================================
   NON-NUMERIC EXAMPLES
   ============================================================ */

SELECT TOP (100)
    issuer,
    inbound_policy_id
FROM #PolicyComparison
WHERE match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'
  AND TRY_CONVERT(bigint, inbound_policy_id) IS NULL
ORDER BY issuer, inbound_policy_id;


/* ============================================================
   NUMERIC BUT STILL MISSING EXAMPLES
   These are much more interesting for Hari's Task #2.
   ============================================================ */

SELECT TOP (100)
    issuer,
    inbound_policy_id
FROM #PolicyComparison
WHERE match_status = 'NOT_FOUND_IN_ENROLLMENTS_TEST'
  AND TRY_CONVERT(bigint, inbound_policy_id) IS NOT NULL
ORDER BY issuer, inbound_policy_id;
