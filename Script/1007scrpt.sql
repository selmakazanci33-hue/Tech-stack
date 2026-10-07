

/* ============================================================
   INVESTIGATE ENROLLEE — SUBSCRIBER VS DEPENDENT
   Source: dbo.Enrollments_TEST
   READ ONLY
   ============================================================ */

SET NOCOUNT ON;

DECLARE @CoverageYear INT = 2026;

-- ============================================================
-- PUT SWATHI'S ENROLLEE IDs HERE
-- ============================================================

IF OBJECT_ID('tempdb..#EnrolleeIDs') IS NOT NULL
    DROP TABLE #EnrolleeIDs;

CREATE TABLE #EnrolleeIDs (
    enrollee_id VARCHAR(100) NOT NULL PRIMARY KEY
);

INSERT INTO #EnrolleeIDs (enrollee_id)
VALUES
    ('PUT_ENROLLEE_ID_1_HERE'),
    ('PUT_ENROLLEE_ID_2_HERE'),
    ('PUT_ENROLLEE_ID_3_HERE');
    -- Add more IDs here


-- ============================================================
-- RESULT 1
-- Show exactly how these Enrollee IDs are represented
-- in Enrollments_TEST
-- ============================================================

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


-- ============================================================
-- RESULT 2
-- Distinct person_type / relationship_type combinations
-- for ONLY Swathi's supplied Enrollee IDs
-- ============================================================

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

ORDER BY
    Distinct_Enrollee_Count DESC;


-- ============================================================
-- RESULT 3
-- IDs supplied by Swathi that were NOT found
-- ============================================================

SELECT
    i.enrollee_id AS Enrollee_ID_Not_Found

FROM #EnrolleeIDs i

WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.Enrollments_TEST e
    WHERE e.coverage_year = @CoverageYear
      AND LTRIM(RTRIM(CAST(e.enrollee_id AS VARCHAR(100))))
          = i.enrollee_id
);
