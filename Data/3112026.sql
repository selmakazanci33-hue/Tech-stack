


SELECT
    enrollment_confirmation_date,

    CASE
        WHEN enrollment_create_date < enrollment_confirmation_date
            THEN 'CREATED_BEFORE_CONFIRMATION'

        WHEN enrollment_create_date = enrollment_confirmation_date
            THEN 'CREATED_SAME_DAY'

        WHEN enrollment_create_date > enrollment_confirmation_date
            THEN 'CREATED_AFTER_CONFIRMATION'

        WHEN enrollment_create_date IS NULL
            THEN 'CREATE_DATE_NULL'
    END AS Create_vs_Confirmation,

    COUNT(*) AS Raw_Rows,

    COUNT(DISTINCT enrollment_id) AS Distinct_Enrollments,

    COUNT(DISTINCT enrollee_id) AS Distinct_People,

    MIN(enrollment_create_date) AS Min_Create_Date,

    MAX(enrollment_create_date) AS Max_Create_Date

FROM dbo.Enrollments_PY2526_DEC31

WHERE coverage_year = 2026
  AND enrollment_status_description = 'Enrolled'
  AND enrollee_status_description = 'Enrolled'
  AND application_type = 'OE'
  AND enrollment_confirmation_date IN ('2025-10-16', '2025-10-17')

GROUP BY
    enrollment_confirmation_date,
    CASE
        WHEN enrollment_create_date < enrollment_confirmation_date
            THEN 'CREATED_BEFORE_CONFIRMATION'

        WHEN enrollment_create_date = enrollment_confirmation_date
            THEN 'CREATED_SAME_DAY'

        WHEN enrollment_create_date > enrollment_confirmation_date
            THEN 'CREATED_AFTER_CONFIRMATION'

        WHEN enrollment_create_date IS NULL
            THEN 'CREATE_DATE_NULL'
    END

ORDER BY
    enrollment_confirmation_date,
    Distinct_People DESC;
