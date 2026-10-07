/* ============================================================
   FIND SUBSCRIBER / DEPENDENT / RELATIONSHIP COLUMNS
   Source: dbo.Enrollments_TEST
   READ ONLY
   ============================================================ */

SELECT
    c.column_id AS Column_Ordinal,
    c.name AS Column_Name,
    t.name AS Data_Type
FROM sys.columns c
JOIN sys.types t
    ON c.user_type_id = t.user_type_id
WHERE c.object_id = OBJECT_ID('dbo.Enrollments_TEST')
  AND (
        LOWER(c.name) LIKE '%subscriber%'
     OR LOWER(c.name) LIKE '%relationship%'
     OR LOWER(c.name) LIKE '%person%'
     OR LOWER(c.name) LIKE '%member%'
     OR LOWER(c.name) LIKE '%dependent%'
     OR LOWER(c.name) LIKE '%applicant%'
  )
ORDER BY c.column_id;
