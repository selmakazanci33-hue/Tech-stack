WITH Person_First_OE_Confirmation AS
(
    SELECT
        enrollee_id,
        MIN(enrollment_confirmation_date) AS Metric_Date
    FROM dbo.Enrollments_PY2526_NOV30
    WHERE coverage_year = 2026
      AND application_type = 'OE'
      AND enrollment_status_description = 'Enrolled'
      AND enrollee_status_description = 'Enrolled'
      AND enrollment_confirmation_date IS NOT NULL
      AND enrollment_confirmation_date >= '2025-10-01'
    GROUP BY enrollee_id
),
Daily AS
(
    SELECT
        Metric_Date,
        COUNT(*) AS Daily_Count
    FROM Person_First_OE_Confirmation
    GROUP BY Metric_Date
)
SELECT
    2026 AS Plan_Year,
    Metric_Date,
    'Enrollment' AS Metric,
    Daily_Count,
    SUM(Daily_Count) OVER
    (
        ORDER BY Metric_Date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS Cumulative_Count
FROM Daily
ORDER BY Metric_Date;
