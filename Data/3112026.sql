SELECT
    c.TABLE_NAME,
    c.ORDINAL_POSITION,
    c.COLUMN_NAME,
    c.DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS c
WHERE c.TABLE_SCHEMA = 'dbo'
  AND c.TABLE_NAME IN (
      'Enrollments_TEST',
      'Enrollments_PY2526_10312026',
      'Enrollments_PY2526_09302026',
      'PY2026-Enrollments_All',
      'PY242526_enrollment_lastupdate_test',
      '2025_GASBE_enrollments'
  )
ORDER BY
    c.TABLE_NAME,
    c.ORDINAL_POSITION;








SELECT
    s.name AS schema_name,
    o.name AS object_name,
    o.type_desc
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
WHERE o.type IN ('U', 'V')
  AND (
       LOWER(o.name) LIKE '%enroll%'
    OR LOWER(o.name) LIKE '%enrollee%'
    OR LOWER(o.name) LIKE '%application%'
    OR LOWER(o.name) LIKE '%policy%'
    OR LOWER(o.name) LIKE '%status%'
    OR LOWER(o.name) LIKE '%history%'
    OR LOWER(o.name) LIKE '%snapshot%'
    OR LOWER(o.name) LIKE '%issuer%'
    OR LOWER(o.name) LIKE '%partner%'
    OR LOWER(o.name) LIKE '%permission%'
    OR LOWER(o.name) LIKE '%ede%'
    OR LOWER(o.name) LIKE '%oe%'
  )
ORDER BY
    o.type_desc,
    s.name,
    o.name;
