


SELECT
    s.name AS schema_name,
    o.name AS object_name,
    o.type_desc,
    c.name AS column_name,
    t.name AS data_type
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
JOIN sys.columns c
    ON o.object_id = c.object_id
JOIN sys.types t
    ON c.user_type_id = t.user_type_id
WHERE o.type IN ('U', 'V')
  AND LOWER(c.name) IN (
      'coverage_year',
      'coverageyear',
      'plan_year',
      'planyear'
  )
ORDER BY
    s.name,
    o.name;
