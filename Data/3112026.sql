



DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql = STRING_AGG(
    CAST(
        'SELECT ''' +
        REPLACE(s.name + '.' + o.name, '''', '''''') +
        ''' AS Table_Name, COUNT(*) AS PY2027_Raw_Rows ' +
        'FROM ' + QUOTENAME(s.name) + '.' + QUOTENAME(o.name) +
        ' WHERE coverage_year = 2027 HAVING COUNT(*) > 0'
    AS NVARCHAR(MAX)),
    ' UNION ALL '
)
FROM sys.objects o
JOIN sys.schemas s
    ON o.schema_id = s.schema_id
JOIN sys.columns c
    ON o.object_id = c.object_id
WHERE o.type IN ('U','V')
GROUP BY s.name, o.name, o.object_id
HAVING
    SUM(CASE WHEN LOWER(c.name) = 'coverage_year' THEN 1 ELSE 0 END) > 0
    AND
    SUM(CASE WHEN LOWER(c.name) = 'enrollment_id' THEN 1 ELSE 0 END) > 0
    AND
    SUM(CASE WHEN LOWER(c.name) = 'enrollee_id' THEN 1 ELSE 0 END) > 0;

EXEC sp_executesql @sql;
