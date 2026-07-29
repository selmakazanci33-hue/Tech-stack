SELECT [coverage_year]
      ,[GAA_Load_Datetime]
      ,[household_id]
      ,[fpl]
      ,[ssap_application_id]
      ,[external_application_id]
      ,[application_type]
      ,[source]
      ,[application_status]
      ,[Insurance_Type]
      ,[enrollment_id]
      ,[enrollee_id]
      ,[person_type]
      ,[relationship_type]
      ,[consumer_category]
      ,[birth_date]
      ,[enrollee_first_name]
      ,[enrollee_last_name]
      ,[total_indv_responsibility_amt]
      ,[gross_premium_amt]
      ,[net_premium_amt]
      ,[aptc_amt]
      ,[csr_amt]
      ,[exchange_eligibility_status]
      ,[plan_level_combined_bronze]
      ,[cms_plan_id]
      ,[plan_id]
      ,[plan_name]
      ,[hios_issuer_id]
      ,[insurer_name]
      ,[age]
      ,[email_address]
      ,[phone_number]
      ,[rating_area]
      ,[county]
      ,[zip]
      ,[broker_role]
      ,[broker_id]
      ,[assister_broker_id]
      ,[npn]
      ,[first_name]
      ,[last_name]
      ,[business_name]
      ,[technology_provider]
      ,[enrollment_status_description]
      ,[enrollee_status_description]
      ,[benefit_effective_date]
      ,[benefit_end_date]
      ,[enrollment_confirmation_date]
      ,[enrollment_create_date]
      ,[enrollment_last_update_date]
      ,[enrollee_start_date]
      ,[enrollee_end_date]
      ,[enrollee_create_date]
      ,[enrollee_last_update_date]
      ,[application_create_date]
      ,[application_last_update_date]
  FROM [dbo].[Enrollments_TEST]
  where[hios_issuer_id]=37301 and [coverage_year]=2026


SELECT
    coverage_year,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT enrollment_id) AS Total_Enrollments,
    COUNT(DISTINCT enrollee_id) AS Total_Enrollees
FROM dbo.Enrollments_TEST
WHERE hios_issuer_id = 37301
  AND coverage_year IN (2025, 2026)
GROUP BY coverage_year
ORDER BY coverage_year;


WITH business_enrollees AS (
    SELECT DISTINCT
        CAST(enrollee_id AS VARCHAR(200)) AS enrollee_id
    FROM dbo.Enrollments_TEST
    WHERE hios_issuer_id = 37301
      AND coverage_year = 2026
      AND enrollee_id IS NOT NULL
),
raw_enrollees AS (
    SELECT DISTINCT
        CAST(COALESCE(
            NULLIF(member_id, ''),
            NULLIF(issuer_indiv_identifier, ''),
            NULLIF(exchg_assigned_enrollee_id, '')
        ) AS VARCHAR(200)) AS enrollee_id
    FROM dbo.inbound_automation
    WHERE issuer = '37301'
      AND coverage_year = 2026
)
SELECT
    b.enrollee_id
FROM business_enrollees b
LEFT JOIN raw_enrollees r
    ON b.enrollee_id = r.enrollee_id
WHERE r.enrollee_id IS NULL
ORDER BY b.enrollee_id;


SELECT
    COUNT(DISTINCT member_id) AS member_id_count,
    COUNT(DISTINCT issuer_indiv_identifier) AS issuer_indiv_identifier_count,
    COUNT(DISTINCT exchg_assigned_enrollee_id) AS exchg_assigned_enrollee_id_count
FROM dbo.inbound_automation
WHERE issuer = '37301'
  AND coverage_year = 2026;


SELECT
    coverage_year,
    COUNT(DISTINCT member_id) AS Distinct_Members
FROM dbo.inbound_automation
WHERE issuer = '37301'
GROUP BY coverage_year
ORDER BY coverage_year;


SELECT
    source,
    COUNT(DISTINCT enrollee_id) AS Enrollees
FROM dbo.Enrollments_TEST
WHERE hios_issuer_id = 37301
  AND coverage_year = 2026
GROUP BY source
ORDER BY Enrollees DESC;

SELECT
    COUNT(DISTINCT COALESCE(
        NULLIF(policy_id, ''),
        NULLIF(health_coverage_policy_no, '')
    )) AS Policies
FROM dbo.inbound_automation
WHERE issuer = '37301'
  AND coverage_year = 2026;

SELECT
    COUNT(DISTINCT enrollment_id) AS Policies
FROM dbo.Enrollments_TEST
WHERE hios_issuer_id = 37301
  AND coverage_year = 2026;


SELECT
    source,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,
    COUNT(DISTINCT enrollee_id) AS Distinct_Enrollees
FROM dbo.Enrollments_TEST
WHERE hios_issuer_id = 37301
  AND coverage_year = 2026
GROUP BY source
ORDER BY Distinct_Enrollees DESC;


SELECT
    enrollee_id,
    COUNT(DISTINCT source) AS Source_Count,
    STRING_AGG(DISTINCT source, ', ') AS Sources
FROM dbo.Enrollments_TEST
WHERE hios_issuer_id = 37301
  AND coverage_year = 2026
  AND enrollee_id IS NOT NULL
GROUP BY enrollee_id
HAVING COUNT(DISTINCT source) > 1
ORDER BY Source_Count DESC;


SELECT
    enrollee_id,
    COUNT(DISTINCT source) AS Source_Count
FROM dbo.Enrollments_TEST
WHERE hios_issuer_id = 37301
  AND coverage_year = 2026
  AND enrollee_id IS NOT NULL
GROUP BY enrollee_id
HAVING COUNT(DISTINCT source) > 1
ORDER BY Source_Count DESC, enrollee_id;



SELECT
    e.enrollee_id,
    COUNT(DISTINCT e.source) AS Source_Count,
    STUFF((
        SELECT DISTINCT ', ' + e2.source
        FROM dbo.Enrollments_TEST e2
        WHERE e2.enrollee_id = e.enrollee_id
          AND e2.hios_issuer_id = 37301
          AND e2.coverage_year = 2026
          AND e2.source IS NOT NULL
        FOR XML PATH(''), TYPE
    ).value('.', 'VARCHAR(MAX)'), 1, 2, '') AS Sources
FROM dbo.Enrollments_TEST e
WHERE e.hios_issuer_id = 37301
  AND e.coverage_year = 2026
  AND e.enrollee_id IS NOT NULL
GROUP BY e.enrollee_id
HAVING COUNT(DISTINCT e.source) > 1
ORDER BY Source_Count DESC, e.enrollee_id;


WITH raw_members AS (
    SELECT DISTINCT
        member_id
    FROM dbo.inbound_automation
    WHERE issuer = '37301'
      AND coverage_year = 2026
      AND member_id IS NOT NULL
)
SELECT
    e.source,
    COUNT(DISTINCT e.enrollee_id) AS Business_Enrollees,
    COUNT(DISTINCT CASE
        WHEN r.member_id IS NOT NULL THEN e.enrollee_id
    END) AS Found_In_Raw
FROM dbo.Enrollments_TEST e
LEFT JOIN raw_members r
    ON e.enrollee_id = r.member_id
WHERE e.hios_issuer_id = 37301
  AND e.coverage_year = 2026
GROUP BY e.source
ORDER BY Business_Enrollees DESC;


WITH raw_members AS (
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(member_id AS VARCHAR(200)))) AS enrollee_id
    FROM dbo.inbound_automation
    WHERE issuer = '37301'
      AND coverage_year = 2026
      AND NULLIF(LTRIM(RTRIM(CAST(member_id AS VARCHAR(200)))), '') IS NOT NULL
),
business_members AS (
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(enrollee_id AS VARCHAR(200)))) AS enrollee_id
    FROM dbo.Enrollments_TEST
    WHERE hios_issuer_id = 37301
      AND coverage_year = 2026
      AND NULLIF(LTRIM(RTRIM(CAST(enrollee_id AS VARCHAR(200)))), '') IS NOT NULL
)
SELECT
    (SELECT COUNT(*) FROM raw_members) AS Raw_Enrollees,
    (SELECT COUNT(*) FROM business_members) AS Business_Enrollees,
    (
        SELECT COUNT(*)
        FROM raw_members r
        INNER JOIN business_members b
            ON r.enrollee_id = b.enrollee_id
    ) AS Matched_Enrollees,
    (
        SELECT COUNT(*)
        FROM business_members b
        LEFT JOIN raw_members r
            ON b.enrollee_id = r.enrollee_id
        WHERE r.enrollee_id IS NULL
    ) AS Business_Only,
    (
        SELECT COUNT(*)
        FROM raw_members r
        LEFT JOIN business_members b
            ON r.enrollee_id = b.enrollee_id
        WHERE b.enrollee_id IS NULL
    ) AS Raw_Only;


WITH swathi_summary AS (
    SELECT
        coverage_year,
        COUNT(*) AS Total_Rows,
        COUNT(DISTINCT NULLIF(
            LTRIM(RTRIM(CAST(enrollment_id AS VARCHAR(200)))),
            ''
        )) AS Total_Policies,
        COUNT(DISTINCT NULLIF(
            LTRIM(RTRIM(CAST(enrollee_id AS VARCHAR(200)))),
            ''
        )) AS Total_Enrollees
    FROM dbo.Enrollments_TEST
    WHERE hios_issuer_id = 37301
      AND coverage_year IN (2025, 2026)
    GROUP BY coverage_year
),
raw_summary AS (
    SELECT
        coverage_year,
        COUNT_BIG(*) AS Total_Rows,

        COUNT(DISTINCT COALESCE(
            NULLIF(LTRIM(RTRIM(CAST(policy_id AS VARCHAR(200)))), ''),
            NULLIF(LTRIM(RTRIM(CAST(health_coverage_policy_no AS VARCHAR(200)))), '')
        )) AS Total_Policies,

        COUNT(DISTINCT COALESCE(
            NULLIF(LTRIM(RTRIM(CAST(member_id AS VARCHAR(200)))), ''),
            NULLIF(LTRIM(RTRIM(CAST(issuer_indiv_identifier AS VARCHAR(200)))), ''),
            NULLIF(LTRIM(RTRIM(CAST(exchg_assigned_enrollee_id AS VARCHAR(200)))), '')
        )) AS Total_Enrollees

    FROM dbo.inbound_automation
    WHERE issuer = '37301'
      AND coverage_year IN (2025, 2026)
    GROUP BY coverage_year
)
SELECT
    COALESCE(s.coverage_year, r.coverage_year) AS Coverage_Year,

    s.Total_Rows AS Swathi_Total_Rows,
    s.Total_Policies AS Swathi_Total_Policies,
    s.Total_Enrollees AS Swathi_Total_Enrollees,

    r.Total_Rows AS Raw_834_Total_Rows,
    r.Total_Policies AS Raw_834_Total_Policies,
    r.Total_Enrollees AS Raw_834_Total_Enrollees

FROM swathi_summary s
FULL OUTER JOIN raw_summary r
    ON s.coverage_year = r.coverage_year
ORDER BY Coverage_Year;

================================

WITH raw_policies AS (
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(
            COALESCE(
                NULLIF(policy_id,''),
                NULLIF(health_coverage_policy_no,'')
            ) AS VARCHAR(200)
        ))) AS policy_id
    FROM dbo.inbound_automation
    WHERE issuer='37301'
      AND coverage_year=2026
),
business_policies AS (
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(enrollment_id AS VARCHAR(200)))) AS policy_id
    FROM dbo.Enrollments_TEST
    WHERE hios_issuer_id=37301
      AND coverage_year=2026
)

SELECT
    (SELECT COUNT(*) FROM raw_policies) AS Raw_Policies,
    (SELECT COUNT(*) FROM business_policies) AS Business_Policies,

    (
        SELECT COUNT(*)
        FROM raw_policies r
        INNER JOIN business_policies b
            ON r.policy_id=b.policy_id
    ) AS Matching_Policies,

    (
        SELECT COUNT(*)
        FROM business_policies b
        LEFT JOIN raw_policies r
            ON r.policy_id=b.policy_id
        WHERE r.policy_id IS NULL
    ) AS Business_Only,

    (
        SELECT COUNT(*)
        FROM raw_policies r
        LEFT JOIN business_policies b
            ON r.policy_id=b.policy_id
        WHERE b.policy_id IS NULL
    ) AS Raw_Only;


=====================


WITH raw_ids AS (

    -- Our Enrollee IDs
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(member_id AS VARCHAR(200)))) AS id
    FROM dbo.inbound_automation
    WHERE issuer = '37301'
      AND coverage_year = 2026
      AND member_id IS NOT NULL

    UNION

    -- Our Policy IDs
    SELECT DISTINCT
        LTRIM(RTRIM(CAST(
            COALESCE(
                NULLIF(policy_id,''),
                NULLIF(health_coverage_policy_no,'')
            ) AS VARCHAR(200)
        ))) AS id
    FROM dbo.inbound_automation
    WHERE issuer = '37301'
      AND coverage_year = 2026
      AND COALESCE(
            NULLIF(policy_id,''),
            NULLIF(health_coverage_policy_no,'')
          ) IS NOT NULL
),

business_enrollees AS (

    SELECT DISTINCT
        LTRIM(RTRIM(CAST(enrollee_id AS VARCHAR(200)))) AS enrollee_id
    FROM dbo.Enrollments_TEST
    WHERE hios_issuer_id = 37301
      AND coverage_year = 2026
      AND enrollee_id IS NOT NULL
)

SELECT

    (SELECT COUNT(*) FROM raw_ids) AS Raw_Combined_IDs,

    (SELECT COUNT(*) FROM business_enrollees) AS Business_Enrollees,

    (
        SELECT COUNT(*)
        FROM raw_ids r
        INNER JOIN business_enrollees b
            ON r.id = b.enrollee_id
    ) AS Matching_IDs,

    (
        SELECT COUNT(*)
        FROM business_enrollees b
        LEFT JOIN raw_ids r
            ON r.id = b.enrollee_id
        WHERE r.id IS NULL
    ) AS Business_Only,

    (
        SELECT COUNT(*)
        FROM raw_ids r
        LEFT JOIN business_enrollees b
            ON r.id = b.enrollee_id
        WHERE b.enrollee_id IS NULL
    ) AS Raw_Only;



--------



SELECT
    coverage_year,
    loaded_at AS GAA_Load_Datetime,

    issuer AS hios_issuer_id,
    insurance_type AS Insurance_Type,

    COALESCE(
        NULLIF(policy_id, ''),
        NULLIF(health_coverage_policy_no, '')
    ) AS enrollment_id,

    COALESCE(
        NULLIF(member_id, ''),
        NULLIF(issuer_indiv_identifier, ''),
        NULLIF(exchg_assigned_enrollee_id, '')
    ) AS enrollee_id,

    policy_id,
    health_coverage_policy_no,

    member_id,
    issuer_indiv_identifier,
    exchg_assigned_enrollee_id,

    enrolleeStatus AS enrollee_status_description,

    member_maint_effective_date AS enrollee_start_date,
    member_maint_end_date AS enrollee_end_date,

    benefit_start_date AS benefit_effective_date,
    benefit_end_date,

    source_file,
    folder_year,
    folder_month,
    file_hash,
    row_number_in_file,

    raw_json
FROM dbo.inbound_automation
WHERE issuer = '37301'
  AND coverage_year = 2026
ORDER BY
    enrollment_id,
    enrollee_id,
    member_maint_effective_date;













