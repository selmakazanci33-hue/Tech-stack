



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
