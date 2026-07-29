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
