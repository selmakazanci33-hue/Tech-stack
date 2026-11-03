SELECT
    enrollment_last_update_date AS Activity_Date,

    COUNT(DISTINCT CASE
        WHEN enrollment_status_description = 'Cancelled'
        THEN enrollment_id
    END) AS Cancelled_Policies,

    COUNT(DISTINCT CASE
        WHEN enrollment_status_description = 'Terminated'
        THEN enrollment_id
    END) AS Terminated_Policies,

    COUNT(DISTINCT CASE
        WHEN enrollment_status_description IN ('Cancelled', 'Terminated')
        THEN enrollment_id
    END) AS Cancelled_Or_Terminated_Policies

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND enrollment_status_description IN ('Cancelled', 'Terminated')
  AND enrollment_last_update_date IS NOT NULL

GROUP BY enrollment_last_update_date

ORDER BY Activity_Date;
