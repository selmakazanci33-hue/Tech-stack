


SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    ORDINAL_POSITION
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME IN (
      'AT_external_applications',
      'HH_SSAP_AT2026',
      'concurrent_ALL_NEW',
      'inbound_automation'
  )
ORDER BY TABLE_NAME, ORDINAL_POSITION;
