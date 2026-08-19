


/* ============================================================
   SAME TRANSACTION / DIFFERENT POLICY RECONCILIATION
   FFM: dbo.Enrollments_TEST
   Inbound: dbo.inbound_automation

   Scope:
      FFM issuer = 15105 (Cigna)
      ALL coverage years
      ALL inbound issuers
      ALL inbound years

   Matching strategy:
      Enrollee first
      Policy is comparison/ranking criteria
   ============================================================ */

DROP TABLE IF EXISTS #final_results;

DECLARE @ffm_issuer VARCHAR(20) = '15105';


;WITH ffm AS
(
    SELECT

        CAST(e.enrollee_id AS VARCHAR(100))
            AS FFM_Enrollee_ID,

        CAST(e.enrollment_id AS VARCHAR(100))
            AS FFM_Policy_ID,

        CAST(e.hios_issuer_id AS VARCHAR(20))
            AS FFM_Issuer,

        e.coverage_year
            AS FFM_Coverage_Year,

        e.enrollment_status_description
            AS FFM_Enrollment_Status_Raw,

        e.enrollee_status_description
            AS FFM_Enrollee_Status_Raw,


        /* ====================================================
           FFM RAW STATUS
           Prefer enrollee status, otherwise enrollment status
           ==================================================== */

        COALESCE(
            e.enrollee_status_description,
            e.enrollment_status_description
        ) AS FFM_Status_Raw,


        /* ====================================================
           FFM NORMALIZED STATUS
           ==================================================== */

        CASE

            WHEN UPPER(
                LTRIM(RTRIM(
                    COALESCE(
                        e.enrollee_status_description,
                        e.enrollment_status_description
                    )
                ))
            ) = 'ENROLLED'
                THEN 'CONFIRM'


            WHEN UPPER(
                LTRIM(RTRIM(
                    COALESCE(
                        e.enrollee_status_description,
                        e.enrollment_status_description
                    )
                ))
            ) IN ('CANCELLED', 'CANCELED')
                THEN 'CANCEL'


            WHEN UPPER(
                LTRIM(RTRIM(
                    COALESCE(
                        e.enrollee_status_description,
                        e.enrollment_status_description
                    )
                ))
            ) = 'TERMINATED'
                THEN 'TERM'


            ELSE 'STATUS_MAPPING_REVIEW'

        END AS FFM_Status_Norm,


        /* ====================================================
           FFM DATES
           ==================================================== */

        e.benefit_effective_date,
        e.benefit_end_date,
        e.enrollment_create_date,
        e.enrollment_last_update_date,


        /* ====================================================
           BEST AVAILABLE FFM BUSINESS EVENT DATE

           Cursor analysis found:
           enrollment_last_update_date
           was the strongest date correlate.
           ==================================================== */

        COALESCE(

            e.enrollment_last_update_date,

            CASE
                WHEN UPPER(
                    LTRIM(RTRIM(
                        COALESCE(
                            e.enrollee_status_description,
                            e.enrollment_status_description
                        )
                    ))
                ) IN (
                    'CANCELLED',
                    'CANCELED',
                    'TERMINATED'
                )
                THEN e.benefit_end_date
            END,

            e.enrollment_create_date,

            e.benefit_effective_date

        ) AS FFM_Event_Date,


        /* ====================================================
           HOUSEHOLD / RELATIONSHIP
           ==================================================== */

        e.household_id,
        e.person_type,
        e.relationship_type,

        e.source AS FFM_Source

    FROM dbo.Enrollments_TEST e

    WHERE CAST(e.hios_issuer_id AS VARCHAR(20))
          = @ffm_issuer
),


/* ============================================================
   INBOUND POPULATION
   ALL ISSUERS / ALL YEARS

   IMPORTANT FIX:
   Check THREE possible enrollee identifiers.
   ============================================================ */

inbound AS
(
    SELECT

        /* ====================================================
           ENROLLEE IDENTIFIER
           ==================================================== */

        CAST(
            COALESCE(

                NULLIF(
                    LTRIM(RTRIM(
                        CAST(ia.member_id AS VARCHAR(200))
                    )),
                    ''
                ),

                NULLIF(
                    LTRIM(RTRIM(
                        CAST(ia.issuer_indiv_identifier AS VARCHAR(200))
                    )),
                    ''
                ),

                NULLIF(
                    LTRIM(RTRIM(
                        CAST(ia.exchg_assigned_enrollee_id AS VARCHAR(200))
                    )),
                    ''
                )

            )
            AS VARCHAR(100)
        ) AS Inbound_Enrollee_ID,


        /* ====================================================
           POLICY IDENTIFIER
           ==================================================== */

        CAST(
            COALESCE(

                NULLIF(
                    LTRIM(RTRIM(
                        CAST(ia.policy_id AS VARCHAR(200))
                    )),
                    ''
                ),

                NULLIF(
                    LTRIM(RTRIM(
                        CAST(ia.health_coverage_policy_no AS VARCHAR(200))
                    )),
                    ''
                )

            )
            AS VARCHAR(100)
        ) AS Inbound_Policy_ID,


        CAST(ia.issuer AS VARCHAR(20))
            AS Inbound_Issuer,

        ia.coverage_year
            AS Inbound_Coverage_Year,

        ia.enrolleeStatus
            AS Inbound_Status_Raw,


        /* ====================================================
           INBOUND NORMALIZED STATUS
           ==================================================== */

        CASE

            WHEN UPPER(
                LTRIM(RTRIM(ia.enrolleeStatus))
            ) = 'CONFIRM'
                THEN 'CONFIRM'

            WHEN UPPER(
                LTRIM(RTRIM(ia.enrolleeStatus))
            ) = 'CANCEL'
                THEN 'CANCEL'

            WHEN UPPER(
                LTRIM(RTRIM(ia.enrolleeStatus))
            ) = 'TERM'
                THEN 'TERM'

            ELSE 'STATUS_MAPPING_REVIEW'

        END AS Inbound_Status_Norm,


        /* ====================================================
           RAW INBOUND DATES
           ==================================================== */

        ia.member_maint_effective_date,

        ia.benefit_effective_date
            AS Inbound_Benefit_Effective_Date,

        ia.benefit_end_date
            AS Inbound_Benefit_End_Date,


        /* ====================================================
           FILE DATE

           Extract YYYYMMDD from source filename where available.
           ==================================================== */

        CASE

            WHEN PATINDEX(
                '%[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]%',
                ia.source_file
            ) > 0

            THEN TRY_CONVERT(
                DATE,

                SUBSTRING(
                    ia.source_file,

                    PATINDEX(
                        '%[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]%',
                        ia.source_file
                    ),

                    8
                ),

                112
            )

        END AS Inbound_File_Date,


        /* ====================================================
           BEST AVAILABLE INBOUND BUSINESS EVENT DATE

           loaded_at is intentionally NOT used as business date.
           ==================================================== */

        COALESCE(

            ia.member_maint_effective_date,

            CASE

                WHEN PATINDEX(
                    '%[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]%',
                    ia.source_file
                ) > 0

                THEN TRY_CONVERT(
                    DATE,

                    SUBSTRING(
                        ia.source_file,

                        PATINDEX(
                            '%[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]%',
                            ia.source_file
                        ),

                        8
                    ),

                    112
                )

            END,

            ia.benefit_effective_date

        ) AS Inbound_Event_Date,


        ia.folder_year
            AS Folder_Year,

        ia.folder_month
            AS Folder_Month,

        ia.source_file
            AS Source_File,

        ia.household_or_employee_case_id,

        ia.relationship,

        ia.loaded_at,

        ia.id
            AS inbound_row_id

    FROM dbo.inbound_automation ia

    WHERE

        COALESCE(

            NULLIF(
                LTRIM(RTRIM(
                    CAST(ia.member_id AS VARCHAR(200))
                )),
                ''
            ),

            NULLIF(
                LTRIM(RTRIM(
                    CAST(ia.issuer_indiv_identifier AS VARCHAR(200))
                )),
                ''
            ),

            NULLIF(
                LTRIM(RTRIM(
                    CAST(ia.exchg_assigned_enrollee_id AS VARCHAR(200))
                )),
                ''
            )

        ) IS NOT NULL
),


/* ============================================================
   CANDIDATE MATCHES

   JOIN IS ENROLLEE-FIRST.

   Policy ID is NOT required to join.
   ============================================================ */

candidates AS
(
    SELECT

        /* --------------------
           FFM
           -------------------- */

        f.FFM_Enrollee_ID,
        f.FFM_Policy_ID,
        f.FFM_Issuer,
        f.FFM_Coverage_Year,

        f.FFM_Enrollment_Status_Raw,
        f.FFM_Enrollee_Status_Raw,

        f.FFM_Status_Raw,
        f.FFM_Status_Norm,

        f.FFM_Event_Date,

        f.benefit_effective_date
            AS FFM_Benefit_Effective_Date,

        f.benefit_end_date
            AS FFM_Benefit_End_Date,

        f.enrollment_create_date
            AS FFM_Create_Date,

        f.enrollment_last_update_date
            AS FFM_Last_Update_Date,

        f.household_id,

        f.person_type,

        f.relationship_type,


        /* --------------------
           INBOUND
           -------------------- */

        i.Inbound_Enrollee_ID,
        i.Inbound_Policy_ID,
        i.Inbound_Issuer,
        i.Inbound_Coverage_Year,

        i.Inbound_Status_Raw,
        i.Inbound_Status_Norm,

        i.Inbound_Event_Date,

        i.member_maint_effective_date,

        i.Inbound_File_Date,

        i.Folder_Year,
        i.Folder_Month,

        i.Source_File,

        i.household_or_employee_case_id,

        i.relationship
            AS Inbound_Relationship,


        /* ====================================================
           MATCH FLAGS
           ==================================================== */

        CASE
            WHEN f.FFM_Policy_ID = i.Inbound_Policy_ID
                THEN 'YES'
            ELSE 'NO'
        END AS Policy_Match_Flag,


        CASE
            WHEN f.FFM_Issuer = i.Inbound_Issuer
                THEN 'YES'
            ELSE 'NO'
        END AS Issuer_Match_Flag,


        CASE

            WHEN f.FFM_Status_Norm = i.Inbound_Status_Norm
             AND f.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'

                THEN 'YES'

            ELSE 'NO'

        END AS Status_Match_Flag,


        /* ====================================================
           DATE DIFFERENCE
           ==================================================== */

        CASE

            WHEN f.FFM_Event_Date IS NOT NULL
             AND i.Inbound_Event_Date IS NOT NULL

            THEN ABS(
                DATEDIFF(
                    DAY,
                    f.FFM_Event_Date,
                    i.Inbound_Event_Date
                )
            )

        END AS Date_Difference_Days,


        /* ====================================================
           MATCH RANK

           LOWER = BETTER
           ==================================================== */

        CASE

            /* Exact enrollee + policy */
            WHEN f.FFM_Policy_ID = i.Inbound_Policy_ID
                THEN 1


            /* Same issuer/status/exact date */
            WHEN f.FFM_Issuer = i.Inbound_Issuer
             AND f.FFM_Status_Norm = i.Inbound_Status_Norm
             AND f.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'
             AND f.FFM_Event_Date IS NOT NULL
             AND i.Inbound_Event_Date IS NOT NULL
             AND ABS(
                    DATEDIFF(
                        DAY,
                        f.FFM_Event_Date,
                        i.Inbound_Event_Date
                    )
                 ) = 0

                THEN 2


            /* Same issuer/status within 7 days */
            WHEN f.FFM_Issuer = i.Inbound_Issuer
             AND f.FFM_Status_Norm = i.Inbound_Status_Norm
             AND f.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'
             AND f.FFM_Event_Date IS NOT NULL
             AND i.Inbound_Event_Date IS NOT NULL
             AND ABS(
                    DATEDIFF(
                        DAY,
                        f.FFM_Event_Date,
                        i.Inbound_Event_Date
                    )
                 ) <= 7

                THEN 3


            /* Same issuer + same status */
            WHEN f.FFM_Issuer = i.Inbound_Issuer
             AND f.FFM_Status_Norm = i.Inbound_Status_Norm
             AND f.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'

                THEN 4


            /* Same issuer */
            WHEN f.FFM_Issuer = i.Inbound_Issuer
                THEN 5


            /* Cross issuer + same status + within 30 days */
            WHEN f.FFM_Status_Norm = i.Inbound_Status_Norm
             AND f.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'
             AND f.FFM_Event_Date IS NOT NULL
             AND i.Inbound_Event_Date IS NOT NULL
             AND ABS(
                    DATEDIFF(
                        DAY,
                        f.FFM_Event_Date,
                        i.Inbound_Event_Date
                    )
                 ) <= 30

                THEN 6


            /* Cross issuer + same status */
            WHEN f.FFM_Status_Norm = i.Inbound_Status_Norm
             AND f.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'

                THEN 7


            /* Same enrollee only */
            ELSE 8

        END AS rank_priority,


        i.inbound_row_id

    FROM ffm f

    INNER JOIN inbound i

        ON f.FFM_Enrollee_ID
         = i.Inbound_Enrollee_ID
),


/* ============================================================
   RANK BEST INBOUND CANDIDATE
   PER FFM ENROLLEE + POLICY
   ============================================================ */

ranked AS
(
    SELECT

        c.*,

        ROW_NUMBER() OVER
        (
            PARTITION BY
                c.FFM_Enrollee_ID,
                c.FFM_Policy_ID

            ORDER BY

                c.rank_priority ASC,

                CASE
                    WHEN c.Date_Difference_Days IS NULL
                        THEN 999999
                    ELSE c.Date_Difference_Days
                END ASC,

                c.inbound_row_id DESC
        ) AS rn

    FROM candidates c
),


best AS
(
    SELECT *
    FROM ranked
    WHERE rn = 1
),


/* ============================================================
   FINAL CLASSIFICATION
   ============================================================ */

final AS
(
    SELECT

        f.FFM_Enrollee_ID,
        f.FFM_Policy_ID,
        f.FFM_Issuer,
        f.FFM_Coverage_Year,

        f.FFM_Enrollment_Status_Raw,
        f.FFM_Enrollee_Status_Raw,

        f.FFM_Status_Raw,
        f.FFM_Status_Norm,

        f.FFM_Event_Date,

        f.household_id,
        f.person_type,
        f.relationship_type,


        b.Inbound_Enrollee_ID,
        b.Inbound_Policy_ID,
        b.Inbound_Issuer,

        CASE CAST(b.Inbound_Issuer AS VARCHAR(20))
            WHEN '82824' THEN 'Aetna'
            WHEN '83761' THEN 'Alliant'
            WHEN '70893' THEN 'Ambetter'
            WHEN '45334' THEN 'Anthem'
            WHEN '49046' THEN 'Anthem'
            WHEN '83502' THEN 'BEST'
            WHEN '60224' THEN 'CareSrc'
            WHEN '15105' THEN 'Cigna'
            WHEN '86637' THEN 'Delta'
            WHEN '68806' THEN 'DeltaQ'
            WHEN '64357' THEN 'Dominion'
            WHEN '37301' THEN 'EHP Dental'
            WHEN '37001' THEN 'Humana'
            WHEN '89942' THEN 'Kaiser'
            WHEN '58081' THEN 'Oscar'
            WHEN '13535' THEN 'UHC'
            WHEN '43802' THEN 'UHC'
            ELSE NULL
        END AS ISSUER,

        CASE
            WHEN CAST(b.Inbound_Issuer AS VARCHAR(20))
                 IN ('83502','86637','68806','64357','37301','37001')
                THEN 'Dental'
            WHEN b.Inbound_Issuer IS NOT NULL
                THEN 'Health'
            ELSE NULL
        END AS Issuer_Type,

        b.Inbound_Coverage_Year,

        b.Inbound_Status_Raw,
        b.Inbound_Status_Norm,

        b.Inbound_Event_Date,

        b.member_maint_effective_date,

        b.Inbound_File_Date,

        b.Folder_Year,
        b.Folder_Month,

        b.Source_File,


        COALESCE(
            b.Policy_Match_Flag,
            'NO'
        ) AS Policy_Match_Flag,


        COALESCE(
            b.Issuer_Match_Flag,
            'NO'
        ) AS Issuer_Match_Flag,


        COALESCE(
            b.Status_Match_Flag,
            'NO'
        ) AS Status_Match_Flag,


        b.Date_Difference_Days,


        CASE

            WHEN b.Inbound_Enrollee_ID IS NULL

                THEN 'NO_INBOUND_ENROLLEE_EVIDENCE'


            WHEN b.Policy_Match_Flag = 'YES'

                THEN 'EXACT_ENROLLEE_POLICY_MATCH'


            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Status_Match_Flag = 'YES'
             AND b.Date_Difference_Days IS NOT NULL
             AND b.Date_Difference_Days <= 7

                THEN 'SAME_TRANSACTION_DIFFERENT_POLICY'


            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Status_Match_Flag = 'YES'

                THEN 'SAME_LIFECYCLE_DIFFERENT_POLICY'


            WHEN b.Issuer_Match_Flag = 'NO'
             AND b.Status_Match_Flag = 'YES'

                THEN 'CROSS_ISSUER_TRANSITION'


            WHEN b.Inbound_Enrollee_ID IS NOT NULL

                THEN 'ENROLLEE_FOUND_DIFFERENT_LIFECYCLE'


            ELSE 'NO_INBOUND_ENROLLEE_EVIDENCE'

        END AS Match_Level,


        CASE

            WHEN b.Inbound_Enrollee_ID IS NULL
                THEN 'NO_MATCH'


            WHEN b.Policy_Match_Flag = 'YES'
                THEN 'VERY_STRONG'


            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Status_Match_Flag = 'YES'
             AND b.Date_Difference_Days IS NOT NULL
             AND b.Date_Difference_Days <= 7

                THEN 'VERY_STRONG'


            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Status_Match_Flag = 'YES'
             AND b.Date_Difference_Days IS NOT NULL
             AND b.Date_Difference_Days <= 30

                THEN 'STRONG'


            WHEN b.Issuer_Match_Flag = 'NO'
             AND b.Status_Match_Flag = 'YES'

                THEN 'CROSS_ISSUER'


            WHEN b.Inbound_Enrollee_ID IS NOT NULL

                THEN 'WEAK'


            ELSE 'NO_MATCH'

        END AS Match_Score,


        CASE

            WHEN b.Inbound_Enrollee_ID IS NULL

                THEN 'NO_INBOUND_EVIDENCE'


            WHEN b.Policy_Match_Flag = 'YES'

                THEN 'EXACT_POLICY_MATCH'


            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Status_Match_Flag = 'YES'
             AND b.Date_Difference_Days IS NOT NULL
             AND b.Date_Difference_Days <= 30

                THEN 'POTENTIAL_POLICY_IDENTIFIER_MISMATCH'


            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Policy_Match_Flag = 'NO'

                THEN 'SAME_ISSUER_DIFFERENT_POLICY'


            WHEN b.Issuer_Match_Flag = 'NO'
             AND b.Status_Match_Flag = 'YES'

                THEN 'CROSS_ISSUER_TRANSITION'


            WHEN b.Inbound_Enrollee_ID IS NOT NULL

                THEN 'DIFFERENT_LIFECYCLE'


            ELSE 'NO_INBOUND_EVIDENCE'

        END AS Root_Cause_Category,

        CASE
            WHEN b.Inbound_Enrollee_ID IS NULL
                THEN 'NO INBOUND'

            WHEN b.Policy_Match_Flag = 'YES'
                THEN 'FULL MATCH'

            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Status_Match_Flag = 'YES'
             AND b.Date_Difference_Days IS NOT NULL
             AND b.Date_Difference_Days <= 30
                THEN 'POLICY ID MISMATCH'

            WHEN b.Issuer_Match_Flag = 'YES'
             AND b.Policy_Match_Flag = 'NO'
                THEN 'Same Issuer, Different Policy'

            WHEN b.Issuer_Match_Flag = 'NO'
             AND b.Status_Match_Flag = 'YES'
                THEN 'X Issuer, same Status'

            WHEN b.Issuer_Match_Flag = 'NO'
             AND b.Status_Match_Flag = 'NO'
             AND b.Inbound_Enrollee_ID IS NOT NULL
                THEN 'X Issuer, different Status'

            WHEN b.Inbound_Enrollee_ID IS NOT NULL
                THEN 'Different Lifecycle'

            ELSE 'NO INBOUND'
        END AS Hari_Root_Cause_Category

    FROM ffm f

    LEFT JOIN best b

        ON f.FFM_Enrollee_ID
         = b.FFM_Enrollee_ID

       AND f.FFM_Policy_ID
         = b.FFM_Policy_ID
)


SELECT *
INTO #final_results
FROM final;


/* ============================================================
   RESULT SET 1
   FULL DETAIL
   ============================================================ */

SELECT *

FROM #final_results

ORDER BY

    CASE Root_Cause_Category

        WHEN 'EXACT_POLICY_MATCH'
            THEN 1

        WHEN 'POTENTIAL_POLICY_IDENTIFIER_MISMATCH'
            THEN 2

        WHEN 'SAME_ISSUER_DIFFERENT_POLICY'
            THEN 3

        WHEN 'CROSS_ISSUER_TRANSITION'
            THEN 4

        WHEN 'DIFFERENT_LIFECYCLE'
            THEN 5

        ELSE 6

    END,

    FFM_Enrollee_ID,
    FFM_Policy_ID;


/* ============================================================
   RESULT SET 2
   MATCH LEVEL SUMMARY
   ============================================================ */

SELECT

    Match_Level,

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
        AS Distinct_FFM_Policies,

    CAST(
        100.0
        *
        COUNT(
            DISTINCT CONCAT(
                FFM_Enrollee_ID,
                '|',
                FFM_Policy_ID
            )
        )
        /
        NULLIF(
            (
                SELECT COUNT(
                    DISTINCT CONCAT(
                        FFM_Enrollee_ID,
                        '|',
                        FFM_Policy_ID
                    )
                )
                FROM #final_results
            ),
            0
        )
        AS DECIMAL(8,2)
    ) AS Percentage

FROM #final_results

GROUP BY
    Match_Level

ORDER BY
    Distinct_FFM_Pairs DESC;


/* ============================================================
   RESULT SET 3
   ROOT CAUSE SUMMARY
   ============================================================ */

SELECT

    Root_Cause_Category,

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
        AS Distinct_FFM_Policies,

    COUNT(DISTINCT Inbound_Policy_ID)
        AS Distinct_Inbound_Policies,

    CAST(
        100.0
        *
        COUNT(
            DISTINCT CONCAT(
                FFM_Enrollee_ID,
                '|',
                FFM_Policy_ID
            )
        )
        /
        NULLIF(
            (
                SELECT COUNT(
                    DISTINCT CONCAT(
                        FFM_Enrollee_ID,
                        '|',
                        FFM_Policy_ID
                    )
                )
                FROM #final_results
            ),
            0
        )
        AS DECIMAL(8,2)
    ) AS Percentage

FROM #final_results

GROUP BY
    Root_Cause_Category

ORDER BY
    Distinct_FFM_Pairs DESC;


/* ============================================================
   RESULT SET 4
   POTENTIAL POLICY IDENTIFIER MISMATCH
   ============================================================ */

SELECT

    COUNT(
        DISTINCT CONCAT(
            FFM_Enrollee_ID,
            '|',
            FFM_Policy_ID
        )
    ) AS Matched_Transaction_Relationships,

    COUNT(DISTINCT FFM_Enrollee_ID)
        AS Distinct_Enrollees,

    COUNT(DISTINCT FFM_Policy_ID)
        AS Distinct_FFM_Policies,

    COUNT(DISTINCT Inbound_Policy_ID)
        AS Distinct_Inbound_Policies

FROM #final_results

WHERE Root_Cause_Category =
      'POTENTIAL_POLICY_IDENTIFIER_MISMATCH';


/* ============================================================
   RESULT SET 5
   HARI BUSINESS ROOT CAUSE SUMMARY
   ============================================================ */

SELECT
    Hari_Root_Cause_Category,

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
        AS Distinct_FFM_Policies,

    COUNT(DISTINCT Inbound_Policy_ID)
        AS Distinct_Inbound_Policies,

    CAST(
        100.0
        *
        COUNT(
            DISTINCT CONCAT(
                FFM_Enrollee_ID,
                '|',
                FFM_Policy_ID
            )
        )
        /
        NULLIF(
            (
                SELECT COUNT(
                    DISTINCT CONCAT(
                        FFM_Enrollee_ID,
                        '|',
                        FFM_Policy_ID
                    )
                )
                FROM #final_results
            ),
            0
        )
        AS DECIMAL(8,2)
    ) AS Percentage

FROM #final_results

GROUP BY
    Hari_Root_Cause_Category

ORDER BY
    Distinct_FFM_Pairs DESC;


/* ============================================================
   DISCREPANCY LOOKUP FOR CIGNA NO INBOUND RECORDS
   Runs AFTER #final_results — does NOT modify it.
   Searches dbo.monthly_discrepancy_PY2025 and PY2026.
   ============================================================ */

DROP TABLE IF EXISTS #no_inbound_cigna;
DROP TABLE IF EXISTS #disc_combined;
DROP TABLE IF EXISTS #disc_detail;
DROP TABLE IF EXISTS #pair_level;

/* ---------- base population ---------- */

SELECT DISTINCT
    fr.FFM_Enrollee_ID,
    fr.FFM_Policy_ID,
    fr.FFM_Issuer,
    fr.FFM_Coverage_Year,
    fr.FFM_Enrollment_Status_Raw,
    fr.FFM_Enrollee_Status_Raw,
    fr.FFM_Status_Norm,
    fr.FFM_Event_Date,
    fr.Hari_Root_Cause_Category,
    LTRIM(RTRIM(CAST(fr.FFM_Enrollee_ID AS VARCHAR(100)))) AS enrollee_norm,
    LTRIM(RTRIM(CAST(fr.FFM_Policy_ID   AS VARCHAR(100)))) AS policy_norm,
    CONCAT(
        LTRIM(RTRIM(CAST(fr.FFM_Enrollee_ID AS VARCHAR(100)))),
        '|',
        LTRIM(RTRIM(CAST(fr.FFM_Policy_ID AS VARCHAR(100))))
    ) AS pair_key
INTO #no_inbound_cigna
FROM #final_results fr
WHERE LTRIM(RTRIM(CAST(fr.FFM_Issuer AS VARCHAR(20)))) = '15105'
  AND fr.Hari_Root_Cause_Category = 'NO INBOUND';

/* ---------- combined discrepancy ---------- */

SELECT
    CAST(2025 AS INT) AS Discrepancy_Table_Year,
    d.Coverage_Year,
    d.GAA_HIOS_ID,
    d.Exchange_Assigned_Policy_ID,
    d.Exchange_Assigned_Member_ID,
    d.Issuer_Assigned_Member_ID,
    d.Discrepancy_Reason_Code,
    d.Discrepancy_Reason_Text,
    d.HIX_Value,
    d.Issuer_Value,
    d.Date_of_Discrepancy,
    d.Recon_File_Name,
    d.GAA_Issuer_File_Name,
    d.GAA_Issuer_File_Datetime,
    d.Autofixed_by_HIX,
    d.Assignee,
    d.Enrollment_Status,
    LTRIM(RTRIM(CAST(d.Exchange_Assigned_Member_ID AS VARCHAR(100)))) AS disc_member_norm,
    LTRIM(RTRIM(CAST(d.Exchange_Assigned_Policy_ID AS VARCHAR(100)))) AS disc_policy_norm
INTO #disc_combined
FROM dbo.monthly_discrepancy_PY2025 d

UNION ALL

SELECT
    CAST(2026 AS INT),
    d.Coverage_Year,
    d.GAA_HIOS_ID,
    d.Exchange_Assigned_Policy_ID,
    d.Exchange_Assigned_Member_ID,
    d.Issuer_Assigned_Member_ID,
    d.Discrepancy_Reason_Code,
    d.Discrepancy_Reason_Text,
    d.HIX_Value,
    d.Issuer_Value,
    d.Date_of_Discrepancy,
    d.Recon_File_Name,
    d.GAA_Issuer_File_Name,
    d.GAA_Issuer_File_Datetime,
    d.Autofixed_by_HIX,
    d.Assignee,
    d.Enrollment_Status,
    LTRIM(RTRIM(CAST(d.Exchange_Assigned_Member_ID AS VARCHAR(100)))),
    LTRIM(RTRIM(CAST(d.Exchange_Assigned_Policy_ID AS VARCHAR(100))))
FROM dbo.monthly_discrepancy_PY2026 d;

/* ---------- LEFT JOIN on enrollee: preserve every NO INBOUND record ---------- */

SELECT
    n.FFM_Enrollee_ID,
    n.FFM_Policy_ID,
    n.FFM_Issuer,
    n.FFM_Coverage_Year,
    n.FFM_Enrollment_Status_Raw,
    n.FFM_Enrollee_Status_Raw,
    n.FFM_Status_Norm,
    n.FFM_Event_Date,
    n.Hari_Root_Cause_Category,
    n.pair_key,

    /* --- row-level flags --- */

    CASE
        WHEN n.enrollee_norm IS NOT NULL
         AND dc.disc_member_norm IS NOT NULL
         AND n.enrollee_norm = dc.disc_member_norm
         AND n.policy_norm IS NOT NULL
         AND dc.disc_policy_norm IS NOT NULL
         AND n.policy_norm = dc.disc_policy_norm
            THEN 'YES'
        ELSE 'NO'
    END AS EXACT_ENROLLEE_POLICY_FOUND,

    CASE
        WHEN dc.disc_member_norm IS NOT NULL
            THEN 'YES'
        ELSE 'NO'
    END AS ENROLLEE_FOUND_IN_DISCREPANCY,

    CASE
        WHEN dc.disc_member_norm IS NOT NULL
         AND (
              n.policy_norm IS NULL
              OR dc.disc_policy_norm IS NULL
              OR n.policy_norm <> dc.disc_policy_norm
         )
            THEN 'YES'
        ELSE 'NO'
    END AS ENROLLEE_DIFFERENT_POLICY_FOUND,

    dc.Discrepancy_Table_Year,
    dc.Coverage_Year  AS Discrepancy_Coverage_Year,
    dc.GAA_HIOS_ID,
    dc.Exchange_Assigned_Policy_ID,
    dc.Exchange_Assigned_Member_ID,
    dc.Issuer_Assigned_Member_ID,
    dc.Discrepancy_Reason_Code,
    dc.Discrepancy_Reason_Text,
    dc.HIX_Value,
    dc.Issuer_Value,
    dc.Date_of_Discrepancy,
    dc.Recon_File_Name,
    dc.GAA_Issuer_File_Name,
    dc.GAA_Issuer_File_Datetime,
    dc.Autofixed_by_HIX,
    dc.Assignee,
    dc.Enrollment_Status AS Discrepancy_Enrollment_Status

INTO #disc_detail

FROM #no_inbound_cigna n

LEFT JOIN #disc_combined dc
    ON  n.enrollee_norm IS NOT NULL
    AND dc.disc_member_norm IS NOT NULL
    AND n.enrollee_norm = dc.disc_member_norm;


/* ---------- pair-level precedence: EXACT > ENROLLEE_DIFFERENT_POLICY > NOT_FOUND ---------- */

SELECT
    pair_key,

    MAX(CASE
        WHEN EXACT_ENROLLEE_POLICY_FOUND = 'YES' THEN 1
        ELSE 0
    END) AS has_exact,

    MAX(CASE
        WHEN ENROLLEE_FOUND_IN_DISCREPANCY = 'YES' THEN 1
        ELSE 0
    END) AS has_enrollee,

    CASE
        WHEN MAX(CASE WHEN EXACT_ENROLLEE_POLICY_FOUND = 'YES' THEN 1 ELSE 0 END) = 1
            THEN 'EXACT'
        WHEN MAX(CASE WHEN ENROLLEE_FOUND_IN_DISCREPANCY = 'YES' THEN 1 ELSE 0 END) = 1
            THEN 'ENROLLEE_DIFFERENT_POLICY'
        ELSE 'NOT_FOUND'
    END AS pair_category

INTO #pair_level

FROM #disc_detail
GROUP BY pair_key;


/* ============================================================
   OUTPUT 1 — FULL DETAIL
   ============================================================ */

SELECT
    d.FFM_Enrollee_ID,
    d.FFM_Policy_ID,
    d.FFM_Issuer,
    d.FFM_Coverage_Year,
    d.FFM_Enrollment_Status_Raw,
    d.FFM_Enrollee_Status_Raw,
    d.FFM_Status_Norm,
    d.FFM_Event_Date,
    d.Hari_Root_Cause_Category,

    d.EXACT_ENROLLEE_POLICY_FOUND,
    d.ENROLLEE_FOUND_IN_DISCREPANCY,
    d.ENROLLEE_DIFFERENT_POLICY_FOUND,

    d.Discrepancy_Table_Year,
    d.Discrepancy_Coverage_Year,
    d.GAA_HIOS_ID,
    d.Exchange_Assigned_Policy_ID,
    d.Exchange_Assigned_Member_ID,
    d.Issuer_Assigned_Member_ID,
    d.Discrepancy_Reason_Code,
    d.Discrepancy_Reason_Text,
    d.HIX_Value,
    d.Issuer_Value,
    d.Date_of_Discrepancy,
    d.Recon_File_Name,
    d.GAA_Issuer_File_Name,
    d.GAA_Issuer_File_Datetime,
    d.Autofixed_by_HIX,
    d.Assignee,
    d.Discrepancy_Enrollment_Status

FROM #disc_detail d

ORDER BY
    d.FFM_Enrollee_ID,
    d.FFM_Policy_ID,
    d.EXACT_ENROLLEE_POLICY_FOUND DESC,
    d.Discrepancy_Table_Year,
    d.Date_of_Discrepancy;


/* ============================================================
   OUTPUT 2 — SUMMARY WITH PAIR-LEVEL PRECEDENCE
   Total = Exact + Enrollee_Different_Policy + Not_Found
   ============================================================ */

SELECT
    COUNT(*)                                                          AS Total_No_Inbound_Pairs,
    SUM(CASE WHEN pair_category = 'EXACT'                     THEN 1 ELSE 0 END) AS Exact_Enrollee_Policy_Found_In_Discrepancy,
    SUM(CASE WHEN pair_category = 'ENROLLEE_DIFFERENT_POLICY' THEN 1 ELSE 0 END) AS Enrollee_Found_Different_Policy,
    SUM(CASE WHEN pair_category = 'NOT_FOUND'                 THEN 1 ELSE 0 END) AS Not_Found_In_Discrepancy,
    (SELECT COUNT(DISTINCT d.pair_key)
     FROM #disc_detail d
     WHERE d.EXACT_ENROLLEE_POLICY_FOUND = 'YES'
       AND UPPER(LTRIM(RTRIM(CAST(d.Autofixed_by_HIX AS VARCHAR(20)))))
           IN ('Y', 'YES'))                                           AS Exact_Matches_Autofixed_By_HIX
FROM #pair_level;


/* ============================================================
   OUTPUT 3 — REASON SUMMARY (matched records only)
   ============================================================ */

SELECT
    d.Discrepancy_Reason_Code,
    d.Discrepancy_Reason_Text,
    d.Autofixed_by_HIX,

    COUNT(DISTINCT d.pair_key)        AS Distinct_No_Inbound_Pairs,
    COUNT(DISTINCT d.FFM_Enrollee_ID) AS Distinct_Enrollees,
    COUNT(DISTINCT d.FFM_Policy_ID)   AS Distinct_Policies

FROM #disc_detail d
WHERE d.ENROLLEE_FOUND_IN_DISCREPANCY = 'YES'

GROUP BY
    d.Discrepancy_Reason_Code,
    d.Discrepancy_Reason_Text,
    d.Autofixed_by_HIX

ORDER BY
    Distinct_No_Inbound_Pairs DESC;


/* ============================================================
   OUTPUT 4 — RECOVERED / EXPLAINED DETAIL
   Only EXACT enrollee + policy matches.
   ============================================================ */

SELECT
    d.FFM_Enrollee_ID,
    d.FFM_Policy_ID,
    d.FFM_Issuer,
    d.FFM_Coverage_Year,
    d.FFM_Enrollment_Status_Raw,
    d.FFM_Enrollee_Status_Raw,
    d.FFM_Status_Norm,
    d.FFM_Event_Date,
    d.Hari_Root_Cause_Category,

    d.Discrepancy_Table_Year,
    d.Discrepancy_Coverage_Year,
    d.GAA_HIOS_ID,
    d.Exchange_Assigned_Policy_ID,
    d.Exchange_Assigned_Member_ID,
    d.Issuer_Assigned_Member_ID,
    d.Discrepancy_Reason_Code,
    d.Discrepancy_Reason_Text,
    d.HIX_Value,
    d.Issuer_Value,
    d.Date_of_Discrepancy,
    d.Recon_File_Name,
    d.GAA_Issuer_File_Name,
    d.GAA_Issuer_File_Datetime,
    d.Autofixed_by_HIX,
    d.Assignee,
    d.Discrepancy_Enrollment_Status

FROM #disc_detail d
WHERE d.EXACT_ENROLLEE_POLICY_FOUND = 'YES'

ORDER BY
    d.FFM_Enrollee_ID,
    d.FFM_Policy_ID,
    d.Date_of_Discrepancy;


/* ============================================================
   OUTPUT 5 — SECONDARY REVIEW: ENROLLEE FOUND, DIFFERENT POLICY
   Show both FFM_Policy_ID and Exchange_Assigned_Policy_ID.
   ============================================================ */

SELECT
    d.FFM_Enrollee_ID,
    d.FFM_Policy_ID,
    d.FFM_Issuer,
    d.FFM_Coverage_Year,
    d.FFM_Enrollment_Status_Raw,
    d.FFM_Enrollee_Status_Raw,
    d.FFM_Status_Norm,
    d.FFM_Event_Date,
    d.Hari_Root_Cause_Category,

    d.Exchange_Assigned_Policy_ID,
    d.Exchange_Assigned_Member_ID,
    d.Issuer_Assigned_Member_ID,

    d.Discrepancy_Table_Year,
    d.Discrepancy_Coverage_Year,
    d.GAA_HIOS_ID,
    d.Discrepancy_Reason_Code,
    d.Discrepancy_Reason_Text,
    d.HIX_Value,
    d.Issuer_Value,
    d.Date_of_Discrepancy,
    d.Recon_File_Name,
    d.GAA_Issuer_File_Name,
    d.GAA_Issuer_File_Datetime,
    d.Autofixed_by_HIX,
    d.Assignee,
    d.Discrepancy_Enrollment_Status

FROM #disc_detail d

INNER JOIN #pair_level p
    ON d.pair_key = p.pair_key
   AND p.pair_category = 'ENROLLEE_DIFFERENT_POLICY'

WHERE d.ENROLLEE_DIFFERENT_POLICY_FOUND = 'YES'

ORDER BY
    d.FFM_Enrollee_ID,
    d.FFM_Policy_ID,
    d.Date_of_Discrepancy;


/* ============================================================
   OUTPUT 6 — STILL UNEXPLAINED
   Enrollee not found anywhere in PY2025 or PY2026 discrepancy.
   ============================================================ */

SELECT
    n.FFM_Enrollee_ID,
    n.FFM_Policy_ID,
    n.FFM_Issuer,
    n.FFM_Coverage_Year,
    n.FFM_Enrollment_Status_Raw,
    n.FFM_Enrollee_Status_Raw,
    n.FFM_Status_Norm,
    n.FFM_Event_Date,
    n.Hari_Root_Cause_Category

FROM #no_inbound_cigna n

INNER JOIN #pair_level p
    ON n.pair_key = p.pair_key
   AND p.pair_category = 'NOT_FOUND'

ORDER BY
    n.FFM_Enrollee_ID,
    n.FFM_Policy_ID;


/* ============================================================
   FINAL REPORTING LAYER
   Unique oldest exact enrollee + policy discrepancy row.
   Does NOT modify #disc_detail or any prior matching logic.
   ============================================================ */

DROP TABLE IF EXISTS #unique_oldest_exact;

SELECT
    x.FFM_Enrollee_ID,
    x.FFM_Policy_ID,
    x.FFM_Issuer,
    x.FFM_Coverage_Year,
    x.FFM_Enrollment_Status_Raw,
    x.FFM_Enrollee_Status_Raw,
    x.FFM_Status_Norm,
    x.FFM_Event_Date,
    x.Hari_Root_Cause_Category,
    x.pair_key,
    x.EXACT_ENROLLEE_POLICY_FOUND,
    x.ENROLLEE_FOUND_IN_DISCREPANCY,
    x.ENROLLEE_DIFFERENT_POLICY_FOUND,
    x.Discrepancy_Table_Year,
    x.Discrepancy_Coverage_Year,
    x.GAA_HIOS_ID,
    x.Exchange_Assigned_Policy_ID,
    x.Exchange_Assigned_Member_ID,
    x.Issuer_Assigned_Member_ID,
    x.Discrepancy_Reason_Code,
    x.Discrepancy_Reason_Text,
    x.HIX_Value,
    x.Issuer_Value,
    x.Date_of_Discrepancy,
    x.Recon_File_Name,
    x.GAA_Issuer_File_Name,
    x.GAA_Issuer_File_Datetime,
    x.Autofixed_by_HIX,
    x.Assignee,
    x.Discrepancy_Enrollment_Status
INTO #unique_oldest_exact
FROM
(
    SELECT
        d.*,
        ROW_NUMBER() OVER
        (
            PARTITION BY
                d.FFM_Enrollee_ID,
                d.FFM_Policy_ID
            ORDER BY
                d.Date_of_Discrepancy ASC,
                d.GAA_Issuer_File_Datetime ASC,
                d.Recon_File_Name ASC
        ) AS rn
    FROM #disc_detail d
    WHERE d.EXACT_ENROLLEE_POLICY_FOUND = 'YES'
) x
WHERE x.rn = 1;


/* ============================================================
   FINAL RESULT SET 1
   UNIQUE OLDEST EXACT MATCH DETAIL
   One row per FFM_Enrollee_ID + FFM_Policy_ID
   ============================================================ */

SELECT *
FROM #unique_oldest_exact
ORDER BY
    FFM_Enrollee_ID,
    FFM_Policy_ID;


/* ============================================================
   FINAL RESULT SET 2
   UNIQUE COUNTS
   ============================================================ */

SELECT
    COUNT(*) AS Unique_Enrollee_Policy_Pairs,
    COUNT(DISTINCT FFM_Enrollee_ID) AS Unique_Enrollees,
    COUNT(DISTINCT FFM_Policy_ID) AS Unique_Policies
FROM #unique_oldest_exact;


/* ============================================================
   FINAL RESULT SET 3
   REASON SUMMARY FROM THE ONE OLDEST ROW PER PAIR
   ============================================================ */

SELECT
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    Autofixed_by_HIX,
    COUNT(*) AS Unique_Enrollee_Policy_Pairs,
    COUNT(DISTINCT FFM_Enrollee_ID) AS Unique_Enrollees,
    COUNT(DISTINCT FFM_Policy_ID) AS Unique_Policies
FROM #unique_oldest_exact
GROUP BY
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    Autofixed_by_HIX
ORDER BY
    Unique_Enrollee_Policy_Pairs DESC;
