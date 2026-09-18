SELECT
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'inbound_automation'
  AND (
        COLUMN_NAME LIKE '%member%'
        OR COLUMN_NAME LIKE '%enrollee%'
        OR COLUMN_NAME LIKE '%indiv%'
        OR COLUMN_NAME LIKE '%policy%'
        OR COLUMN_NAME LIKE '%subscriber%'
      )
ORDER BY ORDINAL_POSITION;
