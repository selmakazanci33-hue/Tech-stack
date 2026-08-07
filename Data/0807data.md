  SELECT
    A.[ssn],
    A.applicant_guid,
    E.enrollee_id,
    E.enrollment_id,
    E.[enrollment_status_description],
    E.coverage_year,
    E.[hios_issuer_id]
FROM PY242526_Applicants_test A
JOIN [dbo].[Enrollments_TEST] E
    ON A.applicant_guid = E.enrollee_id
    WHERE E.enrollee_id IN ( '1000923947',

'1001301643',
'1001302403',
'1001302341',
'1001303876',
'1001305545',
'1001305548',

'1002235873')
AND E.[coverage_year] = 2025 and E.[hios_issuer_id] = 37301
