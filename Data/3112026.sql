



SELECT
    'NOV30' AS Snapshot,
    enrollment_status_description,
    COUNT(*) AS Raw_Rows,
    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,
    COUNT(DISTINCT enrollee_id) AS Distinct_Enrollees
FROM dbo.Enrollments_PY2526_NOV30
WHERE coverage_year = 2026
GROUP BY enrollment_status_description

UNION ALL

SELECT
    'DEC31' AS Snapshot,
    enrollment_status_description,
    COUNT(*) AS Raw_Rows,
    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,
    COUNT(DISTINCT enrollee_id) AS Distinct_Enrollees
FROM dbo.Enrollments_PY2526_DEC31
WHERE coverage_year = 2026
GROUP BY enrollment_status_description

ORDER BY Snapshot, enrollment_status_description;
