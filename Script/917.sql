SELECT
    COUNT(DISTINCT CASE
        WHEN e.enrollee_id = i.member_id
        THEN e.enrollee_id END) AS Match_Member_ID,

    COUNT(DISTINCT CASE
        WHEN e.enrollee_id = i.exchng_assigned_enrollee_id
        THEN e.enrollee_id END) AS Match_Exchange_Enrollee_ID,

    COUNT(DISTINCT CASE
        WHEN e.enrollee_id = i.issuer_indiv_identifier
        THEN e.enrollee_id END) AS Match_Issuer_Individual_ID

FROM dbo.Enrollments_TEST e
JOIN dbo.inbound_automation i
    ON e.enrollee_id = i.member_id
    OR e.enrollee_id = i.exchng_assigned_enrollee_id
    OR e.enrollee_id = i.issuer_indiv_identifier
WHERE e.coverage_year = 2026;
