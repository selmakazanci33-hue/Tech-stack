

SELECT
    s.name AS schema_name,
    o.name AS object_name,
    o.type_desc,
    COUNT(DISTINCT CASE
        WHEN LOWER(c.name) IN (
            'coverage_year',
            'enrollment_id',
            'enrollee_id'
        )
        THEN LOWER(c.name)
    END) AS required_columns_found
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
JOIN sys.columns c
    ON o.object_id = c.object_id
WHERE o.type IN ('U', 'V')
GROUP BY
    s.name,
    o.name,
    o.type_desc
HAVING COUNT(DISTINCT CASE
           WHEN LOWER(c.name) IN (
               'coverage_year',
               'enrollment_id',
               'enrollee_id'
           )
           THEN LOWER(c.name)
       END) = 3
ORDER BY
    s.name,
    o.name;
