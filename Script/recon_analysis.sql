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
   NEW SECTION: MONTHLY DISCREPANCY RECONCILIATION
   FOR CIGNA NO_INBOUND RECORDS ONLY

   Investigates whether NO_INBOUND FFM pairs appear in:
      dbo.monthly_discrepancy_PY2025
      dbo.monthly_discrepancy_PY2026

   Does NOT change #final_results or any prior result sets.
   ============================================================ */

DROP TABLE IF EXISTS #no_inbound_base;
DROP TABLE IF EXISTS #recon_combined;
DROP TABLE IF EXISTS #recon_detail;
DROP TABLE IF EXISTS #recon_pair_flags;


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

    LTRIM(RTRIM(CAST(FFM_Enrollee_ID AS VARCHAR(100))))
        AS FFM_Enrollee_ID_Norm,

    LTRIM(RTRIM(CAST(FFM_Policy_ID AS VARCHAR(100))))
        AS FFM_Policy_ID_Norm,

    CONCAT(
        LTRIM(RTRIM(CAST(FFM_Enrollee_ID AS VARCHAR(100)))),
        '|',
        LTRIM(RTRIM(CAST(FFM_Policy_ID AS VARCHAR(100))))
    ) AS FFM_Pair_Key

INTO #no_inbound_base

FROM #final_results

WHERE
    Root_Cause_Category = 'NO_INBOUND_EVIDENCE'
    OR Hari_Root_Cause_Category = 'NO INBOUND';


SELECT

    r.Recon_Table_Year,
    r.Coverage_Year
        AS Recon_Coverage_Year,

    CAST(r.GAA_HIOS_ID AS VARCHAR(20))
        AS GAA_HIOS_ID,

    r.GAA_Load_Datetime,
    r.GAA_Issuer_File_Name,
    r.GAA_Issuer_File_Datetime,

    CAST(r.Exchange_Assigned_Policy_ID AS VARCHAR(100))
        AS Exchange_Assigned_Policy_ID,

    r.Plan_ID,
    r.Member_Last_Name,
    r.Member_First_Name,

    CAST(r.Exchange_Assigned_Member_ID AS VARCHAR(100))
        AS Exchange_Assigned_Member_ID,

    CAST(r.Issuer_Assigned_Member_ID AS VARCHAR(100))
        AS Issuer_Assigned_Member_ID,

    r.Subscriber_Last_Name,
    r.Subscriber_First_Name,

    CAST(r.Exchange_Assigned_Subscriber_ID AS VARCHAR(100))
        AS Exchange_Assigned_Subscriber_ID,

    CAST(r.Issuer_Assigned_Subscriber_ID AS VARCHAR(100))
        AS Issuer_Assigned_Subscriber_ID,

    r.Discrepancy_Reason_Code,
    r.Discrepancy_Reason_Text,
    r.HIX_Value,
    r.Issuer_Value,
    r.Date_of_Discrepancy,
    r.Recon_File_Name,
    r.Autofixed_by_HIX,
    r.Assignee,
    r.Enrollment_Status,

    LTRIM(RTRIM(CAST(r.Exchange_Assigned_Member_ID AS VARCHAR(100))))
        AS Recon_Member_ID_Norm,

    LTRIM(RTRIM(CAST(r.Exchange_Assigned_Policy_ID AS VARCHAR(100))))
        AS Recon_Policy_ID_Norm,

    CASE

        WHEN UPPER(
            LTRIM(RTRIM(CAST(r.Enrollment_Status AS VARCHAR(50))))
        ) = 'CONFIRM'
            THEN 'CONFIRM'

        WHEN UPPER(
            LTRIM(RTRIM(CAST(r.Enrollment_Status AS VARCHAR(50))))
        ) IN ('CANCEL', 'CANCELLED', 'CANCELED')
            THEN 'CANCEL'

        WHEN UPPER(
            LTRIM(RTRIM(CAST(r.Enrollment_Status AS VARCHAR(50))))
        ) IN ('TERM', 'TERMINATED')
            THEN 'TERM'

        ELSE 'STATUS_MAPPING_REVIEW'

    END AS Recon_Status_Norm

INTO #recon_combined

FROM
(
    SELECT
        CAST(2025 AS INT) AS Recon_Table_Year,
        d.Coverage_Year,
        d.GAA_HIOS_ID,
        d.GAA_Load_Datetime,
        d.GAA_Issuer_File_Name,
        d.GAA_Issuer_File_Datetime,
        d.Exchange_Assigned_Policy_ID,
        d.Plan_ID,
        d.Member_Last_Name,
        d.Member_First_Name,
        d.Exchange_Assigned_Member_ID,
        d.Issuer_Assigned_Member_ID,
        d.Subscriber_Last_Name,
        d.Subscriber_First_Name,
        d.Exchange_Assigned_Subscriber_ID,
        d.Issuer_Assigned_Subscriber_ID,
        d.Discrepancy_Reason_Code,
        d.Discrepancy_Reason_Text,
        d.HIX_Value,
        d.Issuer_Value,
        d.Date_of_Discrepancy,
        d.Recon_File_Name,
        d.Autofixed_by_HIX,
        d.Assignee,
        d.Enrollment_Status
    FROM dbo.monthly_discrepancy_PY2025 d

    UNION ALL

    SELECT
        CAST(2026 AS INT) AS Recon_Table_Year,
        d.Coverage_Year,
        d.GAA_HIOS_ID,
        d.GAA_Load_Datetime,
        d.GAA_Issuer_File_Name,
        d.GAA_Issuer_File_Datetime,
        d.Exchange_Assigned_Policy_ID,
        d.Plan_ID,
        d.Member_Last_Name,
        d.Member_First_Name,
        d.Exchange_Assigned_Member_ID,
        d.Issuer_Assigned_Member_ID,
        d.Subscriber_Last_Name,
        d.Subscriber_First_Name,
        d.Exchange_Assigned_Subscriber_ID,
        d.Issuer_Assigned_Subscriber_ID,
        d.Discrepancy_Reason_Code,
        d.Discrepancy_Reason_Text,
        d.HIX_Value,
        d.Issuer_Value,
        d.Date_of_Discrepancy,
        d.Recon_File_Name,
        d.Autofixed_by_HIX,
        d.Assignee,
        d.Enrollment_Status
    FROM dbo.monthly_discrepancy_PY2026 d
) r;


SELECT

    b.FFM_Enrollee_ID,
    b.FFM_Policy_ID,
    b.FFM_Issuer,
    b.FFM_Coverage_Year,
    b.FFM_Enrollment_Status_Raw,
    b.FFM_Enrollee_Status_Raw,
    b.FFM_Status_Norm,
    b.FFM_Event_Date,
    b.household_id,
    b.person_type,
    b.relationship_type,
    b.FFM_Pair_Key,

    r.Recon_Table_Year,
    r.Recon_Coverage_Year,
    r.GAA_HIOS_ID,
    r.GAA_HIOS_ID AS Recon_Issuer,
    r.GAA_Load_Datetime,
    r.GAA_Issuer_File_Name,
    r.GAA_Issuer_File_Datetime,
    r.Exchange_Assigned_Policy_ID,
    r.Plan_ID,
    r.Member_First_Name,
    r.Member_Last_Name,
    r.Exchange_Assigned_Member_ID,
    r.Issuer_Assigned_Member_ID,
    r.Subscriber_First_Name,
    r.Subscriber_Last_Name,
    r.Exchange_Assigned_Subscriber_ID,
    r.Issuer_Assigned_Subscriber_ID,
    r.Enrollment_Status,
    r.Discrepancy_Reason_Code,
    r.Discrepancy_Reason_Text,
    r.HIX_Value,
    r.Issuer_Value,
    r.Date_of_Discrepancy,
    r.Recon_File_Name,
    r.Autofixed_by_HIX,
    r.Assignee,

    CASE

        WHEN r.Recon_Member_ID_Norm IS NULL
         AND r.Recon_Policy_ID_Norm IS NULL
            THEN 'NO_RECON_MATCH'

        WHEN b.FFM_Enrollee_ID_Norm = r.Recon_Member_ID_Norm
         AND b.FFM_Policy_ID_Norm = r.Recon_Policy_ID_Norm
         AND b.FFM_Enrollee_ID_Norm IS NOT NULL
         AND b.FFM_Policy_ID_Norm IS NOT NULL
            THEN 'EXACT_MEMBER_POLICY'

        WHEN b.FFM_Enrollee_ID_Norm = r.Recon_Member_ID_Norm
         AND b.FFM_Enrollee_ID_Norm IS NOT NULL
            THEN 'MEMBER_MATCH_DIFFERENT_POLICY'

        WHEN b.FFM_Policy_ID_Norm = r.Recon_Policy_ID_Norm
         AND b.FFM_Policy_ID_Norm IS NOT NULL
            THEN 'POLICY_MATCH_DIFFERENT_MEMBER'

        ELSE 'NO_RECON_MATCH'

    END AS Recon_Match_Type,

    CASE

        WHEN r.Recon_Member_ID_Norm IS NULL
         AND r.Recon_Policy_ID_Norm IS NULL
            THEN NULL

        WHEN b.FFM_Coverage_Year IS NOT NULL
         AND r.Recon_Coverage_Year IS NOT NULL
         AND CAST(b.FFM_Coverage_Year AS VARCHAR(10))
             = CAST(r.Recon_Coverage_Year AS VARCHAR(10))
            THEN 'YES'

        WHEN b.FFM_Coverage_Year IS NOT NULL
         AND r.Recon_Coverage_Year IS NOT NULL
            THEN 'NO'

        ELSE NULL

    END AS Recon_Coverage_Year_Match,

    CASE

        WHEN r.Recon_Member_ID_Norm IS NULL
         AND r.Recon_Policy_ID_Norm IS NULL
            THEN NULL

        WHEN b.FFM_Issuer IS NOT NULL
         AND r.GAA_HIOS_ID IS NOT NULL
         AND LTRIM(RTRIM(CAST(b.FFM_Issuer AS VARCHAR(20))))
             = LTRIM(RTRIM(CAST(r.GAA_HIOS_ID AS VARCHAR(20))))
            THEN 'YES'

        WHEN b.FFM_Issuer IS NOT NULL
         AND r.GAA_HIOS_ID IS NOT NULL
            THEN 'NO'

        ELSE NULL

    END AS Recon_Issuer_Match,

    CASE

        WHEN r.Recon_Member_ID_Norm IS NULL
         AND r.Recon_Policy_ID_Norm IS NULL
            THEN NULL

        WHEN b.FFM_Status_Norm = r.Recon_Status_Norm
         AND b.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'
            THEN 'YES'

        WHEN b.FFM_Status_Norm <> 'STATUS_MAPPING_REVIEW'
         AND r.Recon_Status_Norm <> 'STATUS_MAPPING_REVIEW'
            THEN 'NO'

        ELSE NULL

    END AS Recon_Status_Match,

    CASE

        WHEN r.Recon_Member_ID_Norm IS NULL
         AND r.Recon_Policy_ID_Norm IS NULL
            THEN 'NOT_FOUND_IN_RECON'

        WHEN UPPER(
            LTRIM(RTRIM(CAST(r.Autofixed_by_HIX AS VARCHAR(20))))
        ) IN ('Y', 'YES')
            THEN 'FOUND_IN_RECON_AUTOFIXED'

        WHEN b.FFM_Enrollee_ID_Norm = r.Recon_Member_ID_Norm
         AND b.FFM_Policy_ID_Norm = r.Recon_Policy_ID_Norm
         AND b.FFM_Enrollee_ID_Norm IS NOT NULL
         AND b.FFM_Policy_ID_Norm IS NOT NULL
            THEN 'FOUND_IN_RECON_EXACT'

        WHEN b.FFM_Enrollee_ID_Norm = r.Recon_Member_ID_Norm
         AND b.FFM_Enrollee_ID_Norm IS NOT NULL
            THEN 'FOUND_IN_RECON_BY_MEMBER_DIFFERENT_POLICY'

        WHEN b.FFM_Policy_ID_Norm = r.Recon_Policy_ID_Norm
         AND b.FFM_Policy_ID_Norm IS NOT NULL
            THEN 'FOUND_IN_RECON_BY_POLICY_DIFFERENT_MEMBER'

        ELSE 'NOT_FOUND_IN_RECON'

    END AS Recon_Interpretation

INTO #recon_detail

FROM #no_inbound_base b

LEFT JOIN #recon_combined r

    ON (
        (
            b.FFM_Enrollee_ID_Norm IS NOT NULL
            AND r.Recon_Member_ID_Norm IS NOT NULL
            AND b.FFM_Enrollee_ID_Norm = r.Recon_Member_ID_Norm
        )
        OR
        (
            b.FFM_Policy_ID_Norm IS NOT NULL
            AND r.Recon_Policy_ID_Norm IS NOT NULL
            AND b.FFM_Policy_ID_Norm = r.Recon_Policy_ID_Norm
        )
    );


SELECT

    d.FFM_Pair_Key,

    MAX(
        CASE
            WHEN d.Recon_Match_Type = 'EXACT_MEMBER_POLICY'
                THEN 1
            ELSE 0
        END
    ) AS Has_Exact_Member_Policy,

    MAX(
        CASE
            WHEN d.Recon_Match_Type = 'MEMBER_MATCH_DIFFERENT_POLICY'
                THEN 1
            ELSE 0
        END
    ) AS Has_Member_Only,

    MAX(
        CASE
            WHEN d.Recon_Match_Type = 'POLICY_MATCH_DIFFERENT_MEMBER'
                THEN 1
            ELSE 0
        END
    ) AS Has_Policy_Only,

    MAX(
        CASE
            WHEN d.Recon_Match_Type <> 'NO_RECON_MATCH'
                THEN 1
            ELSE 0
        END
    ) AS Found_In_Any_Recon_Flag

INTO #recon_pair_flags

FROM #recon_detail d

GROUP BY
    d.FFM_Pair_Key;


/* ============================================================
   RECON RESULT SET 1
   FULL DETAIL
   ============================================================ */

SELECT

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

    Recon_Table_Year,
    Recon_Coverage_Year,
    GAA_HIOS_ID,
    Recon_Issuer,
    Exchange_Assigned_Policy_ID,
    Exchange_Assigned_Member_ID,
    Issuer_Assigned_Member_ID,
    Exchange_Assigned_Subscriber_ID,
    Issuer_Assigned_Subscriber_ID,
    Member_First_Name,
    Member_Last_Name,
    Subscriber_First_Name,
    Subscriber_Last_Name,
    Plan_ID,
    Enrollment_Status,
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    HIX_Value,
    Issuer_Value,
    Date_of_Discrepancy,
    Recon_File_Name,
    GAA_Issuer_File_Name,
    GAA_Issuer_File_Datetime,
    GAA_Load_Datetime,
    Autofixed_by_HIX,
    Assignee,

    Recon_Match_Type,
    Recon_Coverage_Year_Match,
    Recon_Issuer_Match,
    Recon_Status_Match,
    Recon_Interpretation

FROM #recon_detail

ORDER BY

    FFM_Enrollee_ID,
    FFM_Policy_ID,

    CASE Recon_Match_Type
        WHEN 'EXACT_MEMBER_POLICY' THEN 1
        WHEN 'MEMBER_MATCH_DIFFERENT_POLICY' THEN 2
        WHEN 'POLICY_MATCH_DIFFERENT_MEMBER' THEN 3
        ELSE 4
    END,

    Recon_Table_Year,
    Recon_Coverage_Year,
    Date_of_Discrepancy;


/* ============================================================
   RECON RESULT SET 2
   OVERALL SUMMARY
   ============================================================ */

SELECT

    (
        SELECT COUNT(*)
        FROM #no_inbound_base
    ) AS Total_Cigna_No_Inbound_Pairs,

    (
        SELECT COUNT(*)
        FROM #recon_pair_flags
        WHERE Found_In_Any_Recon_Flag = 1
    ) AS Found_In_Any_Recon,

    (
        SELECT COUNT(*)
        FROM #recon_pair_flags
        WHERE Has_Exact_Member_Policy = 1
    ) AS Exact_Member_Policy_Recon,

    (
        SELECT COUNT(*)
        FROM #recon_pair_flags
        WHERE Has_Member_Only = 1
    ) AS Member_Only_Recon,

    (
        SELECT COUNT(*)
        FROM #recon_pair_flags
        WHERE Has_Policy_Only = 1
    ) AS Policy_Only_Recon,

    (
        SELECT COUNT(*)
        FROM #recon_pair_flags
        WHERE Found_In_Any_Recon_Flag = 0
    ) AS Still_Not_Found_In_Recon;


/* ============================================================
   RECON RESULT SET 3
   DISCREPANCY REASON SUMMARY
   ============================================================ */

SELECT

    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    Autofixed_by_HIX,

    COUNT(DISTINCT FFM_Pair_Key)
        AS Distinct_FFM_Pairs

FROM #recon_detail

WHERE Recon_Match_Type <> 'NO_RECON_MATCH'

GROUP BY
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    Autofixed_by_HIX

ORDER BY
    Distinct_FFM_Pairs DESC,
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text;


/* ============================================================
   RECON RESULT SET 4
   CROSS-YEAR SUMMARY
   ============================================================ */

SELECT

    FFM_Coverage_Year,
    Recon_Table_Year,
    Recon_Coverage_Year,

    COUNT(DISTINCT FFM_Pair_Key)
        AS Distinct_FFM_Pairs

FROM #recon_detail

WHERE Recon_Match_Type <> 'NO_RECON_MATCH'

GROUP BY
    FFM_Coverage_Year,
    Recon_Table_Year,
    Recon_Coverage_Year

ORDER BY
    FFM_Coverage_Year,
    Recon_Table_Year,
    Recon_Coverage_Year;


/* ============================================================
   RECON RESULT SET 5
   AUTO-FIXED DETAIL
   ============================================================ */

SELECT

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

    Recon_Table_Year,
    Recon_Coverage_Year,
    GAA_HIOS_ID,
    Recon_Issuer,
    Exchange_Assigned_Policy_ID,
    Exchange_Assigned_Member_ID,
    Issuer_Assigned_Member_ID,
    Exchange_Assigned_Subscriber_ID,
    Issuer_Assigned_Subscriber_ID,
    Member_First_Name,
    Member_Last_Name,
    Subscriber_First_Name,
    Subscriber_Last_Name,
    Plan_ID,
    Enrollment_Status,
    Discrepancy_Reason_Code,
    Discrepancy_Reason_Text,
    HIX_Value,
    Issuer_Value,
    Date_of_Discrepancy,
    Recon_File_Name,
    GAA_Issuer_File_Name,
    GAA_Issuer_File_Datetime,
    GAA_Load_Datetime,
    Autofixed_by_HIX,
    Assignee,

    Recon_Match_Type,
    Recon_Coverage_Year_Match,
    Recon_Issuer_Match,
    Recon_Status_Match,
    Recon_Interpretation

FROM #recon_detail

WHERE Recon_Match_Type <> 'NO_RECON_MATCH'
  AND UPPER(
        LTRIM(RTRIM(CAST(Autofixed_by_HIX AS VARCHAR(20))))
      ) IN ('Y', 'YES')

ORDER BY
    FFM_Enrollee_ID,
    FFM_Policy_ID,
    Date_of_Discrepancy;


/* ============================================================
   RECON RESULT SET 6
   TRUE RESIDUAL NO INBOUND

   No inbound_automation evidence AND no recon member/policy match.
   ============================================================ */

SELECT

    b.FFM_Enrollee_ID,
    b.FFM_Policy_ID,
    b.FFM_Issuer,
    b.FFM_Coverage_Year,
    b.FFM_Enrollment_Status_Raw,
    b.FFM_Enrollee_Status_Raw,
    b.FFM_Status_Norm,
    b.FFM_Event_Date,
    b.household_id,
    b.person_type,
    b.relationship_type

FROM #no_inbound_base b

WHERE NOT EXISTS
(
    SELECT 1
    FROM #recon_combined r
    WHERE
        (
            b.FFM_Enrollee_ID_Norm IS NOT NULL
            AND r.Recon_Member_ID_Norm IS NOT NULL
            AND b.FFM_Enrollee_ID_Norm = r.Recon_Member_ID_Norm
        )
        OR
        (
            b.FFM_Policy_ID_Norm IS NOT NULL
            AND r.Recon_Policy_ID_Norm IS NOT NULL
            AND b.FFM_Policy_ID_Norm = r.Recon_Policy_ID_Norm
        )
)

ORDER BY
    b.FFM_Enrollee_ID,
    b.FFM_Policy_ID;
