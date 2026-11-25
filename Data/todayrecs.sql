

/* ================================================================
   GEORGIA ACCESS AUTOMATION
   TOP 5 RECORDS FROM ALL MAJOR TABLES
   ================================================================ */


-- ================================================================
-- INBOUND 834
-- ================================================================

-- Main Inbound Data
SELECT TOP (5) *
FROM dbo.inbound_automation
ORDER BY id DESC;


-- Inbound File Log
SELECT TOP (5) *
FROM dbo.inbound_automation_file_log
ORDER BY id DESC;


-- Inbound Run Log
SELECT TOP (5) *
FROM dbo.inbound_automation_run_log
ORDER BY id DESC;



-- ================================================================
-- OUTBOUND 834
-- ================================================================

-- Main Outbound Data
SELECT TOP (5) *
FROM dbo.outbound_automation
ORDER BY id DESC;


-- Monthly Premium Child Table
SELECT TOP (5) *
FROM dbo.outbound_automation_monthly_premium
ORDER BY id DESC;


-- Outbound File Log
SELECT TOP (5) *
FROM dbo.outbound_automation_file_log
ORDER BY id DESC;


-- Outbound Run Log
SELECT TOP (5) *
FROM dbo.outbound_automation_run_log
ORDER BY id DESC;



-- ================================================================
-- RCNI
-- ================================================================

-- RCNI Raw / Production Data
SELECT TOP (5) *
FROM dbo.rcni_raw
ORDER BY id DESC;


-- RCNI Stage
SELECT TOP (5) *
FROM dbo.rcni_stage
ORDER BY id DESC;


-- RCNI File Log
SELECT TOP (5) *
FROM dbo.rcni_file_log
ORDER BY id DESC;


-- RCNI Run Log
SELECT TOP (5) *
FROM dbo.rcni_run_log
ORDER BY id DESC;


-- RCNI Data Quality Issues
SELECT TOP (5) *
FROM dbo.rcni_data_quality_issue
ORDER BY id DESC;



INBOUND
1. dbo.inbound_automation
2. dbo.inbound_automation_file_log
3. dbo.inbound_automation_run_log

OUTBOUND
4. dbo.outbound_automation
5. dbo.outbound_automation_monthly_premium
6. dbo.outbound_automation_file_log
7. dbo.outbound_automation_run_log

RCNI
8.  dbo.rcni_raw
9.  dbo.rcni_stage
10. dbo.rcni_file_log
11. dbo.rcni_run_log
12. dbo.rcni_data_quality_issue
