


/* ============================================================
   NO 834 INBOUND
   VS
   2025 + 2026 MONTHLY DISCREPANCY / RECON

   PURPOSE:
   Take records classified as NO INBOUND from #final_results
   and determine whether they exist in Recon / Discrepancy data.

   MATCH LEVELS:
       1. EXACT_MEMBER_POLICY
       2. MEMBER_MATCH_DIFFERENT_POLICY
       3. POLICY_MATCH_DIFFERENT_MEMBER
   ============================================================ */


DROP TABLE IF EXISTS #no_inbound_recon_matches;


/* ============================================================
   STEP 1
   COMBINE 2025 + 2026 DISCREPANCY TABLES
   ============================================================ */

;WITH recon_all AS
(

    /* -------------------------
       PY2025
       ------------------------- */

    SELECT
        2025 AS Recon_Table_Year,

        Coverage_Year,
        CAST(GAA_HIOS_ID AS VARCHAR(20)) AS Recon_Issuer,

        GAA_Load_Datetime,
        GAA_Issuer_File_Name,
        GAA_Issuer_File_Datetime,

        CAST(Exchange_Assigned_Policy_ID AS VARCHAR(100))
            AS Recon_Policy_ID,

        Plan_ID,

        Member_Last_Name,
        Member_First_Name,

        CAST(Exchange_Assigned_Member_ID AS VARCHAR(100))
            AS Recon_Member_ID,

        Issuer_Assigned_Member_ID,

        Subscriber_Last_Name,
        Subscriber_First_Name,

        Exchange_Assigned_Subscriber_ID,
        Issuer_Assigned_Subscriber_ID,

        Discrepancy_Reason_Code,
        Discrepancy_Reason_Text,

        HIX_Value,
        Issuer_Value,

        Date_of_Discrepancy,

        Recon_File_Name,

        Autofixed_by_HIX,
        Assignee,

        Enrollment_Status

    FROM dbo.monthly_discrepancy_PY2025


    UNION ALL


    /* -------------------------
       PY2026
       ------------------------- */

    SELECT
        2026 AS Recon_Table_Year,

        Coverage_Year,
        CAST(GAA_HIOS_ID AS VARCHAR(20)) AS Recon_Issuer,

        GAA_Load_Datetime,
        GAA_Issuer_File_Name,
        GAA_Issuer_File_Datetime,

        CAST(Exchange_Assigned_Policy_ID AS VARCHAR(100))
            AS Recon_Policy_ID,

        Plan_ID,

        Member_Last_Name,
        Member_First_Name,

        CAST(Exchange_Assigned_Member_ID AS VARCHAR(100))
            AS Recon_Member_ID,

        Issuer_Assigned_Member_ID,

        Subscriber_Last_Name,
        Subscriber_First_Name,

        Exchange_Assigned_Subscriber_ID,
        Issuer_Assigned_Subscriber_ID,

        Discrepancy_Reason_Code,
        Discrepancy_Reason_Text,

        HIX_Value,
        Issuer_Value,

        Date_of_Discrepancy,

        Recon_File_Name,

        Autofixed_by_HIX,
        Assignee,

        Enrollment_Status

    FROM dbo.monthly_discrepancy_PY2026
),


/* ============================================================
   STEP 2
   ONLY OUR NO-INBOUND POPULATION
   ============================================================ */

no_inbound AS
(
    SELECT DISTINCT

        FFM_Enrollee_ID,
        FFM_Policy_ID,

        FFM_Issuer,
        FFM_Coverage_Year,

        FFM_Enrollment_Status_Raw,
        FFM_Enrollee_Status_Raw,
        FFM_Status_Norm,

        FFM_Event_Date,

        household_id,
        person_type,
        relationship_type,

        Match_Level,
        Match_Score,

        Root_Cause_Category,
        Hari_Root_Cause_Category

    FROM #final_results

    WHERE
           Root_Cause_Category = 'NO_INBOUND_EVIDENCE'
        OR Hari_Root_Cause_Category = 'NO INBOUND'
),


/* ============================================================
   STEP 3
   FIND ALL POSSIBLE RECON MATCHES

   IMPORTANT:
   We intentionally search BOTH:
      MEMBER ID
      POLICY ID

   because:
   - policy can change over time
   - same policy can contain multiple household members
   ============================================================ */

matches AS
(
    SELECT

        /* ======================
           ORIGINAL FFM RECORD
           ====================== */

        n.FFM_Enrollee_ID,
        n.FFM_Policy_ID,
        n.FFM_Issuer,
        n.FFM_Coverage_Year,

        n.FFM_Enrollment_Status_Raw,
        n.FFM_Enrollee_Status_Raw,
        n.FFM_Status_Norm,

        n.FFM_Event_Date,

        n.household_id,
        n.person_type,
        n.relationship_type,

        n.Root_Cause_Category,
        n.Hari_Root_Cause_Category,


        /* ======================
           RECON MATCH
           ====================== */

        r.Recon_Table_Year,

        r.Coverage_Year
            AS Recon_Coverage_Year,

        r.Recon_Issuer,

        r.Recon_Policy_ID,
        r.Recon_Member_ID,

        r.Member_First_Name,
        r.Member_Last_Name,

        r.Plan_ID,

        r.Enrollment_Status
            AS Recon_Enrollment_Status,


        /* ======================
           DISCREPANCY DETAILS
           ====================== */

        r.Discrepancy_Reason_Code,
        r.Discrepancy_Reason_Text,

        r.HIX_Value,
        r.Issuer_Value,

        r.Date_of_Discrepancy,

        r.Autofixed_by_HIX,
        r.Assignee,


        /* ======================
           FILE INFORMATION
           ====================== */

        r.Recon_File_Name,

        r.GAA_Issuer_File_Name,

        r.GAA_Issuer_File_Datetime,

        r.GAA_Load_Datetime,


        /* ====================================================
           HOW DID WE FIND IT?
           ==================================================== */

        CASE

            WHEN
                LTRIM(RTRIM(n.FFM_Enrollee_ID))
                    = LTRIM(RTRIM(r.Recon_Member_ID))

            AND LTRIM(RTRIM(n.FFM_Policy_ID))
                    = LTRIM(RTRIM(r.Recon_Policy_ID))

                THEN 'EXACT_MEMBER_POLICY'


            WHEN
                LTRIM(RTRIM(n.FFM_Enrollee_ID))
                    = LTRIM(RTRIM(r.Recon_Member_ID))

                THEN 'MEMBER_MATCH_DIFFERENT_POLICY'


            WHEN
                LTRIM(RTRIM(n.FFM_Policy_ID))
                    = LTRIM(RTRIM(r.Recon_Policy_ID))

                THEN 'POLICY_MATCH_DIFFERENT_MEMBER'


            ELSE 'NO_MATCH'

        END AS Recon_Match_Type,


        /* ====================================================
           SAME ISSUER?
           ==================================================== */

        CASE
            WHEN CAST(n.FFM_Issuer AS VARCHAR(20))
               = CAST(r.Recon_Issuer AS VARCHAR(20))
                THEN 'YES'
            ELSE 'NO'
        END AS Recon_Issuer_Match,


        /* ====================================================
           SAME COVERAGE YEAR?
           ==================================================== */

        CASE
            WHEN n.FFM_Coverage_Year = r.Coverage_Year
                THEN 'YES'
            ELSE 'NO'
        END AS Recon_Coverage_Year_Match,


        /* ====================================================
           BUSINESS INTERPRETATION
           ==================================================== */

        CASE

            WHEN r.Recon_Member_ID IS NULL
             AND r.Recon_Policy_ID IS NULL

                THEN 'NOT_FOUND_IN_RECON'


            WHEN
                LTRIM(RTRIM(n.FFM_Enrollee_ID))
                    = LTRIM(RTRIM(r.Recon_Member_ID))

             AND LTRIM(RTRIM(n.FFM_Policy_ID))
                    = LTRIM(RTRIM(r.Recon_Policy_ID))

             AND UPPER(LTRIM(RTRIM(
                    ISNULL(r.Autofixed_by_HIX,'')
                 ))) IN ('Y','YES')

                THEN 'FOUND_IN_RECON_AUTOFIXED'


            WHEN
                LTRIM(RTRIM(n.FFM_Enrollee_ID))
                    = LTRIM(RTRIM(r.Recon_Member_ID))

             AND LTRIM(RTRIM(n.FFM_Policy_ID))
                    = LTRIM(RTRIM(r.Recon_Policy_ID))

                THEN 'FOUND_IN_RECON_EXACT'


            WHEN
                LTRIM(RTRIM(n.FFM_Enrollee_ID))
                    = LTRIM(RTRIM(r.Recon_Member_ID))

                THEN 'FOUND_IN_RECON_BY_MEMBER'


            WHEN
                LTRIM(RTRIM(n.FFM_Policy_ID))
                    = LTRIM(RTRIM(r.Recon_Policy_ID))

                THEN 'FOUND_IN_RECON_BY_POLICY'

            ELSE 'REVIEW'

        END AS Recon_Interpretation


    FROM no_inbound n

    INNER JOIN recon_all r

        ON
        (
            LTRIM(RTRIM(n.FFM_Enrollee_ID))
                = LTRIM(RTRIM(r.Recon_Member_ID))

            OR

            LTRIM(RTRIM(n.FFM_Policy_ID))
                = LTRIM(RTRIM(r.Recon_Policy_ID))
        )
)


/* ============================================================
   SAVE RESULTS
   ============================================================ */

SELECT *
INTO #no_inbound_recon_matches
FROM matches;



/* ============================================================
   RESULT 1
   ALL NO-INBOUND RECORDS FOUND IN RECON
   FULL DETAILS
   ============================================================ */

SELECT *

FROM #no_inbound_recon_matches

ORDER BY

    CASE Recon_Match_Type
        WHEN 'EXACT_MEMBER_POLICY' THEN 1
        WHEN 'MEMBER_MATCH_DIFFERENT_POLICY' THEN 2
        WHEN 'POLICY_MATCH_DIFFERENT_MEMBER' THEN 3
        ELSE 4
    END,

    FFM_Enrollee_ID,
    FFM_Policy_ID,
    Date_of_Discrepancy;



/* ============================================================
   RESULT 2
   HOW MANY "NO INBOUND" RECORDS WERE ACTUALLY FOUND IN RECON?
   ============================================================ */

SELECT
    Recon_Match_Type,
    Recon_Interpretation,

    COUNT(*) AS Recon_Rows,

    COUNT(
        DISTINCT CONCAT(
            FFM_Enrollee_ID,
            '|',
            FFM_Policy_ID
        )
    ) AS Distinct_FFM_Enrollee_Policy_Pairs,

    COUNT(DISTINCT FFM_Enrollee_ID)
        AS Distinct_Enrollees,

    COUNT(DISTINCT FFM_Policy_ID)
        AS Distinct_Policies

FROM #no_inbound_recon_matches

GROUP BY
    Recon_Match_Type,
    Recon_Interpretation

ORDER BY
    Distinct_FFM_Enrollee_Policy_Pairs DESC;




/* ============================================================
   RESULT 3
   WHY WERE OUR "NO INBOUND" RECORDS IN RECON?
   ============================================================ */

SELECT
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,

    Autofixed_by_HIX,

    COUNT(*) AS Recon_Rows,

    COUNT(
        DISTINCT CONCAT(
            FFM_Enrollee_ID,
            '|',
            FFM_Policy_ID
        )
    ) AS Distinct_FFM_Pairs,

    COUNT(DISTINCT FFM_Enrollee_ID)
        AS Distinct_Enrollees,

    COUNT(DISTINCT FFM_Policy_ID)
        AS Distinct_Policies

FROM #no_inbound_recon_matches

GROUP BY
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    Autofixed_by_HIX

ORDER BY
    Distinct_FFM_Pairs DESC;



/* ============================================================
   RESULT 4
   CROSS-YEAR RECON ANALYSIS
   ============================================================ */

SELECT
    FFM_Coverage_Year,
    Recon_Table_Year,
    Recon_Coverage_Year,

    Recon_Coverage_Year_Match,

    COUNT(
        DISTINCT CONCAT(
            FFM_Enrollee_ID,
            '|',
            FFM_Policy_ID
        )
    ) AS Distinct_FFM_Pairs

FROM #no_inbound_recon_matches

GROUP BY
    FFM_Coverage_Year,
    Recon_Table_Year,
    Recon_Coverage_Year,
    Recon_Coverage_Year_Match

ORDER BY
    FFM_Coverage_Year,
    Recon_Table_Year,
    Recon_Coverage_Year;



/* ============================================================
   RESULT 5
   NO-INBOUND RECORDS THAT WERE AUTO-FIXED BY HIX
   ============================================================ */

SELECT *

FROM #no_inbound_recon_matches

WHERE UPPER(
        LTRIM(
            RTRIM(
                ISNULL(Autofixed_by_HIX,'')
            )
        )
      ) IN ('Y','YES')

ORDER BY
    Date_of_Discrepancy,
    FFM_Enrollee_ID,
    FFM_Policy_ID;
