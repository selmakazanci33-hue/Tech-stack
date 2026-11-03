



WITH Enrollment_Size AS
(
    SELECT
        enrollment_id,
        COUNT(DISTINCT enrollee_id) AS Enrollees_Per_Enrollment
    FROM dbo.Enrollments_PY2526_DEC31
    WHERE coverage_year = 2026
      AND enrollment_status_description = 'Enrolled'
    GROUP BY enrollment_id
)
SELECT
    Enrollees_Per_Enrollment,
    COUNT(*) AS Enrollment_Count
FROM Enrollment_Size
GROUP BY Enrollees_Per_Enrollment
ORDER BY Enrollees_Per_Enrollment;
