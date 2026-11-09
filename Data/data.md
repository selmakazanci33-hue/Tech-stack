 .\.venv\Scripts\python.exe -m database.comparison.py2026_population_diagnostics
PY2026 POPULATION DIAGNOSTICS (dbo.Enrollments_TEST, coverage_year = 2026, aggregates only)
  column person_type_description: exists=False
  column insurance_type_description: exists=False
  column exchg_indiv_identifier: exists=False
  column coverage_year: exists=True
  column enrollment_id: exists=True
  column enrollee_id: exists=True
  column enrollment_status_description: exists=True
  column enrollee_status_description: exists=True
  column benefit_effective_date: exists=True
  column enrollment_last_update_date: exists=True
Rows=2330683 people=1320502 policies=1688696 pairs=2324955 exchange_identifier=DB_EXCHANGE_PERSON_IDENTIFIER_NOT_AVAILABLE
CE1 [DIAGNOSTIC_ONLY] people=1320502 policies=1688696 rows=2330683 effectuated=1316455/1320502=0.996935 unavailable=['person_type_description', 'insurance_type_description']
CE2 [DIAGNOSTIC_ONLY] people=865947 policies=659238 rows=920808 effectuated=856554/865947=0.989153 unavailable=['person_type_description', 'insurance_type_description']
CE3 [DIAGNOSTIC_ONLY] people=1320502 policies=1192366 rows=1616360 effectuated=1316437/1320502=0.996922 unavailable=['person_type_description', 'insurance_type_description']
CE4 [DIAGNOSTIC_ONLY] people=865946 policies=659235 rows=920803 effectuated=856553/865946=0.989153 unavailable=['person_type_description', 'insurance_type_description']
PY2026_DB_CANCELLED_POPULATION_DIAGNOSTIC: policies=485313 people=529245
PY2026_DB_TERMINATED_POPULATION_DIAGNOSTIC: policies=533065 people=596598
Latest-state record distribution by last-update month; NOT historical event activity.
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_create_date through 2025-11-08: rows=1146432 people=1037238 policies=866353
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_create_date through 2025-11-15: rows=1220800 people=1050525 policies=918627
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_create_date through 2025-11-30: rows=1357820 people=1075266 policies=1011809
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_create_date through 2025-12-15: rows=1708446 people=1153513 policies=1245509
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_create_date through 2025-12-31: rows=1797642 people=1172362 policies=1309139
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_confirmation_date through 2025-11-08: rows=1068336 people=1014037 policies=812202
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_confirmation_date through 2025-11-15: rows=1096682 people=1018942 policies=832191
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_confirmation_date through 2025-11-30: rows=1202874 people=1042372 policies=909789
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_confirmation_date through 2025-12-15: rows=1342737 people=1080781 policies=1006555
OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC enrollment_confirmation_date through 2025-12-31: rows=1536264 people=1128635 policies=1136373
oe_alignment_status=OE_START_ANCHOR_UNPROVEN historical_state_reconstructable=false
Currently Enrolled: BLOCKED_IDENTIFIER_EQUIVALENCE (production_comparable=false)


{
  "report_kind": "PY2026_POPULATION_DIAGNOSTICS",
  "phase": "6B",
  "source": {
    "table": "dbo.Enrollments_TEST",
    "description": "PY2026 Oct-31-equivalent latest-state dataset",
    "equivalence": "Equivalent, for the tested PY2026 records and business fields, to dbo.Enrollments_PY2526_10312026 (Phase 5D).",
    "filter": "coverage_year = 2026",
    "py2027": "Current Sisense OE Executive Dashboard; not queried here."
  },
  "column_availability": [
    {
      "column": "person_type_description",
      "role": "requested_sisense_field",
      "exists": false,
      "data_type": null
    },
    {
      "column": "insurance_type_description",
      "role": "requested_sisense_field",
      "exists": false,
      "data_type": null
    },
    {
      "column": "exchg_indiv_identifier",
      "role": "requested_sisense_field",
      "exists": false,
      "data_type": null
    },
    {
      "column": "coverage_year",
      "role": "proven_field",
      "exists": true,
      "data_type": "int"
    },
    {
      "column": "enrollment_id",
      "role": "proven_field",
      "exists": true,
      "data_type": "int"
    },
    {
      "column": "enrollee_id",
      "role": "proven_field",
      "exists": true,
      "data_type": "int"
    },
    {
      "column": "enrollment_status_description",
      "role": "proven_field",
      "exists": true,
      "data_type": "varchar"
    },
    {
      "column": "enrollee_status_description",
      "role": "proven_field",
      "exists": true,
      "data_type": "varchar"
    },
    {
      "column": "benefit_effective_date",
      "role": "proven_field",
      "exists": true,
      "data_type": "date"
    },
    {
      "column": "enrollment_last_update_date",
      "role": "proven_field",
      "exists": true,
      "data_type": "date"
    }
  ],
  "status_distributions": {
    "enrollment_status": [
      {
        "status_value": "Cancelled",
        "row_count": 697361,
        "distinct_people": 529245,
        "distinct_policies": 485313
      },
      {
        "status_value": "Pending",
        "row_count": 11681,
        "distinct_people": 11322,
        "distinct_policies": 8444
      },
      {
        "status_value": "Pend",
        "row_count": 220,
        "distinct_people": 193,
        "distinct_policies": 196
      },
      {
        "status_value": "Enrolled",
        "row_count": 928518,
        "distinct_people": 871095,
        "distinct_policies": 650877
      },
      {
        "status_value": "Terminated",
        "row_count": 679443,
        "distinct_people": 596598,
        "distinct_policies": 533065
      },
      {
        "status_value": "Pend canceled",
        "row_count": 13460,
        "distinct_people": 10305,
        "distinct_policies": 10801
      }
    ],
    "enrollee_status": [
      {
        "status_value": "Cancelled",
        "row_count": 700615,
        "distinct_people": 530883,
        "distinct_policies": 487770
      },
      {
        "status_value": "Pending",
        "row_count": 11597,
        "distinct_people": 11251,
        "distinct_policies": 8432
      },
      {
        "status_value": "Pend",
        "row_count": 220,
        "distinct_people": 193,
        "distinct_policies": 196
      },
      {
        "status_value": "Enrolled",
        "row_count": 909211,
        "distinct_people": 856553,
        "distinct_policies": 650806
      },
      {
        "status_value": "Terminated",
        "row_count": 695552,
        "distinct_people": 609857,
        "distinct_policies": 546812
      },
      {
        "status_value": "Pend canceled",
        "row_count": 13460,
        "distinct_people": 10305,
        "distinct_policies": 10801
      },
      {
        "status_value": "Aborted",
        "row_count": 28,
        "distinct_people": 27,
        "distinct_policies": 25
      }
    ]
  },
  "identifier_behavior": {
    "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
    "row_count": 2330683,
    "distinct_people": 1320502,
    "distinct_policies": 1688696,
    "distinct_policy_person_pairs": 2324955,
    "null_person_rows": 0,
    "null_policy_rows": 0,
    "policies_per_person": {
      "keys": 1320502,
      "links": 2324955,
      "mean": 1.76066,
      "max": 40,
      "buckets": {
        "1": 658065,
        "2": 441898,
        "3": 145852,
        "4": 47307,
        "5": 16682,
        "6": 6304,
        "7": 2376,
        "8": 1029,
        "9": 499,
        "10+": 490
      }
    },
    "persons_per_policy": {
      "keys": 1688696,
      "links": 2324955,
      "mean": 1.376775,
      "max": 14,
      "buckets": {
        "1": 1298989,
        "2": 235981,
        "3": 85776,
        "4": 48647,
        "5": 15109,
        "6": 3203,
        "7": 733,
        "8": 186,
        "9": 44,
        "10+": 28
      }
    },
    "exchange_person_identifier": {
      "status": "DB_EXCHANGE_PERSON_IDENTIFIER_NOT_AVAILABLE",
      "profile": null,
      "mapping": null
    }
  },
  "currently_enrolled_candidates": [
    {
      "candidate_id": "CE1",
      "label": "DIAGNOSTIC_ONLY",
      "view": "A_POPULATION_STATE_DIAGNOSTIC",
      "alignment_assumption": "PLAN_YEAR_SHIFT_ASSUMPTION",
      "not_the_same_as": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
      "description": "No status predicate (status filters treated as ignored by the widget).",
      "formula": "COUNT(DISTINCT enrollee_id) WHERE coverage_year = 2026 AND benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31'",
      "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
      "distinct_people": 1320502,
      "distinct_policies": 1688696,
      "row_count": 2330683,
      "filters_applied": [
        "coverage_year = 2026",
        "benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31' [PLAN_YEAR_SHIFT_ASSUMPTION]"
      ],
      "filters_unavailable": [
        "person_type_description",
        "insurance_type_description"
      ],
      "filters_present_not_applied": [],
      "assumptions": [
        "PLAN_YEAR_SHIFT_ASSUMPTION: benefit window shifted back one plan year from the PY2027 widget window; not proven equivalent."
      ],
      "skip_reason": null,
      "percent_effectuated": {
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 1316455,
        "denominator_people": 1320502,
        "ratio": 0.996935,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      },
      "production_comparable": false
    },
    {
      "candidate_id": "CE2",
      "label": "DIAGNOSTIC_ONLY",
      "view": "A_POPULATION_STATE_DIAGNOSTIC",
      "alignment_assumption": "PLAN_YEAR_SHIFT_ASSUMPTION",
      "not_the_same_as": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
      "description": "Enrollee status members minus nested exclusion; enrollment status ignored.",
      "formula": "COUNT(DISTINCT enrollee_id) WHERE coverage_year = 2026 AND benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31' AND enrollee_status_description IN ('Enrolled', 'Pending')",
      "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
      "distinct_people": 865947,
      "distinct_policies": 659238,
      "row_count": 920808,
      "filters_applied": [
        "coverage_year = 2026",
        "benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31' [PLAN_YEAR_SHIFT_ASSUMPTION]",
        "enrollee_status_description IN ('Enrolled', 'Pending')"
      ],
      "filters_unavailable": [
        "person_type_description",
        "insurance_type_description"
      ],
      "filters_present_not_applied": [],
      "assumptions": [
        "PLAN_YEAR_SHIFT_ASSUMPTION: benefit window shifted back one plan year from the PY2027 widget window; not proven equivalent."
      ],
      "skip_reason": null,
      "percent_effectuated": {
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 856554,
        "denominator_people": 865947,
        "ratio": 0.989153,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      },
      "production_comparable": false
    },
    {
      "candidate_id": "CE3",
      "label": "DIAGNOSTIC_ONLY",
      "view": "A_POPULATION_STATE_DIAGNOSTIC",
      "alignment_assumption": "PLAN_YEAR_SHIFT_ASSUMPTION",
      "not_the_same_as": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
      "description": "Enrollee status members, nested exclusion not applied; enrollment status ignored.",
      "formula": "COUNT(DISTINCT enrollee_id) WHERE coverage_year = 2026 AND benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31' AND enrollee_status_description IN ('Enrolled', 'Pending', 'Terminated')",
      "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
      "distinct_people": 1320502,
      "distinct_policies": 1192366,
      "row_count": 1616360,
      "filters_applied": [
        "coverage_year = 2026",
        "benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31' [PLAN_YEAR_SHIFT_ASSUMPTION]",
        "enrollee_status_description IN ('Enrolled', 'Pending', 'Terminated')"
      ],
      "filters_unavailable": [
        "person_type_description",
        "insurance_type_description"
      ],
      "filters_present_not_applied": [],
      "assumptions": [
        "PLAN_YEAR_SHIFT_ASSUMPTION: benefit window shifted back one plan year from the PY2027 widget window; not proven equivalent."
      ],
      "skip_reason": null,
      "percent_effectuated": {
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 1316437,
        "denominator_people": 1320502,
        "ratio": 0.996922,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      },
      "production_comparable": false
    },
    {
      "candidate_id": "CE4",
      "label": "DIAGNOSTIC_ONLY",
      "view": "A_POPULATION_STATE_DIAGNOSTIC",
      "alignment_assumption": "PLAN_YEAR_SHIFT_ASSUMPTION",
      "not_the_same_as": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
      "description": "Both status filters as captured, nested exclusion applied (control: contradicts the confirmed ignore of the enrollment-status dashboard filter).",
      "formula": "COUNT(DISTINCT enrollee_id) WHERE coverage_year = 2026 AND benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31' AND enrollee_status_description IN ('Enrolled', 'Pending') AND enrollment_status_description IN ('Enrolled', 'Pending')",
      "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
      "distinct_people": 865946,
      "distinct_policies": 659235,
      "row_count": 920803,
      "filters_applied": [
        "coverage_year = 2026",
        "benefit_effective_date BETWEEN '2025-10-01' AND '2026-12-31' [PLAN_YEAR_SHIFT_ASSUMPTION]",
        "enrollee_status_description IN ('Enrolled', 'Pending')",
        "enrollment_status_description IN ('Enrolled', 'Pending')"
      ],
      "filters_unavailable": [
        "person_type_description",
        "insurance_type_description"
      ],
      "filters_present_not_applied": [],
      "assumptions": [
        "PLAN_YEAR_SHIFT_ASSUMPTION: benefit window shifted back one plan year from the PY2027 widget window; not proven equivalent."
      ],
      "skip_reason": null,
      "percent_effectuated": {
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 856553,
        "denominator_people": 865946,
        "ratio": 0.989153,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      },
      "production_comparable": false
    }
  ],
  "percent_effectuated": {
    "label": "DIAGNOSTIC_ONLY",
    "semantics_source": "Phase 6A bridge (verified Currently Enrolled payload, formula order)",
    "per_candidate": [
      {
        "candidate_id": "CE1",
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 1316455,
        "denominator_people": 1320502,
        "ratio": 0.996935,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      },
      {
        "candidate_id": "CE2",
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 856554,
        "denominator_people": 865947,
        "ratio": 0.989153,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      },
      {
        "candidate_id": "CE3",
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 1316437,
        "denominator_people": 1320502,
        "ratio": 0.996922,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      },
      {
        "candidate_id": "CE4",
        "label": "DIAGNOSTIC_ONLY",
        "name": "PY2026 DB % Effectuated diagnostic (not the official PY2026 % Effectuated)",
        "person_identifier": "DB_PERSON_IDENTIFIER_PROXY",
        "numerator": "enrollment_status_description IN ['Enrolled', 'Terminated']",
        "denominator": "enrollment_status_description IN ['Enrolled', 'Pending', 'Terminated']",
        "numerator_people": 856553,
        "denominator_people": 865946,
        "ratio": 0.989153,
        "filters_unavailable": [
          "person_type_description",
          "insurance_type_description"
        ],
        "production_comparable": false
      }
    ],
    "production_comparable": false
  },
  "population_diagnostics": [
    {
      "label": "PY2026_DB_CANCELLED_POPULATION_DIAGNOSTIC",
      "formula": "COUNT(DISTINCT enrollment_id) WHERE coverage_year = 2026 AND enrollment_status_description = 'Cancelled'",
      "distinct_policies": 485313,
      "distinct_people": 529245,
      "row_count": 697361,
      "status_values_matched": [
        "Cancelled"
      ],
      "skip_reason": null,
      "not_equivalent_to": "Sisense Cancelled Policies daily activity",
      "interpretation": "Latest-state population in the PY2026 Oct-31-equivalent latest-state dataset; not daily activity.",
      "production_comparable": false
    },
    {
      "label": "PY2026_DB_TERMINATED_POPULATION_DIAGNOSTIC",
      "formula": "COUNT(DISTINCT enrollment_id) WHERE coverage_year = 2026 AND enrollment_status_description LIKE 'Term%'",
      "distinct_policies": 533065,
      "distinct_people": 596598,
      "row_count": 679443,
      "status_values_matched": [
        "Terminated"
      ],
      "skip_reason": null,
      "not_equivalent_to": "Sisense Terminated Policies daily activity",
      "interpretation": "Latest-state population in the PY2026 Oct-31-equivalent latest-state dataset; not daily activity.",
      "production_comparable": false
    }
  ],
  "temporal_diagnostics": {
    "statement": "Latest-state record distribution by last-update month; NOT historical event activity.",
    "bounds": {
      "min_benefit_effective_date": "2026-01-01",
      "max_benefit_effective_date": "2026-12-01",
      "min_last_update_date": "2025-10-16",
      "max_last_update_date": "2026-11-01",
      "null_last_update_rows": 0
    },
    "last_update_by_month": [
      {
        "month": "2025-10",
        "row_count": 135175,
        "distinct_policies": 103196
      },
      {
        "month": "2025-11",
        "row_count": 273618,
        "distinct_policies": 192199
      },
      {
        "month": "2025-12",
        "row_count": 461118,
        "distinct_policies": 317338
      },
      {
        "month": "2026-01",
        "row_count": 229032,
        "distinct_policies": 162870
      },
      {
        "month": "2026-02",
        "row_count": 136657,
        "distinct_policies": 97692
      },
      {
        "month": "2026-03",
        "row_count": 113296,
        "distinct_policies": 78388
      },
      {
        "month": "2026-04",
        "row_count": 329432,
        "distinct_policies": 283019
      },
      {
        "month": "2026-05",
        "row_count": 112278,
        "distinct_policies": 80290
      },
      {
        "month": "2026-06",
        "row_count": 92112,
        "distinct_policies": 65109
      },
      {
        "month": "2026-07",
        "row_count": 96489,
        "distinct_policies": 67048
      },
      {
        "month": "2026-08",
        "row_count": 107858,
        "distinct_policies": 74978
      },
      {
        "month": "2026-09",
        "row_count": 116097,
        "distinct_policies": 78437
      },
      {
        "month": "2026-10",
        "row_count": 126132,
        "distinct_policies": 87082
      },
      {
        "month": "2026-11",
        "row_count": 1389,
        "distinct_policies": 1050
      }
    ],
    "daily_trend": "Not constructed."
  },
  "oe_aligned_temporal_diagnostics": {
    "label": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
    "view": "B_OE_TEMPORAL_ACTIVITY_DIAGNOSTIC",
    "statement": "Shows when PY2026 records in the latest-state dataset were created or confirmed. It does NOT show the enrolled population on any historical day; no status filter is applied and no historical state is inferred.",
    "status_filter_applied": false,
    "cumulative_cutoffs": [
      "2025-11-08",
      "2025-11-15",
      "2025-11-30",
      "2025-12-15",
      "2025-12-31"
    ],
    "cumulative_fields": [
      "enrollment_create_date",
      "enrollment_confirmation_date"
    ],
    "fields": {
      "enrollment_create_date": {
        "label": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
        "view": "B_OE_TEMPORAL_ACTIVITY_DIAGNOSTIC",
        "monthly_from": "2025-10-01",
        "context": {
          "rows_before_window": 0,
          "null_rows": 0,
          "min_value": "2025-10-16",
          "max_value": "2026-11-01"
        },
        "monthly": [
          {
            "month": "2025-10",
            "row_count": 1069876,
            "distinct_people": 1023001,
            "distinct_policies": 813802
          },
          {
            "month": "2025-11",
            "row_count": 287944,
            "distinct_people": 246459,
            "distinct_policies": 198007
          },
          {
            "month": "2025-12",
            "row_count": 439822,
            "distinct_people": 365788,
            "distinct_policies": 297330
          },
          {
            "month": "2026-01",
            "row_count": 160388,
            "distinct_people": 132310,
            "distinct_policies": 115718
          },
          {
            "month": "2026-02",
            "row_count": 59786,
            "distinct_people": 50882,
            "distinct_policies": 42364
          },
          {
            "month": "2026-03",
            "row_count": 53306,
            "distinct_people": 44528,
            "distinct_policies": 36798
          },
          {
            "month": "2026-04",
            "row_count": 45630,
            "distinct_people": 38871,
            "distinct_policies": 32224
          },
          {
            "month": "2026-05",
            "row_count": 42972,
            "distinct_people": 37238,
            "distinct_policies": 30538
          },
          {
            "month": "2026-06",
            "row_count": 41191,
            "distinct_people": 35656,
            "distinct_policies": 28792
          },
          {
            "month": "2026-07",
            "row_count": 37739,
            "distinct_people": 32229,
            "distinct_policies": 26805
          },
          {
            "month": "2026-08",
            "row_count": 34974,
            "distinct_people": 30234,
            "distinct_policies": 25342
          },
          {
            "month": "2026-09",
            "row_count": 33366,
            "distinct_people": 28912,
            "distinct_policies": 23646
          },
          {
            "month": "2026-10",
            "row_count": 23672,
            "distinct_people": 20856,
            "distinct_policies": 17319
          },
          {
            "month": "2026-11",
            "row_count": 17,
            "distinct_people": 15,
            "distinct_policies": 11
          }
        ],
        "cumulative": [
          {
            "through": "2025-11-08",
            "row_count": 1146432,
            "distinct_people": 1037238,
            "distinct_policies": 866353
          },
          {
            "through": "2025-11-15",
            "row_count": 1220800,
            "distinct_people": 1050525,
            "distinct_policies": 918627
          },
          {
            "through": "2025-11-30",
            "row_count": 1357820,
            "distinct_people": 1075266,
            "distinct_policies": 1011809
          },
          {
            "through": "2025-12-15",
            "row_count": 1708446,
            "distinct_people": 1153513,
            "distinct_policies": 1245509
          },
          {
            "through": "2025-12-31",
            "row_count": 1797642,
            "distinct_people": 1172362,
            "distinct_policies": 1309139
          }
        ],
        "caveat": "Shows when PY2026 records in the latest-state dataset were created or confirmed. It does NOT show the enrolled population on any historical day; no status filter is applied and no historical state is inferred.",
        "production_comparable": false
      },
      "enrollment_confirmation_date": {
        "label": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
        "view": "B_OE_TEMPORAL_ACTIVITY_DIAGNOSTIC",
        "monthly_from": "2025-10-01",
        "context": {
          "rows_before_window": 0,
          "null_rows": 204401,
          "min_value": "2025-10-16",
          "max_value": "2026-11-01"
        },
        "monthly": [
          {
            "month": "2025-10",
            "row_count": 1052448,
            "distinct_people": 1007287,
            "distinct_policies": 801430
          },
          {
            "month": "2025-11",
            "row_count": 150426,
            "distinct_people": 144783,
            "distinct_policies": 108359
          },
          {
            "month": "2025-12",
            "row_count": 333390,
            "distinct_people": 314710,
            "distinct_policies": 226584
          },
          {
            "month": "2026-01",
            "row_count": 236762,
            "distinct_people": 221781,
            "distinct_policies": 161271
          },
          {
            "month": "2026-02",
            "row_count": 69142,
            "distinct_people": 65685,
            "distinct_policies": 48507
          },
          {
            "month": "2026-03",
            "row_count": 45992,
            "distinct_people": 43721,
            "distinct_policies": 31205
          },
          {
            "month": "2026-04",
            "row_count": 46156,
            "distinct_people": 43624,
            "distinct_policies": 32582
          },
          {
            "month": "2026-05",
            "row_count": 39444,
            "distinct_people": 37067,
            "distinct_policies": 28142
          },
          {
            "month": "2026-06",
            "row_count": 35154,
            "distinct_people": 33250,
            "distinct_policies": 24406
          },
          {
            "month": "2026-07",
            "row_count": 31706,
            "distinct_people": 30104,
            "distinct_policies": 22269
          },
          {
            "month": "2026-08",
            "row_count": 31414,
            "distinct_people": 29926,
            "distinct_policies": 22751
          },
          {
            "month": "2026-09",
            "row_count": 28613,
            "distinct_people": 27360,
            "distinct_policies": 20212
          },
          {
            "month": "2026-10",
            "row_count": 24607,
            "distinct_people": 23687,
            "distinct_policies": 17895
          },
          {
            "month": "2026-11",
            "row_count": 1028,
            "distinct_people": 996,
            "distinct_policies": 742
          }
        ],
        "cumulative": [
          {
            "through": "2025-11-08",
            "row_count": 1068336,
            "distinct_people": 1014037,
            "distinct_policies": 812202
          },
          {
            "through": "2025-11-15",
            "row_count": 1096682,
            "distinct_people": 1018942,
            "distinct_policies": 832191
          },
          {
            "through": "2025-11-30",
            "row_count": 1202874,
            "distinct_people": 1042372,
            "distinct_policies": 909789
          },
          {
            "through": "2025-12-15",
            "row_count": 1342737,
            "distinct_people": 1080781,
            "distinct_policies": 1006555
          },
          {
            "through": "2025-12-31",
            "row_count": 1536264,
            "distinct_people": 1128635,
            "distinct_policies": 1136373
          }
        ],
        "caveat": "Shows when PY2026 records in the latest-state dataset were created or confirmed. It does NOT show the enrolled population on any historical day; no status filter is applied and no historical state is inferred.",
        "production_comparable": false
      },
      "enrollment_last_update_date": {
        "label": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
        "view": "B_OE_TEMPORAL_ACTIVITY_DIAGNOSTIC",
        "monthly_from": "2025-10-01",
        "context": {
          "null_rows": 0,
          "min_value": "2025-10-16",
          "max_value": "2026-11-01"
        },
        "monthly": [
          {
            "month": "2025-10",
            "row_count": 135175,
            "distinct_people": 127313,
            "distinct_policies": 103196
          },
          {
            "month": "2025-11",
            "row_count": 273618,
            "distinct_people": 195825,
            "distinct_policies": 192199
          },
          {
            "month": "2025-12",
            "row_count": 461118,
            "distinct_people": 321248,
            "distinct_policies": 317338
          },
          {
            "month": "2026-01",
            "row_count": 229032,
            "distinct_people": 178552,
            "distinct_policies": 162870
          },
          {
            "month": "2026-02",
            "row_count": 136657,
            "distinct_people": 110108,
            "distinct_policies": 97692
          },
          {
            "month": "2026-03",
            "row_count": 113296,
            "distinct_people": 88920,
            "distinct_policies": 78388
          },
          {
            "month": "2026-04",
            "row_count": 329432,
            "distinct_people": 305494,
            "distinct_policies": 283019
          },
          {
            "month": "2026-05",
            "row_count": 112278,
            "distinct_people": 94992,
            "distinct_policies": 80290
          },
          {
            "month": "2026-06",
            "row_count": 92112,
            "distinct_people": 74579,
            "distinct_policies": 65109
          },
          {
            "month": "2026-07",
            "row_count": 96489,
            "distinct_people": 77049,
            "distinct_policies": 67048
          },
          {
            "month": "2026-08",
            "row_count": 107858,
            "distinct_people": 84765,
            "distinct_policies": 74978
          },
          {
            "month": "2026-09",
            "row_count": 116097,
            "distinct_people": 90828,
            "distinct_policies": 78437
          },
          {
            "month": "2026-10",
            "row_count": 126132,
            "distinct_people": 93142,
            "distinct_policies": 87082
          },
          {
            "month": "2026-11",
            "row_count": 1389,
            "distinct_people": 1237,
            "distinct_policies": 1050
          }
        ],
        "cumulative": null,
        "caveat": "Latest update month of each record; a record's current last-update date does not prove its state on an earlier day and is never used as a historical cutoff.",
        "production_comparable": false
      }
    },
    "historical_state_reconstructable": false,
    "production_comparable": false
  },
  "oe_lifecycle_alignment": {
    "label": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
    "py2026_activity_period": "late 2025 / November 2025 onward",
    "py2027_observation_period": "November 2026",
    "statement": "Calendar-year alignment is not sufficient. The preferred future YoY comparison is equivalent Open Enrollment lifecycle position (OE Day N) when defensible anchors and semantics are available.",
    "oe_alignment_status": "OE_START_ANCHOR_UNPROVEN",
    "oe_start_anchor": {
      "PY2026": null,
      "PY2027": null
    },
    "anchor_evidence": "No proven official PY2026 or PY2027 OE start date exists in the repository. No start date is assumed from where record dates cluster.",
    "historical_state_reconstructable": false,
    "november_2025_activity_observed": true,
    "preserve_for_next_phase": true,
    "future_comparison_preference": "PY2026 OE Day N vs PY2027 OE Day N, rather than PY2026 Oct-31 latest state vs PY2027 early-November current state, where metric semantics allow lifecycle alignment.",
    "metric_applicability": {
      "population_metrics": "Currently Enrolled and other state metrics still require historical-state evidence; OE Day N alignment does not supply it.",
      "activity_metrics": "Cumulative counts by create or confirmation date may be defensible at OE Day N once anchors and semantics are proven."
    },
    "not_the_same_as": "PLAN_YEAR_SHIFT_ASSUMPTION",
    "production_comparable": false
  },
  "remaining_semantic_gaps": [
    "DB_EXCHANGE_PERSON_IDENTIFIER_NOT_AVAILABLE",
    "insurance_type_description absent: the Sisense filter on it cannot be represented.",
    "person_type_description absent: the Sisense filter on it cannot be represented.",
    "Person identifier: enrollee_id is a DB proxy; equivalence to enrollee.exchg_indiv_identifier is unproven.",
    "PLAN_YEAR_SHIFT_ASSUMPTION: the benefit window shifted back one year is not proven equivalent to the PY2027 window.",
    "Temporal: PY2026 Oct-31-equivalent latest-state dataset vs PY2027 read during Open Enrollment.",
    "Status-filter interpretation: CE1-CE4 remain competing; none is selected.",
    "OE_START_ANCHOR_UNPROVEN: no proven official PY2026/PY2027 OE start date; OE Day N alignment unavailable.",
    "Historical state is not reconstructable from the latest-state dataset; create/confirmation-date activity is not a historical enrolled population.",
    "Cancelled/Terminated daily activity remains BLOCKED_EVENT_HISTORY."
  ],
  "phase_6b_decision": {
    "currently_enrolled": {
      "classification": "BLOCKED_IDENTIFIER_EQUIVALENCE",
      "identifier_evidence": "DB_EXCHANGE_PERSON_IDENTIFIER_NOT_AVAILABLE",
      "remaining_blockers": [
        "Person identifier equivalence unproven.",
        "PY2026 Oct-31-equivalent latest-state dataset vs PY2027 read during Open Enrollment: lifecycle point not aligned.",
        "PLAN_YEAR_SHIFT_ASSUMPTION: shifted benefit window is not proven equivalent.",
        "ssap_applications.coverage_year vs DB coverage_year: same name, unproven same meaning.",
        "Sisense filter field insurance_type_description absent from dbo.Enrollments_TEST.",
        "Sisense filter field person_type_description absent from dbo.Enrollments_TEST."
      ],
      "production_comparable": false
    },
    "percent_effectuated": {
      "classification": "BLOCKED_IDENTIFIER_EQUIVALENCE",
      "remaining_blockers": [
        "Person identifier equivalence unproven.",
        "PY2026 Oct-31-equivalent latest-state dataset vs PY2027 read during Open Enrollment: lifecycle point not aligned.",
        "PLAN_YEAR_SHIFT_ASSUMPTION: shifted benefit window is not proven equivalent.",
        "ssap_applications.coverage_year vs DB coverage_year: same name, unproven same meaning.",
        "Sisense filter field insurance_type_description absent from dbo.Enrollments_TEST.",
        "Sisense filter field person_type_description absent from dbo.Enrollments_TEST."
      ],
      "note": "Diagnostic only; not the official PY2026 % Effectuated.",
      "production_comparable": false
    },
    "cancelled_population": {
      "classification": "DIAGNOSTIC_CANDIDATE",
      "production_comparable": false
    },
    "terminated_population": {
      "classification": "DIAGNOSTIC_CANDIDATE",
      "production_comparable": false
    },
    "cancelled_policies_daily": {
      "classification": "BLOCKED_EVENT_HISTORY",
      "production_comparable": false
    },
    "terminated_policies_daily": {
      "classification": "BLOCKED_EVENT_HISTORY",
      "production_comparable": false
    },
    "oe_temporal_activity": {
      "classification": "DIAGNOSTIC_CANDIDATE",
      "view": "B_OE_TEMPORAL_ACTIVITY_DIAGNOSTIC",
      "oe_alignment_status": "OE_START_ANCHOR_UNPROVEN",
      "historical_state_reconstructable": false,
      "production_comparable": false
    },
    "new_active_passive": {
      "classification": "BLOCKED_LIFECYCLE_RULES",
      "queried": false,
      "production_comparable": false
    },
    "application_metrics": {
      "classification": "WRONG_SOURCE_FAMILY",
      "queried": false,
      "production_comparable": false
    },
    "promotion": "None. No metric is promoted in Phase 6B."
  },
  "production_comparable": false,
  "failures": [],
  "skipped": [],
  "command": ".\\.venv\\Scripts\\python.exe -m database.comparison.py2026_population_diagnostics"
}

Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2026_population_diagnostics.json
Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2026_population_diagnostics.html
PS C:\Users\Sel
