

/* ============================================================
   GEORGIA ACCESS — MAJOR AUTOMATION TABLES
   TOP 5 RECORDS FROM EACH TABLE
   ============================================================ */

-- 1. INBOUND 834
SELECT TOP (5) *
FROM dbo.inbound_automation
ORDER BY id DESC;


-- 2. OUTBOUND 834
SELECT TOP (5) *
FROM dbo.outbound_automation
ORDER BY id DESC;


-- 3. OUTBOUND MONTHLY PREMIUM
SELECT TOP (5) *
FROM dbo.outbound_automation_monthly_premium
ORDER BY id DESC;


-- 4. RCNI RAW
SELECT TOP (5) *
FROM dbo.rcni_raw
ORDER BY id DESC;


-- 5. RCNI STAGE
SELECT TOP (5) *
FROM dbo.rcni_stage
ORDER BY id DESC;

===============================================================

/* ============================================================
   GEORGIA ACCESS — MAJOR TABLES
   RECORD COUNTS + TOP 5 RECORDS
   ============================================================ */

-- ============================================================
-- 1. INBOUND 834
-- ============================================================
SELECT COUNT_BIG(*) AS inbound_total_records
FROM dbo.inbound_automation;

SELECT TOP (5) *
FROM dbo.inbound_automation
ORDER BY id DESC;


-- ============================================================
-- 2. OUTBOUND 834
-- ============================================================
SELECT COUNT_BIG(*) AS outbound_total_records
FROM dbo.outbound_automation;

SELECT TOP (5) *
FROM dbo.outbound_automation
ORDER BY id DESC;


-- ============================================================
-- 3. OUTBOUND MONTHLY PREMIUM
-- ============================================================
SELECT COUNT_BIG(*) AS premium_total_records
FROM dbo.outbound_automation_monthly_premium;

SELECT TOP (5) *
FROM dbo.outbound_automation_monthly_premium
ORDER BY id DESC;


-- ============================================================
-- 4. RCNI RAW
-- ============================================================
SELECT COUNT_BIG(*) AS rcni_raw_total_records
FROM dbo.rcni_raw;

SELECT TOP (5) *
FROM dbo.rcni_raw
ORDER BY id DESC;


-- ============================================================
-- 5. RCNI STAGE
-- ============================================================
SELECT COUNT_BIG(*) AS rcni_stage_total_records
FROM dbo.rcni_stage;

SELECT TOP (5) *
FROM dbo.rcni_stage
ORDER BY id DESC;

=====================================================================

SELECT 'inbound_automation' AS table_name, COUNT_BIG(*) AS record_count
FROM dbo.inbound_automation

UNION ALL

SELECT 'outbound_automation', COUNT_BIG(*)
FROM dbo.outbound_automation

UNION ALL

SELECT 'outbound_automation_monthly_premium', COUNT_BIG(*)
FROM dbo.outbound_automation_monthly_premium

UNION ALL

SELECT 'rcni_raw', COUNT_BIG(*)
FROM dbo.rcni_raw

UNION ALL

SELECT 'rcni_stage', COUNT_BIG(*)
FROM dbo.rcni_stage;
