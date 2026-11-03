



WITH Person_First_OE_Confirmation AS
(
    SELECT
        enrollee_id,
        MIN(enrollment_confirmation_date) AS First_OE_Confirmation_Date
    FROM dbo.Enrollments_PY2526_DEC31
    WHERE coverage_year = 2026
      AND application_type = 'OE'
      AND enrollment_status_description = 'Enrolled'
      AND enrollee_status_description = 'Enrolled'
      AND enrollment_confirmation_date IS NOT NULL
    GROUP BY enrollee_id
),
Daily AS
(
    SELECT
        First_OE_Confirmation_Date,
        COUNT(*) AS New_Unique_People
    FROM Person_First_OE_Confirmation
    GROUP BY First_OE_Confirmation_Date
)
SELECT
    First_OE_Confirmation_Date AS Confirmation_Date,
    New_Unique_People,

    SUM(New_Unique_People) OVER
    (
        ORDER BY First_OE_Confirmation_Date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS Cumulative_Unique_People

FROM Daily

ORDER BY First_OE_Confirmation_Date;
