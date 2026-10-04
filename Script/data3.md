SELECT
    c.column_id AS Column_Ordinal,
    c.name AS Column_Name,
    t.name AS Data_Type
FROM sys.columns AS c
JOIN sys.types AS t
    ON c.user_type_id = t.user_type_id
WHERE c.object_id = OBJECT_ID('dbo.Enrollments_TEST')
  AND (
       LOWER(c.name) LIKE '%premium%'
       OR LOWER(c.name) LIKE '%responsibility%'
       OR LOWER(c.name) LIKE '%amount%'
       OR LOWER(c.name) LIKE '%amt%'
  )
ORDER BY c.column_id;
