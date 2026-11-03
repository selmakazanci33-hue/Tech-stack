


SELECT
    s.name AS schema_name,
    o.name AS object_name,
    o.type_desc
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
WHERE o.type IN ('U', 'V')
  AND (
       LOWER(o.name) LIKE '%2027%'
    OR LOWER(o.name) LIKE '%py27%'
    OR LOWER(o.name) LIKE '%2627%'
    OR LOWER(o.name) LIKE '%252627%'
  )
ORDER BY
    s.name,
    o.name;
