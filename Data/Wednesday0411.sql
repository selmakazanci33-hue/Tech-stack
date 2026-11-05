



SELECT
    s.name AS schema_name,
    t.name AS table_name,
    c.name AS coverage_year_column
FROM sys.tables t
JOIN sys.schemas s
    ON t.schema_id = s.schema_id
JOIN sys.columns c
    ON t.object_id = c.object_id
WHERE LOWER(c.name) IN (
    'coverage_year',
    'coverageyear',
    'plan_year',
    'planyear'
)
ORDER BY s.name, t.name;


========



/* Find candidate tables that contain fields relevant
   to the Sisense OE Executive Dashboard */

SELECT
    s.name AS schema_name,
    t.name AS table_name,

    SUM(CASE WHEN LOWER(c.name) LIKE '%applicat%' THEN 1 ELSE 0 END)
        AS application_fields,

    SUM(CASE WHEN LOWER(c.name) LIKE '%enroll%' THEN 1 ELSE 0 END)
        AS enrollment_fields,

    SUM(CASE WHEN LOWER(c.name) LIKE '%status%' THEN 1 ELSE 0 END)
        AS status_fields,

    SUM(CASE WHEN LOWER(c.name) LIKE '%submit%' THEN 1 ELSE 0 END)
        AS submitted_fields,

    SUM(CASE WHEN LOWER(c.name) LIKE '%created%'
              OR LOWER(c.name) LIKE '%date%'
              OR LOWER(c.name) LIKE '%time%'
        THEN 1 ELSE 0 END)
        AS date_fields

FROM sys.tables t
JOIN sys.schemas s
    ON t.schema_id = s.schema_id
JOIN sys.columns c
    ON t.object_id = c.object_id

GROUP BY
    s.name,
    t.name

HAVING
       SUM(CASE WHEN LOWER(c.name) LIKE '%applicat%' THEN 1 ELSE 0 END) > 0
    OR SUM(CASE WHEN LOWER(c.name) LIKE '%enroll%' THEN 1 ELSE 0 END) > 0

ORDER BY
    application_fields DESC,
    enrollment_fields DESC,
    status_fields DESC;
