WITH Nov30 AS
(
    SELECT DISTINCT
        enrollee_id
    FROM dbo.Enrollments_PY2526_NOV30
    WHERE coverage_year = 2026
      AND application_type = 'OE'
      AND enrollment_status_description = 'Enrolled'
      AND enrollee_status_description = 'Enrolled'
),
Dec31_Status AS
(
    SELECT
        enrollee_id,

        MAX(CASE
            WHEN enrollment_status_description = 'Enrolled'
             AND enrollee_status_description = 'Enrolled'
            THEN 1 ELSE 0
        END) AS Still_Enrolled,

        MAX(CASE
            WHEN enrollment_status_description = 'Cancelled'
              OR enrollee_status_description = 'Cancelled'
            THEN 1 ELSE 0
        END) AS Has_Cancelled,

        MAX(CASE
            WHEN enrollment_status_description = 'Terminated'
              OR enrollee_status_description = 'Terminated'
            THEN 1 ELSE 0
        END) AS Has_Terminated

    FROM dbo.Enrollments_PY2526_DEC31
    WHERE coverage_year = 2026
    GROUP BY enrollee_id
)
SELECT
    COUNT(*) AS NOV30_OE_Enrolled_People,

    SUM(CASE
        WHEN D.enrollee_id IS NULL
        THEN 1 ELSE 0
    END) AS Not_Found_In_DEC31,

    SUM(CASE
        WHEN D.Still_Enrolled = 1
        THEN 1 ELSE 0
    END) AS Still_Enrolled_In_DEC31,

    SUM(CASE
        WHEN D.Still_Enrolled = 0
         AND D.Has_Cancelled = 1
        THEN 1 ELSE 0
    END) AS Cancelled_By_DEC31,

    SUM(CASE
        WHEN D.Still_Enrolled = 0
         AND D.Has_Terminated = 1
        THEN 1 ELSE 0
    END) AS Terminated_By_DEC31,

    SUM(CASE
        WHEN D.enrollee_id IS NOT NULL
         AND D.Still_Enrolled = 0
         AND D.Has_Cancelled = 0
         AND D.Has_Terminated = 0
        THEN 1 ELSE 0
    END) AS Found_Other_Status_In_DEC31

FROM Nov30 N
LEFT JOIN Dec31_Status D
    ON N.enrollee_id = D.enrollee_id;
