




WITH Pair_Status AS
(
    SELECT
        enrollment_id,
        enrollee_id,
        COUNT(*) AS Raw_Rows,
        COUNT(DISTINCT enrollment_status_description) AS Status_Count
    FROM dbo.Enrollments_PY2526_DEC31
    WHERE coverage_year = 2026
    GROUP BY
        enrollment_id,
        enrollee_id
)
SELECT
    COUNT(*) AS Distinct_Enrollment_Enrollee_Pairs,

    SUM(CASE
            WHEN Raw_Rows > 1 THEN 1
            ELSE 0
        END) AS Pairs_With_Multiple_Rows,

    SUM(CASE
            WHEN Status_Count > 1 THEN 1
            ELSE 0
        END) AS Pairs_With_Multiple_Statuses,

    MAX(Raw_Rows) AS Max_Rows_Per_Pair,

    MAX(Status_Count) AS Max_Statuses_Per_Pair
FROM Pair_Status;
