SELECT
    coverage_year,

    COUNT(*) AS rows,

    COUNT(DISTINCT Household_ID) AS households,

    COUNT(DISTINCT Application_ID) AS applications,

    COUNT(DISTINCT Enrollment_ID) AS enrollments,

    COUNT(DISTINCT Enrollee_ID) AS enrollees,

    MIN(Application_Create_Date) AS first_application_date,
    MAX(Application_Create_Date) AS latest_application_date,

    MIN(applicant_update_date) AS first_applicant_update,
    MAX(applicant_update_date) AS latest_applicant_update

FROM dbo.concurrent_ALL_NEW

GROUP BY coverage_year

ORDER BY coverage_year;
