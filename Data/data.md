


{
  "report_kind": "PY2027_ENROLLMENT_ACTIVITY_EVIDENCE",
  "phase": "8B",
  "captured_at_utc": "2026-11-09T13:17:21+00:00",
  "origin": "Natural dashboard JAQL already retained by the discovery observer. No request sent, replayed or altered.",
  "dashboard_requests_seen": 37,
  "summary": {
    "created_counterpart": "NOT_FOUND",
    "confirmed_counterpart": "NOT_FOUND"
  },
  "candidates": [
    {
      "widget": "6a98048ccef60720fe7f9b54",
      "title": "Status is Certified and ReCert Date in the Future",
      "measure": "Certified Assisters",
      "aggregation": [
        "count"
      ],
      "counted_field": "ee_assisters.certification_status",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": false,
      "insurance_type_context": false,
      "status_context": false,
      "filters": [],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b52",
      "title": "Status is Certified and ReCert Date in the Future",
      "measure": "Certified Brokers",
      "aggregation": [
        "count"
      ],
      "counted_field": "brokers.certification_status",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": false,
      "insurance_type_context": false,
      "status_context": false,
      "filters": [],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b37",
      "title": "Enrollment Count",
      "measure": "Agent Assisted Enrollments",
      "aggregation": null,
      "counted_field": "enrollment.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "POLICY",
      "time_nature": "snapshot",
      "coverage_year_context": false,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.broker_role",
          "filter_kind": "member_list"
        },
        {
          "field": "brokers.broker_name",
          "filter_kind": "all"
        },
        {
          "field": "brokers.npn",
          "filter_kind": "all"
        },
        {
          "field": "enrollment.agent_broker_name",
          "filter_kind": "all"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.creation_timestamp",
          "filter_kind": "range"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b3c",
      "title": "Enrolled People By Issuer (Static - Pre-OE)",
      "measure": "Alliant Health Plans, Inc.",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b3c",
      "title": "Enrolled People By Issuer (Static - Pre-OE)",
      "measure": "Ambetter from Peach State Health Plan",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b3c",
      "title": "Enrolled People By Issuer (Static - Pre-OE)",
      "measure": "Anthem Blue Cross and Blue Shield",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b3c",
      "title": "Enrolled People By Issuer (Static - Pre-OE)",
      "measure": "Kaiser Foundation Health Plan of Georgia, Inc.",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b3c",
      "title": "Enrolled People By Issuer (Static - Pre-OE)",
      "measure": "Oscar Health Plan of Georgia",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b3c",
      "title": "Enrolled People By Issuer (Static - Pre-OE)",
      "measure": "Others.",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4e",
      "title": "Enrolled People by Metal Tier (Static-Pre-OE)",
      "measure": "CATASTROPHIC",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4e",
      "title": "Enrolled People by Metal Tier (Static-Pre-OE)",
      "measure": "BRONZE",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4e",
      "title": "Enrolled People by Metal Tier (Static-Pre-OE)",
      "measure": "SILVER",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4e",
      "title": "Enrolled People by Metal Tier (Static-Pre-OE)",
      "measure": "GOLD",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4e",
      "title": "Enrolled People by Metal Tier (Static-Pre-OE)",
      "measure": "PLATINUM",
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6abe90b12d01ccb8699b1e55",
      "title": "Enrollments Marked for Termination",
      "measure": null,
      "aggregation": null,
      "counted_field": null,
      "date_dimension": "enrollment.benefit_end_date",
      "date_grain": "months",
      "date_family": "benefit_end",
      "grain": "UNKNOWN",
      "time_nature": "monthly",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_end_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_DATE_SEMANTICS",
      "reason": "Date field event family 'benefit_end' is not enrollment create or confirmation."
    },
    {
      "widget": "6a98048ccef60720fe7f9b3a",
      "title": "Top 15 Agents by Enrollment Volume",
      "measure": null,
      "aggregation": null,
      "counted_field": null,
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "enrollment.id",
          "filter_kind": "other"
        },
        {
          "field": "enrollment.agent_broker_name",
          "filter_kind": "exclude"
        },
        {
          "field": "enrollment.creation_timestamp",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b6b",
      "title": "Percent of Active Plans by Net Premium",
      "measure": "Percent Net Premiums Under $10",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollment.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "POLICY",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_end_date",
          "filter_kind": "other"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b50",
      "title": "Percent of Active Plans by Net Premium",
      "measure": "Percent Net Premiums Under $1",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollment.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "POLICY",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b50",
      "title": "Percent of Active Plans by Net Premium",
      "measure": "Percent Net Premiums Under $50",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollment.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "POLICY",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b39",
      "title": "Cancelled & Terminated Policies - By Day",
      "measure": "Cancelled Policies",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollment.id",
      "date_dimension": "enrollment.last_update_timestamp",
      "date_grain": "days",
      "date_family": "last_update",
      "grain": "POLICY",
      "time_nature": "daily",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.last_update_timestamp",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "cancelled_terminated_daily",
      "counterpart": null,
      "classification": "WRONG_DATE_SEMANTICS",
      "reason": "Cancelled/Terminated daily activity uses last-update timestamp semantics, not enrollment create or confirmation dates."
    },
    {
      "widget": "6a98048ccef60720fe7f9b39",
      "title": "Cancelled & Terminated Policies - By Day",
      "measure": "Terminated Policies",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollment.id",
      "date_dimension": "enrollment.last_update_timestamp",
      "date_grain": "days",
      "date_family": "last_update",
      "grain": "POLICY",
      "time_nature": "daily",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.last_update_timestamp",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "cancelled_terminated_daily",
      "counterpart": null,
      "classification": "WRONG_DATE_SEMANTICS",
      "reason": "Cancelled/Terminated daily activity uses last-update timestamp semantics, not enrollment create or confirmation dates."
    },
    {
      "widget": "6a98048ccef60720fe7f9b63",
      "title": "EDE Enrollees - Since Previous Day & Today",
      "measure": "Previous Day & Today",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.creation_timestamp",
          "filter_kind": "other"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b32",
      "title": "Enrolled People By Issuer (Current)",
      "measure": "# of unique Exchg Indiv Identifier",
      "aggregation": null,
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b68",
      "title": "EDE Enrollees",
      "measure": "EDE Enrollees Count",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b61",
      "title": "EDE Enrollees % Total",
      "measure": "EDE Enrollees % of Total",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b62",
      "title": "EDE Enrollees",
      "measure": "EDE Enrollees",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b62",
      "title": "EDE Enrollees",
      "measure": "Non - EDE Enrollees",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b5a",
      "title": "Enrolled people by Assistance",
      "measure": "Agent",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b5a",
      "title": "Enrolled people by Assistance",
      "measure": "Assister",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b5a",
      "title": "Enrolled people by Assistance",
      "measure": "None",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b47",
      "title": "Currently Enrolled People",
      "measure": "Currently Enrolled People",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "currently_enrolled",
      "counterpart": null,
      "classification": "WRONG_DATE_SEMANTICS",
      "reason": "Currently Enrolled is a point-in-time population snapshot, not enrollment created or confirmed activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b47",
      "title": "Currently Enrolled People",
      "measure": "% Effectuated",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "currently_enrolled",
      "counterpart": null,
      "classification": "WRONG_DATE_SEMANTICS",
      "reason": "Currently Enrolled is a point-in-time population snapshot, not enrollment created or confirmed activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b6d",
      "title": "Enrolled People by Metal Tier (Current OE)",
      "measure": "CATASTROPHIC",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b6d",
      "title": "Enrolled People by Metal Tier (Current OE)",
      "measure": "BRONZE",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b6d",
      "title": "Enrolled People by Metal Tier (Current OE)",
      "measure": "SILVER",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b6d",
      "title": "Enrolled People by Metal Tier (Current OE)",
      "measure": "GOLD",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b6d",
      "title": "Enrolled People by Metal Tier (Current OE)",
      "measure": "PLATINUM",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b51",
      "title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "measure": "AV -73",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.exchange_eligibility_status",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b51",
      "title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "measure": "AV - 87",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.exchange_eligibility_status",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b51",
      "title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "measure": "AV - 94",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.exchange_eligibility_status",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b51",
      "title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "measure": "AI/AN",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.exchange_eligibility_status",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b51",
      "title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "measure": "CSR Eligible but not SILVER",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.effective_end_date",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.exchange_eligibility_status",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4d",
      "title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "measure": "APTC",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4d",
      "title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "measure": "APTC_CSR; APTC=$0",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4d",
      "title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "measure": "APTC; APTC=$0",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4d",
      "title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "measure": "APTC_CSR",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4d",
      "title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "measure": "CSR",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4d",
      "title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "measure": "QHP",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": ">$0",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$0 - $5",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$5 - $10",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$10 - $25",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$25 - $50",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$50 - $100",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$100 - $200",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$200 - $400",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6ae348982d01ccb8699b7633",
      "title": "Net Premium Amount",
      "measure": "$400+",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b58",
      "title": "Auto Eligibility",
      "measure": "% Successful Auto Elig",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applications.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "medicaid_inbound.created_on",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "APPLICATION grain is not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4a",
      "title": "Medicaid Account Transfers",
      "measure": "Medicaid-originated Account Transfers",
      "aggregation": [
        "count"
      ],
      "counted_field": "medicaid_inbound.created_on",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": false,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4a",
      "title": "Medicaid Account Transfers",
      "measure": "Outbound Account Transfers to Medicaid Office",
      "aggregation": [
        "count"
      ],
      "counted_field": "medicaid_outbound.ssap_application_id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": false,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "APPLICATION grain is not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4a",
      "title": "Medicaid Account Transfers",
      "measure": "Medicaid Responses from Outbound Transfer",
      "aggregation": [
        "count"
      ],
      "counted_field": "medicaid_inbound.created_on",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": false,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b64",
      "title": "Breakdown of EDE Partners with Applications",
      "measure": "Count",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applications.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.source",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "APPLICATION grain is not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL N/A",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL 0%-99%",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL 100%-138%",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL 139%-150%",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL 151%-200%",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL 201%-300%",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL 301%-400%",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b33",
      "title": "Enrolled People By FPL Level",
      "measure": "FPL 400%+",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4b",
      "title": "PMPM - Average Premiums and APTC for Enrollees",
      "measure": "Gross Premium Average",
      "aggregation": [
        "sum",
        "dupcount"
      ],
      "counted_field": "enrollee.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.effective_end_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4b",
      "title": "PMPM - Average Premiums and APTC for Enrollees",
      "measure": "Average APTC",
      "aggregation": [
        "sum",
        "dupcount"
      ],
      "counted_field": "enrollee.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.effective_end_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b4b",
      "title": "PMPM - Average Premiums and APTC for Enrollees",
      "measure": "Average Net Premium",
      "aggregation": [
        "sum",
        "dupcount"
      ],
      "counted_field": "enrollee.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.effective_end_date",
          "filter_kind": "range"
        },
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b44",
      "title": "Applications Started",
      "measure": "Applications Started",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applications.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "applications_started",
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "Applications Started/Submitted are application grain under current evidence."
    },
    {
      "widget": "6a98048ccef60720fe7f9b66",
      "title": "Submitted Applications",
      "measure": "Submitted Applications",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applications.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.application_status",
          "filter_kind": "exclude"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "submitted_applications",
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "Applications Started/Submitted are application grain under current evidence."
    },
    {
      "widget": "6a98048ccef60720fe7f9b67",
      "title": "EDE Applications - Since Previous Day & Today",
      "measure": "Previous Day & Today",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applications.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.creation_timestamp",
          "filter_kind": "other"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "APPLICATION grain is not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b69",
      "title": "Applications submitted via EDE",
      "measure": "EDE Application Count",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applications.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "APPLICATION grain is not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b49",
      "title": "Applications Submitted Daily",
      "measure": "Total Applications",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applications.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applications.application_status",
          "filter_kind": "exclude"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "APPLICATION grain is not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b57",
      "title": "AT Conversion",
      "measure": "% of HHs AT'd that Enrolled",
      "aggregation": [
        "sum",
        "other",
        "count"
      ],
      "counted_field": "ssap_applications.source",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICATION",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": false,
      "filters": [
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "APPLICATION grain is not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b6a",
      "title": "Breakdown of EDE Partners with Enrollees",
      "measure": "# of unique Id",
      "aggregation": null,
      "counted_field": "enrollee.id",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollee.enrollee_status_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "NO_RELEVANT_EVIDENCE",
      "reason": "Observed definition does not contain enrollment create/confirm activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b38",
      "title": "Households Designated to an Agent",
      "measure": "Households Designated",
      "aggregation": [
        "count"
      ],
      "counted_field": "designate_broker.individualid",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "designate_broker.status",
          "filter_kind": "member_list"
        },
        {
          "field": "brokers.broker_name",
          "filter_kind": "all"
        },
        {
          "field": "brokers.npn",
          "filter_kind": "all"
        },
        {
          "field": "enrollment_aud.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b38",
      "title": "Households Designated to an Agent",
      "measure": "Average HH Designated per Agent",
      "aggregation": [
        "count"
      ],
      "counted_field": "designate_broker.brokerid",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "UNKNOWN",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "designate_broker.status",
          "filter_kind": "member_list"
        },
        {
          "field": "brokers.broker_name",
          "filter_kind": "all"
        },
        {
          "field": "brokers.npn",
          "filter_kind": "all"
        },
        {
          "field": "enrollment_aud.benefit_effective_date",
          "filter_kind": "range"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "Relevant create/confirm evidence is incomplete: date_dimension"
    },
    {
      "widget": "6a98048ccef60720fe7f9b55",
      "title": "Ticket by Creation Date (last 60 days)",
      "measure": null,
      "aggregation": null,
      "counted_field": null,
      "date_dimension": "tkm_tickets.creation_timestamp",
      "date_grain": "days",
      "date_family": "unscoped_create",
      "grain": "UNKNOWN",
      "time_nature": "daily",
      "coverage_year_context": true,
      "insurance_type_context": false,
      "status_context": true,
      "filters": [
        {
          "field": "tkm_tickets.creation_timestamp",
          "filter_kind": "other"
        },
        {
          "field": "tkm_tickets.status",
          "filter_kind": "all"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": null,
      "counterpart": null,
      "classification": "PARTIAL_EVIDENCE",
      "reason": "A create/confirm-like date column is present but the table is not a captured enrollment entity; not inferred as an enrollment event."
    },
    {
      "widget": "6a98048ccef60720fe7f9b4f",
      "title": "Applicants On Submitted Applications",
      "measure": "Total Applicants",
      "aggregation": [
        "count"
      ],
      "counted_field": "ssap_applicants.applicant_guid",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "APPLICANT",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "ssap_applicants.applying_for_coverage",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.application_status",
          "filter_kind": "exclude"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "total_applicants",
      "counterpart": null,
      "classification": "WRONG_GRAIN",
      "reason": "Total Applicants is applicant grain, not enrollment-person activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b6e",
      "title": "New/Active/Passive - Enrolled People",
      "measure": "NEW",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "new_active_passive",
      "counterpart": null,
      "classification": "LIFECYCLE_CLASSIFICATION",
      "reason": "New/Active/Passive is a lifecycle classification, not enrollment event activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b6e",
      "title": "New/Active/Passive - Enrolled People",
      "measure": "ACTIVE",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "new_active_passive",
      "counterpart": null,
      "classification": "LIFECYCLE_CLASSIFICATION",
      "reason": "New/Active/Passive is a lifecycle classification, not enrollment event activity."
    },
    {
      "widget": "6a98048ccef60720fe7f9b6e",
      "title": "New/Active/Passive - Enrolled People",
      "measure": "PASSIVE",
      "aggregation": [
        "count"
      ],
      "counted_field": "enrollee.exchg_indiv_identifier",
      "date_dimension": null,
      "date_grain": null,
      "date_family": null,
      "grain": "PERSON",
      "time_nature": "snapshot",
      "coverage_year_context": true,
      "insurance_type_context": true,
      "status_context": true,
      "filters": [
        {
          "field": "enrollee.person_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "ssap_applications.coverage_year",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.insurance_type_description",
          "filter_kind": "member_list"
        },
        {
          "field": "enrollment.enrollment_status_description",
          "filter_kind": "member_list"
        }
      ],
      "known_metric": "new_active_passive",
      "counterpart": null,
      "classification": "LIFECYCLE_CLASSIFICATION",
      "reason": "New/Active/Passive is a lifecycle classification, not enrollment event activity."
    }
  ],
  "final_decision": "PARTIAL_EVIDENCE_ONLY",
  "production_comparable": false,
  "combined_chart_wiring": "NOT_CHANGED",
  "note": "An exact candidate is not promoted into COMPATIBLE_PY2027_ACTIVITY_METRICS or activity_monthly in this phase."
}
