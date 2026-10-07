

/* ============================================================
   SWATHI ENROLLEE ID INVESTIGATION
   No 1,000-row INSERT limitation
   READ ONLY
   ============================================================ */

SET NOCOUNT ON;

DECLARE @CoverageYear INT = 2026;

IF OBJECT_ID('tempdb..#EnrolleeIDs') IS NOT NULL
    DROP TABLE #EnrolleeIDs;

CREATE TABLE #EnrolleeIDs
(
    enrollee_id VARCHAR(100) NOT NULL PRIMARY KEY
);

/*
PASTE ALL SWATHI ENROLLEE IDs BELOW.
One Enrollee ID per line.
No quotes and no commas are required.
*/

DECLARE @EnrolleeList VARCHAR(MAX) = '
1004451621
1004451622
1004451623
1004451624
';

/* Load unlimited Enrollee IDs */
INSERT INTO #EnrolleeIDs (enrollee_id)
SELECT DISTINCT
    LTRIM(RTRIM(value))
FROM STRING_SPLIT(
        REPLACE(@EnrolleeList, CHAR(13), ''),
        CHAR(10)
     )
WHERE LTRIM(RTRIM(value)) <> '';


/* ============================================================
   CONTROL
   How many Enrollee IDs did we receive?
   ============================================================ */

SELECT
    COUNT(*) AS Swathi_Enrollee_ID_Count
FROM #EnrolleeIDs;


/* ============================================================
   RESULT 1
   Find each Enrollee in Enrollments_TEST
   ============================================================ */

SELECT
    e.coverage_year,
    e.hios_issuer_id AS Issuer,
    e.enrollment_id AS Policy_ID,
    e.enrollee_id AS Enrollee_ID,

    e.person_type AS Person_Type,
    e.relationship_type AS Relationship_Type,

    e.enrollment_status_description AS Enrollment_Status,
    e.enrollee_status_description AS Enrollee_Status,

    e.household_id AS Household_ID,

    e.benefit_effective_date,
    e.benefit_end_date,

    e.enrollment_create_date,
    e.enrollment_last_update_date,
    e.enrollee_create_date,
    e.enrollee_last_update_date

FROM dbo.Enrollments_TEST e
INNER JOIN #EnrolleeIDs i
    ON LTRIM(RTRIM(CAST(e.enrollee_id AS VARCHAR(100))))
       = i.enrollee_id
WHERE e.coverage_year = @CoverageYear
ORDER BY
    e.enrollee_id,
    e.enrollment_id,
    e.enrollment_last_update_date DESC,
    e.enrollee_last_update_date DESC;


/* ============================================================
   RESULT 2
   Person Type / Relationship Type distribution
   ============================================================ */

SELECT
    e.person_type AS Person_Type,
    e.relationship_type AS Relationship_Type,
    COUNT(DISTINCT CAST(e.enrollee_id AS VARCHAR(100)))
        AS Distinct_Enrollee_Count
FROM dbo.Enrollments_TEST e
INNER JOIN #EnrolleeIDs i
    ON LTRIM(RTRIM(CAST(e.enrollee_id AS VARCHAR(100))))
       = i.enrollee_id
WHERE e.coverage_year = @CoverageYear
GROUP BY
    e.person_type,
    e.relationship_type
ORDER BY Distinct_Enrollee_Count DESC;


/* ============================================================
   RESULT 3
   IDs Swathi supplied but we cannot find in Enrollments_TEST
   ============================================================ */

SELECT
    i.enrollee_id AS Enrollee_ID_Not_Found
FROM #EnrolleeIDs i
WHERE NOT EXISTS
(
    SELECT 1
    FROM dbo.Enrollments_TEST e
    WHERE e.coverage_year = @CoverageYear
      AND LTRIM(RTRIM(CAST(e.enrollee_id AS VARCHAR(100))))
          = i.enrollee_id
)
ORDER BY i.enrollee_id;
