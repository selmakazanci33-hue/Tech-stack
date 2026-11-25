/* =========================================================
   834 INBOUND + OUTBOUND
   DEMO SAMPLE RECORDS
   ========================================================= */

-- =========================================================
-- INBOUND
-- =========================================================

PRINT '1. INBOUND MAIN RECORDS - dbo.inbound_automation';

SELECT TOP (5) *
FROM dbo.inbound_automation
ORDER BY loaded_at DESC, id DESC;


PRINT '2. INBOUND FILE LOG - dbo.inbound_automation_file_log';

SELECT TOP (5) *
FROM dbo.inbound_automation_file_log
ORDER BY loaded_at DESC, id DESC;


PRINT '3. INBOUND RUN LOG - dbo.inbound_automation_run_log';

SELECT TOP (5) *
FROM dbo.inbound_automation_run_log
ORDER BY started_at DESC;


-- =========================================================
-- OUTBOUND
-- =========================================================

PRINT '4. OUTBOUND MAIN RECORDS - dbo.outbound_automation';

SELECT TOP (5) *
FROM dbo.outbound_automation
ORDER BY loaded_at DESC, id DESC;


PRINT '5. OUTBOUND FILE LOG - dbo.outbound_automation_file_log';

SELECT TOP (5) *
FROM dbo.outbound_automation_file_log
ORDER BY loaded_at DESC, id DESC;


PRINT '6. OUTBOUND RUN LOG - dbo.outbound_automation_run_log';

SELECT TOP (5) *
FROM dbo.outbound_automation_run_log
ORDER BY started_at DESC;


===================================================================



/* =========================================================
   834 INBOUND / OUTBOUND RECORD COUNTS
   ========================================================= */

SELECT
    'INBOUND' AS direction,
    COUNT_BIG(*) AS total_records
FROM dbo.inbound_automation

UNION ALL

SELECT
    'OUTBOUND' AS direction,
    COUNT_BIG(*) AS total_records
FROM dbo.outbound_automation;



===================================================================


SELECT
    issuer,
    coverage_year,
    COUNT_BIG(*) AS record_count
FROM dbo.inbound_automation
GROUP BY issuer, coverage_year
ORDER BY coverage_year DESC, issuer;
