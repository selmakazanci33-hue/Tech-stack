WITH Person_Dates AS
(
    SELECT
        enrollee_id,
        COUNT(DISTINCT enrollment_confirmation_date) AS Confirmation_Date_Count,
        MIN(enrollment_confirmation_date) AS First_Confirmation_Date,
        MAX(enrollment_confirmation_date) AS Last_Confirmation_Date
    FROM dbo.Enrollments_PY2526_DEC31
    WHERE coverage_year = 2026
      AND enrollment_status_description = 'Enrolled'
      AND enrollee_status_description = 'Enrolled'
    GROUP BY enrollee_id
)
SELECT
    COUNT(*) AS Total_Distinct_People,

    SUM(CASE
        WHEN Confirmation_Date_Count = 1 THEN 1
        ELSE 0
    END) AS People_With_One_Confirmation_Date,

    SUM(CASE
        WHEN Confirmation_Date_Count > 1 THEN 1
        ELSE 0
    END) AS People_With_Multiple_Confirmation_Dates,

    MAX(Confirmation_Date_Count) AS Max_Confirmation_Dates_Per_Person

FROM Person_Dates;
