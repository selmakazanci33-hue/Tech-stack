SELECT
    s.name AS schema_name,
    o.name AS object_name,
    o.type_desc,
    c.name AS column_name
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
JOIN sys.columns c
    ON o.object_id = c.object_id
WHERE
       LOWER(c.name) LIKE '%2027%'
    OR LOWER(c.name) LIKE '%plan%year%'
    OR LOWER(c.name) LIKE '%coverage%year%'
ORDER BY
    s.name,
    o.name,
    c.column_id;


==================


SELECT
    s.name AS schema_name,
    o.name AS object_name,
    o.type_desc
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
WHERE
       LOWER(o.name) LIKE '%enroll%'
    OR LOWER(o.name) LIKE '%application%'
    OR LOWER(o.name) LIKE '%applicant%'
    OR LOWER(o.name) LIKE '%marketing%'
    OR LOWER(o.name) LIKE '%campaign%'
ORDER BY
    s.name,
    o.name;



=================


SELECT
    s.name AS schema_name,
    o.name AS object_name,
    COUNT(DISTINCT c.name) AS matching_columns
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
JOIN sys.columns c
    ON o.object_id = c.object_id
WHERE
       LOWER(c.name) LIKE '%enrollment%'
    OR LOWER(c.name) LIKE '%household%'
    OR LOWER(c.name) LIKE '%email%consent%'
    OR LOWER(c.name) LIKE '%text%consent%'
    OR LOWER(c.name) LIKE '%callback%consent%'
GROUP BY
    s.name,
    o.name
ORDER BY
    matching_columns DESC;
