


 .\.venv\Scripts\python.exe -m comparison.executive_py2026_py2027_report        
Currently Enrolled (PY2026 CE1-CE4)     865,946 to 1,320,502      797,762       -522,740 to -68,184       DIAGNOSTIC
% Effectuated (PY2026 CE1-CE4)          98.9% to 99.7%            93.7%         -5.98 pp to -5.20 pp      DIAGNOSTIC
New                                     —                         4,525         —                         PY2027_ONLY
Active                                  —                         60,622        —                         PY2027_ONLY
Passive                                 —                         733,065       —                         PY2027_ONLY
Applications Started                    —                         573,214       —                         PY2027_ONLY
Submitted Applications                  —                         571,890       —                         PY2027_ONLY
Total Applicants                        —                         840,764       —                         PY2027_ONLY (validation-only)
Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\executive\py2026_vs_py2027_comparison.json
Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\executive\py2026_vs_py2027_comparison.html
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation>


{
  "report_kind": "EXECUTIVE_PY2026_PY2027_COMPARISON",
  "phase": "7",
  "generated_at_utc": "2026-11-09T11:36:16+00:00",
  "executive_summary": {
    "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
    "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
    "py2027_observed_at_utc": "2026-11-09T11:23:41Z",
    "statement": "PY2026 and PY2027 come from different systems and lifecycle points. Only metrics with defensible semantic alignment are presented as comparisons. Other metrics are explicitly labelled diagnostic or PY2027-only.",
    "artifacts": {
      "phase_6b": true,
      "phase_6d": true,
      "validation_report": true,
      "history": true
    }
  },
  "population_comparison": {
    "available": true,
    "rows": [
      {
        "metric": "Currently Enrolled vs PY2026 CE1",
        "py2026_value": 1320502,
        "py2027_value": 797762,
        "absolute_difference": -522740,
        "percent_difference": -39.59,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Candidate CE1: No status predicate (status filters treated as ignored by the widget).",
        "value_kind": "count"
      },
      {
        "metric": "Currently Enrolled vs PY2026 CE2",
        "py2026_value": 865947,
        "py2027_value": 797762,
        "absolute_difference": -68185,
        "percent_difference": -7.87,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Candidate CE2: Enrollee status members minus nested exclusion; enrollment status ignored.",
        "value_kind": "count"
      },
      {
        "metric": "Currently Enrolled vs PY2026 CE3",
        "py2026_value": 1320502,
        "py2027_value": 797762,
        "absolute_difference": -522740,
        "percent_difference": -39.59,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Candidate CE3: Enrollee status members, nested exclusion not applied; enrollment status ignored.",
        "value_kind": "count"
      },
      {
        "metric": "Currently Enrolled vs PY2026 CE4",
        "py2026_value": 865946,
        "py2027_value": 797762,
        "absolute_difference": -68184,
        "percent_difference": -7.87,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Candidate CE4: Both status filters as captured, nested exclusion applied (control: contradicts the confirmed ignore of the enrollment-status dashboard filter).",
        "value_kind": "count"
      },
      {
        "metric": "% Effectuated vs PY2026 CE1",
        "py2026_value": 0.996935,
        "py2027_value": 0.9371353862430148,
        "absolute_difference": -5.98,
        "percent_difference": null,
        "difference_unit": "percentage points",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "Phase 6A numerator/denominator semantics on the PY2026 proxy; not the official PY2026 % Effectuated. DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE.",
        "value_kind": "ratio"
      },
      {
        "metric": "% Effectuated vs PY2026 CE2",
        "py2026_value": 0.989153,
        "py2027_value": 0.9371353862430148,
        "absolute_difference": -5.2,
        "percent_difference": null,
        "difference_unit": "percentage points",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "Phase 6A numerator/denominator semantics on the PY2026 proxy; not the official PY2026 % Effectuated. DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE.",
        "value_kind": "ratio"
      },
      {
        "metric": "% Effectuated vs PY2026 CE3",
        "py2026_value": 0.996922,
        "py2027_value": 0.9371353862430148,
        "absolute_difference": -5.98,
        "percent_difference": null,
        "difference_unit": "percentage points",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "Phase 6A numerator/denominator semantics on the PY2026 proxy; not the official PY2026 % Effectuated. DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE.",
        "value_kind": "ratio"
      },
      {
        "metric": "% Effectuated vs PY2026 CE4",
        "py2026_value": 0.989153,
        "py2027_value": 0.9371353862430148,
        "absolute_difference": -5.2,
        "percent_difference": null,
        "difference_unit": "percentage points",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "Phase 6A numerator/denominator semantics on the PY2026 proxy; not the official PY2026 % Effectuated. DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE.",
        "value_kind": "ratio"
      },
      {
        "metric": "PY2026 distinct people (all statuses)",
        "py2026_value": 1320502,
        "py2027_value": null,
        "absolute_difference": null,
        "percent_difference": null,
        "difference_unit": null,
        "comparison_status": "PY2026_ONLY",
        "caveat": "Whole PY2026 latest-state population; no PY2027 counterpart.",
        "value_kind": "count"
      },
      {
        "metric": "PY2026 distinct policies (all statuses)",
        "py2026_value": 1688696,
        "py2027_value": null,
        "absolute_difference": null,
        "percent_difference": null,
        "difference_unit": null,
        "comparison_status": "PY2026_ONLY",
        "caveat": "Whole PY2026 latest-state population; no PY2027 counterpart.",
        "value_kind": "count"
      }
    ],
    "note": "CE1-CE4 are competing diagnostic definitions; none is selected or ranked."
  },
  "py2027_current_snapshot": [
    {
      "metric_id": "currently_enrolled_people",
      "metric": "Currently Enrolled",
      "value": 797762,
      "value_kind": "count",
      "retrieved_at_utc": "2026-11-09T11:23:41Z",
      "evidence_source": "metric_snapshots (validated)",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "percent_effectuated",
      "metric": "% Effectuated",
      "value": 0.9371353862430148,
      "value_kind": "ratio",
      "retrieved_at_utc": "2026-11-09T11:22:46Z",
      "evidence_source": "metric_snapshots (validated)",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "applications_started",
      "metric": "Applications Started",
      "value": 573214,
      "value_kind": "count",
      "retrieved_at_utc": "2026-11-09T11:22:46Z",
      "evidence_source": "metric_snapshots (validated)",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "submitted_applications",
      "metric": "Submitted Applications",
      "value": 571890,
      "value_kind": "count",
      "retrieved_at_utc": "2026-11-09T11:22:46Z",
      "evidence_source": "metric_snapshots (validated)",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "total_applicants",
      "metric": "Total Applicants",
      "value": 840764,
      "value_kind": "count",
      "retrieved_at_utc": "2026-11-09T11:23:41Z",
      "evidence_source": "runtime validation report",
      "verification": "VALIDATION_ONLY"
    },
    {
      "metric_id": "new_enrolled",
      "metric": "New",
      "value": 4525,
      "value_kind": "count",
      "retrieved_at_utc": "2026-11-09T11:22:46Z",
      "evidence_source": "metric_snapshots (validated)",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "active_enrolled",
      "metric": "Active",
      "value": 60622,
      "value_kind": "count",
      "retrieved_at_utc": "2026-11-09T11:22:46Z",
      "evidence_source": "metric_snapshots (validated)",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "passive_enrolled",
      "metric": "Passive",
      "value": 733065,
      "value_kind": "count",
      "retrieved_at_utc": "2026-11-09T11:22:46Z",
      "evidence_source": "metric_snapshots (validated)",
      "verification": "PRODUCTION_VERIFIED"
    }
  ],
  "new_active_passive": {
    "comparison_status": "PY2027_ONLY",
    "py2027": {
      "New": 4525,
      "Active": 60622,
      "Passive": 733065
    },
    "py2026": "PY2026 equivalent not defensibly available from the canonical enrollment table.",
    "phase_6d": {
      "new_classification": "OTHER_LIFECYCLE_CLASS",
      "activity_bridge": "NO_ACTIVITY_BRIDGE",
      "decision": "CLOSED",
      "capture_artifact_present": true,
      "captured_relationship": "UNRESOLVED_LOGIC"
    },
    "partition_note": "New + Active + Passive is not treated as a partition of Currently Enrolled; numeric closeness is not evidence of lifecycle logic."
  },
  "oe_temporal_diagnostic": {
    "available": true,
    "label": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
    "anchor": "Official OE start anchor not proven; calendar-date alignment only.",
    "fields": {
      "enrollment_create_date": {
        "monthly": [
          {
            "month": "2025-10",
            "row_count": 1069876,
            "distinct_people": 1023001,
            "distinct_policies": 813802,
            "period_role": "context (before November 2025)"
          },
          {
            "month": "2025-11",
            "row_count": 287944,
            "distinct_people": 246459,
            "distinct_policies": 198007,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2025-12",
            "row_count": 439822,
            "distinct_people": 365788,
            "distinct_policies": 297330,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-01",
            "row_count": 160388,
            "distinct_people": 132310,
            "distinct_policies": 115718,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-02",
            "row_count": 59786,
            "distinct_people": 50882,
            "distinct_policies": 42364,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-03",
            "row_count": 53306,
            "distinct_people": 44528,
            "distinct_policies": 36798,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-04",
            "row_count": 45630,
            "distinct_people": 38871,
            "distinct_policies": 32224,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-05",
            "row_count": 42972,
            "distinct_people": 37238,
            "distinct_policies": 30538,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-06",
            "row_count": 41191,
            "distinct_people": 35656,
            "distinct_policies": 28792,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-07",
            "row_count": 37739,
            "distinct_people": 32229,
            "distinct_policies": 26805,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-08",
            "row_count": 34974,
            "distinct_people": 30234,
            "distinct_policies": 25342,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-09",
            "row_count": 33366,
            "distinct_people": 28912,
            "distinct_policies": 23646,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-10",
            "row_count": 23672,
            "distinct_people": 20856,
            "distinct_policies": 17319,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-11",
            "row_count": 17,
            "distinct_people": 15,
            "distinct_policies": 11,
            "period_role": "OE emphasis (November 2025 and later)"
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
        ]
      },
      "enrollment_confirmation_date": {
        "monthly": [
          {
            "month": "2025-10",
            "row_count": 1052448,
            "distinct_people": 1007287,
            "distinct_policies": 801430,
            "period_role": "context (before November 2025)"
          },
          {
            "month": "2025-11",
            "row_count": 150426,
            "distinct_people": 144783,
            "distinct_policies": 108359,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2025-12",
            "row_count": 333390,
            "distinct_people": 314710,
            "distinct_policies": 226584,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-01",
            "row_count": 236762,
            "distinct_people": 221781,
            "distinct_policies": 161271,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-02",
            "row_count": 69142,
            "distinct_people": 65685,
            "distinct_policies": 48507,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-03",
            "row_count": 45992,
            "distinct_people": 43721,
            "distinct_policies": 31205,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-04",
            "row_count": 46156,
            "distinct_people": 43624,
            "distinct_policies": 32582,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-05",
            "row_count": 39444,
            "distinct_people": 37067,
            "distinct_policies": 28142,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-06",
            "row_count": 35154,
            "distinct_people": 33250,
            "distinct_policies": 24406,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-07",
            "row_count": 31706,
            "distinct_people": 30104,
            "distinct_policies": 22269,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-08",
            "row_count": 31414,
            "distinct_people": 29926,
            "distinct_policies": 22751,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-09",
            "row_count": 28613,
            "distinct_people": 27360,
            "distinct_policies": 20212,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-10",
            "row_count": 24607,
            "distinct_people": 23687,
            "distinct_policies": 17895,
            "period_role": "OE emphasis (November 2025 and later)"
          },
          {
            "month": "2026-11",
            "row_count": 1028,
            "distinct_people": 996,
            "distinct_policies": 742,
            "period_role": "OE emphasis (November 2025 and later)"
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
        ]
      }
    },
    "statement": "Activity/cohort accumulation by date; not historical population state."
  },
  "cancellation_termination": {
    "statement": "PY2026 is latest-state population evidence; PY2027 is daily last-update activity. They are different semantic families.",
    "py2026_population": [
      {
        "label": "PY2026_DB_CANCELLED_POPULATION_DIAGNOSTIC",
        "distinct_policies": 485313,
        "distinct_people": 529245,
        "comparison_status": "PY2026_ONLY"
      },
      {
        "label": "PY2026_DB_TERMINATED_POPULATION_DIAGNOSTIC",
        "distinct_policies": 533065,
        "distinct_people": 596598,
        "comparison_status": "PY2026_ONLY"
      }
    ],
    "py2027_daily_activity": {
      "cancelled_policies_daily": {
        "label": "Cancelled Policies",
        "comparison_status": "PY2027_ONLY",
        "points": null
      },
      "terminated_policies_daily": {
        "label": "Terminated Policies",
        "comparison_status": "PY2027_ONLY",
        "points": null
      }
    },
    "yoy_difference": "Not computed (different semantic families)."
  },
  "applications": {
    "rows": [
      {
        "metric": "Applications Started",
        "py2027_value": 573214,
        "verification": "PRODUCTION_VERIFIED",
        "py2026_value": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
        "comparison_status": "PY2027_ONLY"
      },
      {
        "metric": "Submitted Applications",
        "py2027_value": 571890,
        "verification": "PRODUCTION_VERIFIED",
        "py2026_value": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
        "comparison_status": "PY2027_ONLY"
      },
      {
        "metric": "Total Applicants",
        "py2027_value": 840764,
        "verification": "VALIDATION_ONLY",
        "py2026_value": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
        "comparison_status": "PY2027_ONLY"
      }
    ],
    "funnel": {
      "started": 573214,
      "submitted": 571890,
      "not_yet_submitted": 1324,
      "submitted_share_of_started": 99.77
    }
  },
  "comparison_quality_matrix": [
    {
      "metric": "Currently Enrolled",
      "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
      "grain": "person",
      "semantic_status": "DIAGNOSTIC",
      "report_treatment": "Shown with differences, labelled DIAGNOSTIC (identifier/filter equivalence unresolved)."
    },
    {
      "metric": "% Effectuated",
      "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
      "grain": "person ratio",
      "semantic_status": "DIAGNOSTIC",
      "report_treatment": "Shown as percentage-point difference, labelled DIAGNOSTIC."
    },
    {
      "metric": "New",
      "py2026_source": "PY2026 equivalent not defensibly available from the canonical enrollment table.",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
      "grain": "lifecycle class",
      "semantic_status": "PY2027_ONLY",
      "report_treatment": "PY2027 only (Phase 6D NO_ACTIVITY_BRIDGE)."
    },
    {
      "metric": "Active",
      "py2026_source": "PY2026 equivalent not defensibly available from the canonical enrollment table.",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
      "grain": "lifecycle class",
      "semantic_status": "PY2027_ONLY",
      "report_treatment": "PY2027 only."
    },
    {
      "metric": "Passive",
      "py2026_source": "PY2026 equivalent not defensibly available from the canonical enrollment table.",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
      "grain": "lifecycle class",
      "semantic_status": "PY2027_ONLY",
      "report_treatment": "PY2027 only."
    },
    {
      "metric": "Cancelled",
      "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026) latest-state population",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard daily last-update activity",
      "grain": "policy",
      "semantic_status": "NOT_COMPARABLE",
      "report_treatment": "Shown side by side; no YoY difference."
    },
    {
      "metric": "Terminated",
      "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026) latest-state population",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard daily last-update activity",
      "grain": "policy",
      "semantic_status": "NOT_COMPARABLE",
      "report_treatment": "Shown side by side; no YoY difference."
    },
    {
      "metric": "Applications Started",
      "py2026_source": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
      "grain": "application",
      "semantic_status": "PY2027_ONLY",
      "report_treatment": "PY2027 only."
    },
    {
      "metric": "Submitted Applications",
      "py2026_source": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
      "grain": "application",
      "semantic_status": "PY2027_ONLY",
      "report_treatment": "PY2027 only."
    },
    {
      "metric": "Total Applicants",
      "py2026_source": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
      "py2027_source": "Sisense PY 2027 - OE Executive Dashboard (validation-only)",
      "grain": "applicant",
      "semantic_status": "PY2027_ONLY",
      "report_treatment": "PY2027 only; validation-only metric."
    }
  ],
  "key_findings": [
    "Currently Enrolled vs PY2026 CE1 (DIAGNOSTIC): PY2027 797,762 vs PY2026 1,320,502, -522,740 (-39.59%).",
    "Currently Enrolled vs PY2026 CE2 (DIAGNOSTIC): PY2027 797,762 vs PY2026 865,947, -68,185 (-7.87%).",
    "Currently Enrolled vs PY2026 CE3 (DIAGNOSTIC): PY2027 797,762 vs PY2026 1,320,502, -522,740 (-39.59%).",
    "Currently Enrolled vs PY2026 CE4 (DIAGNOSTIC): PY2027 797,762 vs PY2026 865,946, -68,184 (-7.87%).",
    "% Effectuated vs PY2026 CE1 (DIAGNOSTIC): PY2027 93.7% vs PY2026 99.7%, -5.98 percentage points.",
    "% Effectuated vs PY2026 CE2 (DIAGNOSTIC): PY2027 93.7% vs PY2026 98.9%, -5.20 percentage points.",
    "% Effectuated vs PY2026 CE3 (DIAGNOSTIC): PY2027 93.7% vs PY2026 99.7%, -5.98 percentage points.",
    "% Effectuated vs PY2026 CE4 (DIAGNOSTIC): PY2027 93.7% vs PY2026 98.9%, -5.20 percentage points.",
    "PY2027 New / Active / Passive (PY2027_ONLY): New 4,525 (0.6% of the three measures combined), Active 60,622 (7.6% of the three measures combined), Passive 733,065 (91.8% of the three measures combined). Not a proven partition of Currently Enrolled.",
    "PY2027 applications (PY2027_ONLY): 573,214 started, 571,890 submitted; difference +1,324; submitted = 99.8% of started.",
    "PY2027 Currently Enrolled changed from 791,826 (2026-11-05T07:47:11Z) to 797,762 (2026-11-09T11:23:41Z), +5,936 across 14 saved snapshots.",
    "PY2026 enrollment_create_date (OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC): 88.5% of people dated on or before 2025-12-31 were already dated on or before 2025-11-08.",
    "PY2026 enrollment_confirmation_date (OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC): 89.8% of people dated on or before 2025-12-31 were already dated on or before 2025-11-08."
  ],
  "management_view": [
    {
      "metric": "Currently Enrolled (PY2026 CE1-CE4)",
      "py2026": "865,946 to 1,320,502",
      "py2027": "797,762",
      "change": "-522,740 to -68,184",
      "status": "DIAGNOSTIC"
    },
    {
      "metric": "% Effectuated (PY2026 CE1-CE4)",
      "py2026": "98.9% to 99.7%",
      "py2027": "93.7%",
      "change": "-5.98 pp to -5.20 pp",
      "status": "DIAGNOSTIC"
    },
    {
      "metric": "New",
      "py2026": "\u2014",
      "py2027": "4,525",
      "change": "\u2014",
      "status": "PY2027_ONLY"
    },
    {
      "metric": "Active",
      "py2026": "\u2014",
      "py2027": "60,622",
      "change": "\u2014",
      "status": "PY2027_ONLY"
    },
    {
      "metric": "Passive",
      "py2026": "\u2014",
      "py2027": "733,065",
      "change": "\u2014",
      "status": "PY2027_ONLY"
    },
    {
      "metric": "Applications Started",
      "py2026": "\u2014",
      "py2027": "573,214",
      "change": "\u2014",
      "status": "PY2027_ONLY"
    },
    {
      "metric": "Submitted Applications",
      "py2026": "\u2014",
      "py2027": "571,890",
      "change": "\u2014",
      "status": "PY2027_ONLY"
    },
    {
      "metric": "Total Applicants",
      "py2026": "\u2014",
      "py2027": "840,764",
      "change": "\u2014",
      "status": "PY2027_ONLY (validation-only)"
    }
  ],
  "caveats": [
    "Cross-system comparison: PY2026 from the enrollment database, PY2027 from the Sisense dashboard.",
    "Person identifier equivalence (DB enrollee_id vs Sisense exchg_indiv_identifier) is unresolved.",
    "PY2026 person-type and insurance-type filters are unavailable in dbo.Enrollments_TEST.",
    "PY2026 is an Oct-31-equivalent latest-state dataset; PY2027 is read live during Open Enrollment.",
    "Phase 6D: NEW = OTHER_LIFECYCLE_CLASS; activity bridge = NO_ACTIVITY_BRIDGE (closed).",
    "Application metrics are unavailable from the PY2026 enrollment source.",
    "Historical daily cancellation/termination activity is not reconstructable from snapshots.",
    "Official OE start anchor not proven; calendar-date alignment only."
  ],
  "production_comparable": false
}
