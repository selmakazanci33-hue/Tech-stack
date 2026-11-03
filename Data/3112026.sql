WITH Policy_Event AS
(
    SELECT
        coverage_year AS Plan_Year,
        enrollment_id,
        enrollment_status_description AS Metric,
        MAX(enrollment_last_update_date) AS Metric_Date
    FROM dbo.Enrollments_PY2526_DEC31
    WHERE coverage_year IN (2025, 2026)
      AND enrollment_status_description IN ('Cancelled', 'Terminated')
      AND enrollment_id IS NOT NULL
      AND enrollment_last_update_date IS NOT NULL
    GROUP BY
        coverage_year,
        enrollment_id,
        enrollment_status_description
),
Daily AS
(
    SELECT
        Plan_Year,
        Metric_Date,
        Metric,
        COUNT(*) AS Daily_Count
    FROM Policy_Event
    GROUP BY
        Plan_Year,
        Metric_Date,
        Metric
)
SELECT
    Plan_Year,
    Metric_Date,
    Metric,
    Daily_Count,

    SUM(Daily_Count) OVER
    (
        PARTITION BY Plan_Year, Metric
        ORDER BY Metric_Date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS Cumulative_Count

FROM Daily

ORDER BY
    Plan_Year,
    Metric,
    Metric_Date;
