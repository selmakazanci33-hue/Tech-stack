


SELECT TOP 100
    s.name AS schema_name,
    t.name AS table_name,
    t.create_date,
    t.modify_date,
    SUM(p.rows) AS row_count
FROM sys.tables t
JOIN sys.schemas s
    ON t.schema_id = s.schema_id
LEFT JOIN sys.partitions p
    ON t.object_id = p.object_id
   AND p.index_id IN (0,1)
GROUP BY
    s.name,
    t.name,
    t.create_date,
    t.modify_date
ORDER BY
    t.modify_date DESC,
    t.create_date DESC;
