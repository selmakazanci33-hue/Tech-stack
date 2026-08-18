
/* ============================================================
   STEP 1 — 2026 DISCREPANCY TABLE BASIC PROFILE
   ============================================================ */

SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members,
    COUNT(DISTINCT GAA_HIOS_ID) AS Unique_Issuers,
    COUNT(DISTINCT Recon_File_Name) AS Unique_Recon_Files,
    COUNT(DISTINCT GAA_Issuer_File_Name) AS Unique_Discrepancy_Files
FROM dbo.monthly_discrepancy_PY2026;


/* ============================================================
   STEP 2 — ISSUER DISTRIBUTION
   ============================================================ */

SELECT
    GAA_HIOS_ID,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members,
    COUNT(DISTINCT Recon_File_Name) AS Recon_Files
FROM dbo.monthly_discrepancy_PY2026
GROUP BY GAA_HIOS_ID
ORDER BY Unique_Policies DESC;



/* ============================================================
   STEP 3 — DISCREPANCY REASONS
   ============================================================ */

SELECT
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members
FROM dbo.monthly_discrepancy_PY2026
GROUP BY
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text
ORDER BY Total_Rows DESC;


/* ============================================================
   STEP 4 — AUTO-FIX ANALYSIS
   ============================================================ */

SELECT
    Autofixed_by_HIX,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members
FROM dbo.monthly_discrepancy_PY2026
GROUP BY Autofixed_by_HIX
ORDER BY Total_Rows DESC;



SELECT
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    Autofixed_by_HIX,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members
FROM dbo.monthly_discrepancy_PY2026
GROUP BY
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    Autofixed_by_HIX
ORDER BY Total_Rows DESC;




/* ============================================================
   STEP 5 — ENROLLMENT STATUS
   ============================================================ */

SELECT
    Enrollment_Status,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members
FROM dbo.monthly_discrepancy_PY2026
GROUP BY Enrollment_Status
ORDER BY Total_Rows DESC;




SELECT
    Enrollment_Status,
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members
FROM dbo.monthly_discrepancy_PY2026
GROUP BY
    Enrollment_Status,
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text
ORDER BY Total_Rows DESC;



/* ============================================================
   STEP 6 — POLICIES WITH MULTIPLE DISCREPANCIES
   ============================================================ */

SELECT TOP 100
    Exchange_Assigned_Policy_ID,
    COUNT(*) AS Discrepancy_Rows,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Members,
    COUNT(DISTINCT Discrepancy_Reason_Code) AS Different_Reasons,
    COUNT(DISTINCT Recon_File_Name) AS Recon_Files,
    MIN(Date_of_Discrepancy) AS First_Discrepancy,
    MAX(Date_of_Discrepancy) AS Last_Discrepancy
FROM dbo.monthly_discrepancy_PY2026
GROUP BY Exchange_Assigned_Policy_ID
HAVING COUNT(*) > 1
ORDER BY Discrepancy_Rows DESC;




/* ============================================================
   STEP 7 — MONTHLY TREND
   ============================================================ */

SELECT
    YEAR(Date_of_Discrepancy) AS Discrepancy_Year,
    MONTH(Date_of_Discrepancy) AS Discrepancy_Month,
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Exchange_Assigned_Policy_ID) AS Unique_Policies,
    COUNT(DISTINCT Exchange_Assigned_Member_ID) AS Unique_Members
FROM dbo.monthly_discrepancy_PY2026
GROUP BY
    YEAR(Date_of_Discrepancy),
    MONTH(Date_of_Discrepancy)
ORDER BY
    Discrepancy_Year,
    Discrepancy_Month;
