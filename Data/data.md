{
  "generated_at_utc": "2026-11-05T13:34:48Z",
  "scope": "Naturally occurring dashboard JAQL requests only; structure only, no values",
  "observed": {
    "jaql_posts": 174,
    "out_of_scope": 46,
    "widgets": 49,
    "widgets_dropped": 0,
    "retention_skipped": 0
  },
  "metrics": [
    {
      "metric_id": "applications_started",
      "label": "Applications Started",
      "module": "applications",
      "state": "VERIFIED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b44"
      ],
      "match_sources": [
        "widget title",
        "measure title"
      ],
      "reason": "Verified catalog metric; exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "submitted_applications",
      "label": "Submitted Applications",
      "module": "applications",
      "state": "VERIFIED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b66"
      ],
      "match_sources": [
        "widget title",
        "measure title"
      ],
      "reason": "Verified catalog metric; exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "total_applicants",
      "label": "Total Applicants",
      "module": "applications",
      "state": "DISCOVERED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b4f"
      ],
      "match_sources": [
        "measure title"
      ],
      "reason": "Exact label match in one widget; not approved for production",
      "control": null
    },
    {
      "metric_id": "currently_enrolled_people",
      "label": "Currently Enrolled People",
      "module": "enrollment",
      "state": "VERIFIED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b47"
      ],
      "match_sources": [
        "widget title",
        "measure title"
      ],
      "reason": "Verified catalog metric; strict control check passed",
      "control": "PASS"
    },
    {
      "metric_id": "percent_effectuated",
      "label": "% Effectuated",
      "module": "enrollment",
      "state": "VERIFIED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b47"
      ],
      "match_sources": [
        "measure title"
      ],
      "reason": "Verified catalog metric; strict control check passed",
      "control": "PASS"
    },
    {
      "metric_id": "new_enrolled",
      "label": "New",
      "module": "enrollment",
      "state": "VERIFIED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b6e"
      ],
      "match_sources": [
        "measure title"
      ],
      "reason": "Verified catalog metric; exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "active_enrolled",
      "label": "Active",
      "module": "enrollment",
      "state": "VERIFIED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b6e"
      ],
      "match_sources": [
        "measure title"
      ],
      "reason": "Verified catalog metric; exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "passive_enrolled",
      "label": "Passive",
      "module": "enrollment",
      "state": "VERIFIED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b6e"
      ],
      "match_sources": [
        "measure title"
      ],
      "reason": "Verified catalog metric; exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "cancelled",
      "label": "Cancelled",
      "module": "enrollment",
      "state": "PENDING",
      "widget_ids": [],
      "match_sources": [],
      "reason": "No exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "terminated",
      "label": "Terminated",
      "module": "enrollment",
      "state": "PENDING",
      "widget_ids": [],
      "match_sources": [],
      "reason": "No exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "enrolled_cancelled",
      "label": "Enrolled & Cancelled",
      "module": "enrollment",
      "state": "PENDING",
      "widget_ids": [],
      "match_sources": [],
      "reason": "No exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "cancelled_not_enrolled",
      "label": "Cancelled - Not Enrolled",
      "module": "enrollment",
      "state": "PENDING",
      "widget_ids": [],
      "match_sources": [],
      "reason": "No exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "cancelled_policies_daily",
      "label": "Cancelled Policies",
      "module": "enrollment",
      "state": "PENDING",
      "widget_ids": [],
      "match_sources": [],
      "reason": "No exact label match in the dashboard's own requests",
      "control": null
    },
    {
      "metric_id": "terminated_policies_daily",
      "label": "Terminated Policies",
      "module": "enrollment",
      "state": "PENDING",
      "widget_ids": [],
      "match_sources": [],
      "reason": "No exact label match in the dashboard's own requests",
      "control": null
    }
  ],
  "widget_inventory": [
    {
      "widget_id": "6a98048ccef60720fe7f9b4e",
      "widget_title": "Enrolled People by Metal Tier (Static-Pre-OE)",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CATASTROPHIC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "CATASTROPHIC",
        "BRONZE",
        "SILVER",
        "GOLD",
        "PLATINUM"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:fed0dd9905d902bb4cd5488b2f414c1dae0696bad18dfe164dcbdc13b6de74f5"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b54",
      "widget_title": "Status is Certified and ReCert Date in the Future",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 1,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Certified Assisters",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Certified Assisters"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:37247be4ad9a2c0a7dce4de30e4d4c4f62e5c17cdb0bec4c7470faeceb7adddd"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b52",
      "widget_title": "Status is Certified and ReCert Date in the Future",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 1,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Certified Brokers",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Certified Brokers"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:3c331d95d4356cdf2e58ce6f8a2c46c257ad2d40b200a585cbc4828113cfa3d2"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b63",
      "widget_title": "EDE Enrollees - Since Previous Day & Today",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Previous Day & Today",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Previous Day & Today"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:2807cddae3215eeb9e7a82f76ce3f7253f047402a5278ce1dde3e0b7fb87ff7f"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b68",
      "widget_title": "EDE Enrollees",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Enrollees Count",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "EDE Enrollees Count"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:2cc6f5fdb5c5c066ab7105fc2a0d3ad37d9cf7626bc292d80ad8b119f3c6c611"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b61",
      "widget_title": "EDE Enrollees % Total",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Enrollees % of Total",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "EDE Enrollees % of Total"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:999a271eb5ddf85689d0b3d1dafc73d63c168ec1f8833ab58d0844149f37093d"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b62",
      "widget_title": "EDE Enrollees",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Enrollees",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Non - EDE Enrollees",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "EDE Enrollees",
        "Non - EDE Enrollees"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:18a221a7a0087e724b2038ada62e8acde34b3400a7ccd2af4a1e231e25b9cff3"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b47",
      "widget_title": "Currently Enrolled People",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Currently Enrolled People",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% Effectuated",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Currently Enrolled People",
        "% Effectuated"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:96f5ed54eedaa32f4c8cb934b71e3d15c1e3fa0099bc58beb71f8a76744fbbbc"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6d",
      "widget_title": "Enrolled People by Metal Tier (Current OE)",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 11,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CATASTROPHIC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Enrollment Status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "CATASTROPHIC",
        "BRONZE",
        "SILVER",
        "GOLD",
        "PLATINUM"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:99de344ece47201e76a13823700fc7a3c38c096a5bfc87944f6579eb95855377"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 2,
      "definition_fingerprint": "sha256:2206f3a8ff6b93ef2f372698f21b0ddced837c8d9bcccfcfdd137b16238021c1"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:d2767b179ead780297c8e8da9dd190a05750fca69b93ec6244a2efebc1baae07"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:773f171af88a148ba87887a726f086be5eba1b84b89840b5a52fa301e6ef75af"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:41a23330c6d4940b771fa1f0add9195a5901d4e6fa6b1db0e31a3f68633bbc7a"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 2,
      "definition_fingerprint": "sha256:4c5d892806cc73d6a11377441d3d52d8d3959056196a0c4ff51984e2197f95a6"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:2dbb2bfd0a4b2d8526ae7a9006f98c800dbf874c3fcb2e4d79830d7eb281dca3"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:cf04720d26c0d130beca2606c0639b3222f9db14cbe9bc9acfb612bd0d4966fb"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:32a6c90ca5795f24f0cf435a146c650763721ccc30e0dcf7901d571b37e6f43f"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 2,
      "definition_fingerprint": "sha256:ac042c3c0da45423456903e7bf35c72c17cfd6f3ce773e80babfcf085bf7607f"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:1d645a7394e213700b9b12c74a948d64f75dd0faba3bfb1334d2ecc3ad499957"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:c99ab84067cfcec8bcf6a42e24fe09c9673f6a70bfccfe228ee8a460c3310946"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:53af0535ef474b7c0cb7d16d75b3c121715394a32ad2cf8cf189364889318db9"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6a",
      "widget_title": "Breakdown of EDE Partners with Enrollees",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "EDE Partner",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "# of unique Id",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "# of unique Id"
      ],
      "dimension_titles": [
        "EDE Partner"
      ],
      "dimension_columns": [
        "business_name"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "CATEGORICAL",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:5256123e222cdbe47b22a82b9feb0dc7e09276e472ced86ab5cc66661bf5ea8e"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b64",
      "widget_title": "Breakdown of EDE Partners with Applications",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "EDE Partner",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Count",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "source",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Count"
      ],
      "dimension_titles": [
        "EDE Partner"
      ],
      "dimension_columns": [
        "business_name"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "CATEGORICAL",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:b4052b60574e8c24bc8f8c2d2c3bdddff0e3570da2ed9faebb0de531da4175b1"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4f",
      "widget_title": "Applicants On Submitted Applications",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Total Applicants",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "applying_for_coverage",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Total Applicants"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:9e16eec0048d28c30e05539efccf87a17d7cfb7a08abd613f1082ba58ceaad3d"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 2,
      "definition_fingerprint": "sha256:39c911450c518dd05f6d0f7fb39d85f1bd0845a38317f64cc6349de34218196c"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:46b81436a05cf918b76e10f7b856ac45fa4e3fa3974ab13a337283dfb40094df"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:ea410d73974ae63fd2150b22ac07f3f8034f60cdbd53489cbbbf1134e05d7b25"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:7e4ab2c630e97224f199d59c8f2b2ea6dbbe97f3fe511f8cf21a47c84fa2c4a7"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b58",
      "widget_title": "Auto Eligibility",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% Successful Auto Elig",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in created_on",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "% Successful Auto Elig"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:7cce930f6add0ca97d9275e7e289173d4a209acddf5f4e054ea55ed268e03f35"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $10"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 2,
      "definition_fingerprint": "sha256:169e13cd71e9bd5a9f4e7447ec09e0427012970b0098742679d4ccb167b9965d"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $10"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:301bd5cf67e4730ffd5d48b03390d9720df30775462ebab4af2126b704f6365d"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $10"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:69bb6559de87e2dfdd43d95ac9f6df110afdfa70733b1219f61685be7a5260d5"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $10"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:50db29f9a44adb5ad826c7bd88d4609cc82e4649ef9770047f6f3ad42cb2745b"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 2,
      "definition_fingerprint": "sha256:59a11958984425c060ec55c28289784214003a46c97f0990e9069cec46ae9f29"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:b2a1e69a3d1388115c3f691bd63758c8ff9150fd855e67f32cfd9a5ea61893bf"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:edf313fa0717a8a86bc4497090e71366d3319b286ff876e7e8a5f3257f936db0"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:d32f280bae24393af1d87da009488ac6d1c0001687c48153fd0f7e9350473209"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b57",
      "widget_title": "AT Conversion",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 3,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% of HHs AT'd that Enrolled",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "% of HHs AT'd that Enrolled"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:49f0cc215d005f4db0bd936ecc1e602350b042c5c4a4e01567510fe5782ae0ac"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 2,
      "definition_fingerprint": "sha256:d1e4a0e1902728fd5dc6ae87f5bf0058c4fd9406601510129996054d9a81180a"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:e07d49ac24cb35ede91990ac48fdba8a3c12f341b5a2420dc2420964d43a2354"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:144bbea7153399f53a84f5497858ae1e4649e9e6f23164db0408910227072df3"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:ecb063be4c00040a59dcc76acc4aee001f39e428c8c14b7cccbdaf37dfcb38b9"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b44",
      "widget_title": "Applications Started",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 3,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Applications Started",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Applications Started"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:6549bd753a13a444948c5ffc568abe6fb08d5da208e6b3506046e6790fe1aee3"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b66",
      "widget_title": "Submitted Applications",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Submitted Applications",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Submitted Applications"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:ed7df5cce47214b306d632daa6601ab03779f253987fb44b891fa6404c8441a7"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b69",
      "widget_title": "Applications submitted via EDE",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 3,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Application Count",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "EDE Application Count"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:0f969f1a138cbd44841dfb51812dfabd1c00056ba88523a045967455a85ea6b1"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b49",
      "widget_title": "Applications Submitted Daily",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Years in creation_timestamp",
          "date_level": "years"
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Total Applications",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Total Applications"
      ],
      "dimension_titles": [
        "Days in creation_timestamp",
        "Years in creation_timestamp"
      ],
      "dimension_columns": [
        "creation_timestamp",
        "creation_timestamp"
      ],
      "has_date_dimension": true,
      "date_grain": null,
      "response_shape": "TIME_SERIES",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:fcb0ef22cc5afdab57b0e0c59c63c44986e4cbdd07fd1c5a19de5532fec4f2ec"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b67",
      "widget_title": "EDE Applications - Since Previous Day & Today",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Previous Day & Today",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Previous Day & Today"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:57bf938f03cbf3663ca7a428b340b4f3164ab7ebc4fa5ac81be810ff4742aaf7"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b55",
      "widget_title": "Ticket by Creation Date (last 60 days)",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "status",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "# of unique tkm_ticket_id",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        }
      ],
      "measure_titles": [],
      "dimension_titles": [
        "Days in creation_timestamp",
        "status",
        "# of unique tkm_ticket_id"
      ],
      "dimension_columns": [
        "creation_timestamp",
        "status",
        "tkm_ticket_id"
      ],
      "has_date_dimension": true,
      "date_grain": "days",
      "response_shape": "TIME_SERIES",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:29bac02aa165cd836e79b7c60edbbe22bbb8689afe2b5c45550264e8949d369a"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4a",
      "widget_title": "Medicaid Account Transfers",
      "datasource_id": "localhost_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Medicaid-originated Account Transfers",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Outbound Account Transfers to Medicaid Office",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Medicaid Responses from Outbound Transfer",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        }
      ],
      "measure_titles": [
        "Medicaid-originated Account Transfers",
        "Outbound Account Transfers to Medicaid Office",
        "Medicaid Responses from Outbound Transfer"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 5,
      "definition_fingerprint": "sha256:abc72c8877a80aeb9e79a6b50c12ce9cb009fb72d7bcf4aee0f087f295a3e42d"
    }
  ],
  "cancellation_source_identification": [],
  "widgets": [
    {
      "widget_id": "6a98048ccef60720fe7f9b4e",
      "widget_title": "Enrolled People by Metal Tier (Static-Pre-OE)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "CATASTROPHIC",
        "BRONZE",
        "SILVER",
        "GOLD",
        "PLATINUM"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CATASTROPHIC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:fed0dd9905d902bb4cd5488b2f414c1dae0696bad18dfe164dcbdc13b6de74f5",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 5,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b54",
      "widget_title": "Status is Certified and ReCert Date in the Future",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Certified Assisters"
      ],
      "dimensions": [],
      "filter_count": 0,
      "dashboard_filter_count": 0,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 1,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Certified Assisters",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:37247be4ad9a2c0a7dce4de30e4d4c4f62e5c17cdb0bec4c7470faeceb7adddd",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b52",
      "widget_title": "Status is Certified and ReCert Date in the Future",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Certified Brokers"
      ],
      "dimensions": [],
      "filter_count": 0,
      "dashboard_filter_count": 0,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 1,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Certified Brokers",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:3c331d95d4356cdf2e58ce6f8a2c46c257ad2d40b200a585cbc4828113cfa3d2",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b63",
      "widget_title": "EDE Enrollees - Since Previous Day & Today",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Previous Day & Today"
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Previous Day & Today",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:2807cddae3215eeb9e7a82f76ce3f7253f047402a5278ce1dde3e0b7fb87ff7f",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b68",
      "widget_title": "EDE Enrollees",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "EDE Enrollees Count"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Enrollees Count",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:2cc6f5fdb5c5c066ab7105fc2a0d3ad37d9cf7626bc292d80ad8b119f3c6c611",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b61",
      "widget_title": "EDE Enrollees % Total",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "EDE Enrollees % of Total"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Enrollees % of Total",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:999a271eb5ddf85689d0b3d1dafc73d63c168ec1f8833ab58d0844149f37093d",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b62",
      "widget_title": "EDE Enrollees",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "EDE Enrollees",
        "Non - EDE Enrollees"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Enrollees",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Non - EDE Enrollees",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:18a221a7a0087e724b2038ada62e8acde34b3400a7ccd2af4a1e231e25b9cff3",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 2,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b47",
      "widget_title": "Currently Enrolled People",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Currently Enrolled People",
        "% Effectuated"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {
        "currently enrolled people": [
          "widget title",
          "measure title"
        ],
        "% effectuated": [
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Currently Enrolled People",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% Effectuated",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:96f5ed54eedaa32f4c8cb934b71e3d15c1e3fa0099bc58beb71f8a76744fbbbc",
      "control": "PASS",
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 2,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6d",
      "widget_title": "Enrolled People by Metal Tier (Current OE)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "CATASTROPHIC",
        "BRONZE",
        "SILVER",
        "GOLD",
        "PLATINUM"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 11,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CATASTROPHIC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Enrollment Status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:99de344ece47201e76a13823700fc7a3c38c096a5bfc87944f6579eb95855377",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 5,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 2,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:2206f3a8ff6b93ef2f372698f21b0ddced837c8d9bcccfcfdd137b16238021c1",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 5,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:d2767b179ead780297c8e8da9dd190a05750fca69b93ec6244a2efebc1baae07",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 5,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:773f171af88a148ba87887a726f086be5eba1b84b89840b5a52fa301e6ef75af",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 5,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b51",
      "widget_title": "Enrolled CSR-Eligible people by AV: 73 / 87 / 94 / AI/AN / Eligible But Not in Silver",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "AV -73",
        "AV - 87",
        "AV - 94",
        "AI/AN",
        "CSR Eligible but not SILVER"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV -73",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:41a23330c6d4940b771fa1f0add9195a5901d4e6fa6b1db0e31a3f68633bbc7a",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 5,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 2,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:4c5d892806cc73d6a11377441d3d52d8d3959056196a0c4ff51984e2197f95a6",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:2dbb2bfd0a4b2d8526ae7a9006f98c800dbf874c3fcb2e4d79830d7eb281dca3",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:cf04720d26c0d130beca2606c0639b3222f9db14cbe9bc9acfb612bd0d4966fb",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 9,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:32a6c90ca5795f24f0cf435a146c650763721ccc30e0dcf7901d571b37e6f43f",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 2,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:ac042c3c0da45423456903e7bf35c72c17cfd6f3ce773e80babfcf085bf7607f",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 6,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:1d645a7394e213700b9b12c74a948d64f75dd0faba3bfb1334d2ecc3ad499957",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 6,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:c99ab84067cfcec8bcf6a42e24fe09c9673f6a70bfccfe228ee8a460c3310946",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 6,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4d",
      "widget_title": "Enrolled People by Financial Assistance Eligiblity(expand for full chart)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "APTC",
        "APTC_CSR; APTC=$0",
        "APTC; APTC=$0",
        "APTC_CSR",
        "CSR",
        "QHP"
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:53af0535ef474b7c0cb7d16d75b3c121715394a32ad2cf8cf189364889318db9",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 6,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6a",
      "widget_title": "Breakdown of EDE Partners with Enrollees",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "# of unique Id"
      ],
      "dimensions": [
        {
          "title": "EDE Partner",
          "date": false,
          "table": "enrollment_partners",
          "column": "business_name"
        }
      ],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "EDE Partner",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "# of unique Id",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:5256123e222cdbe47b22a82b9feb0dc7e09276e472ced86ab5cc66661bf5ea8e",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "CATEGORICAL",
        "rows": 13,
        "value_cells": 26,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b64",
      "widget_title": "Breakdown of EDE Partners with Applications",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Count"
      ],
      "dimensions": [
        {
          "title": "EDE Partner",
          "date": false,
          "table": "enrollment_partners",
          "column": "business_name"
        }
      ],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "EDE Partner",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Count",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "source",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:b4052b60574e8c24bc8f8c2d2c3bdddff0e3570da2ed9faebb0de531da4175b1",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "CATEGORICAL",
        "rows": 13,
        "value_cells": 26,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4f",
      "widget_title": "Applicants On Submitted Applications",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Total Applicants"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {
        "total applicants": [
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Total Applicants",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "applying_for_coverage",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:9e16eec0048d28c30e05539efccf87a17d7cfb7a08abd613f1082ba58ceaad3d",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 3,
      "observations": 2,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:39c911450c518dd05f6d0f7fb39d85f1bd0845a38317f64cc6349de34218196c",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:46b81436a05cf918b76e10f7b856ac45fa4e3fa3974ab13a337283dfb40094df",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:ea410d73974ae63fd2150b22ac07f3f8034f60cdbd53489cbbbf1134e05d7b25",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:7e4ab2c630e97224f199d59c8f2b2ea6dbbe97f3fe511f8cf21a47c84fa2c4a7",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b58",
      "widget_title": "Auto Eligibility",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "% Successful Auto Elig"
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% Successful Auto Elig",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in created_on",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:7cce930f6add0ca97d9275e7e289173d4a209acddf5f4e054ea55ed268e03f35",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $10"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 2,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:169e13cd71e9bd5a9f4e7447ec09e0427012970b0098742679d4ccb167b9965d",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $10"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:301bd5cf67e4730ffd5d48b03390d9720df30775462ebab4af2126b704f6365d",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $10"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:69bb6559de87e2dfdd43d95ac9f6df110afdfa70733b1219f61685be7a5260d5",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $10"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $10",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:50db29f9a44adb5ad826c7bd88d4609cc82e4649ef9770047f6f3ad42cb2745b",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 3,
      "observations": 2,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:59a11958984425c060ec55c28289784214003a46c97f0990e9069cec46ae9f29",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 2,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:b2a1e69a3d1388115c3f691bd63758c8ff9150fd855e67f32cfd9a5ea61893bf",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 2,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:edf313fa0717a8a86bc4497090e71366d3319b286ff876e7e8a5f3257f936db0",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 2,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 5,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $1",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:d32f280bae24393af1d87da009488ac6d1c0001687c48153fd0f7e9350473209",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 2,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b57",
      "widget_title": "AT Conversion",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "% of HHs AT'd that Enrolled"
      ],
      "dimensions": [],
      "filter_count": 2,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 3,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% of HHs AT'd that Enrolled",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:49f0cc215d005f4db0bd936ecc1e602350b042c5c4a4e01567510fe5782ae0ac",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 2,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {
        "new": [
          "measure title"
        ],
        "active": [
          "measure title"
        ],
        "passive": [
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:d1e4a0e1902728fd5dc6ae87f5bf0058c4fd9406601510129996054d9a81180a",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {
        "new": [
          "measure title"
        ],
        "active": [
          "measure title"
        ],
        "passive": [
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:e07d49ac24cb35ede91990ac48fdba8a3c12f341b5a2420dc2420964d43a2354",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {
        "new": [
          "measure title"
        ],
        "active": [
          "measure title"
        ],
        "passive": [
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:144bbea7153399f53a84f5497858ae1e4649e9e6f23164db0408910227072df3",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 4,
      "structure_changed": true,
      "matches": {
        "new": [
          "measure title"
        ],
        "active": [
          "measure title"
        ],
        "passive": [
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "NEW",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:ecb063be4c00040a59dcc76acc4aee001f39e428c8c14b7cccbdaf37dfcb38b9",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b44",
      "widget_title": "Applications Started",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Applications Started"
      ],
      "dimensions": [],
      "filter_count": 2,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {
        "applications started": [
          "widget title",
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 3,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Applications Started",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:6549bd753a13a444948c5ffc568abe6fb08d5da208e6b3506046e6790fe1aee3",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b66",
      "widget_title": "Submitted Applications",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Submitted Applications"
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {
        "submitted applications": [
          "widget title",
          "measure title"
        ]
      },
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Submitted Applications",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:ed7df5cce47214b306d632daa6601ab03779f253987fb44b891fa6404c8441a7",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b69",
      "widget_title": "Applications submitted via EDE",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "EDE Application Count"
      ],
      "dimensions": [],
      "filter_count": 2,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 3,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "EDE Application Count",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:0f969f1a138cbd44841dfb51812dfabd1c00056ba88523a045967455a85ea6b1",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b49",
      "widget_title": "Applications Submitted Daily",
      "widget_type": "chart/line",
      "datasource": "MAIN",
      "measures": [
        "Total Applications"
      ],
      "dimensions": [
        {
          "title": "Days in creation_timestamp",
          "date": true,
          "table": "ssap_applications",
          "column": "creation_timestamp"
        },
        {
          "title": "Years in creation_timestamp",
          "date": true,
          "table": "ssap_applications",
          "column": "creation_timestamp"
        }
      ],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Years in creation_timestamp",
          "date_level": "years"
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Total Applications",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": true,
      "date_grain": null,
      "definition_fingerprint": "sha256:fcb0ef22cc5afdab57b0e0c59c63c44986e4cbdd07fd1c5a19de5532fec4f2ec",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "TIME_SERIES",
        "rows": 8,
        "value_cells": 24,
        "time_points": 8,
        "first_period": "012orADaAe",
        "last_period": "012orADaAe",
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b67",
      "widget_title": "EDE Applications - Since Previous Day & Today",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Previous Day & Today"
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Previous Day & Today",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:57bf938f03cbf3663ca7a428b340b4f3164ab7ebc4fa5ac81be810ff4742aaf7",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "SINGLE_INDICATOR",
        "rows": 1,
        "value_cells": 1,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b55",
      "widget_title": "Ticket by Creation Date (last 60 days)",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [],
      "dimensions": [
        {
          "title": "Days in creation_timestamp",
          "date": true,
          "table": "tkm_tickets",
          "column": "creation_timestamp"
        },
        {
          "title": "status",
          "date": false,
          "table": "tkm_tickets",
          "column": "status"
        },
        {
          "title": "# of unique tkm_ticket_id",
          "date": false,
          "table": "tkm_tickets",
          "column": "tkm_ticket_id"
        }
      ],
      "filter_count": 3,
      "dashboard_filter_count": 0,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "status",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "# of unique tkm_ticket_id",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "date_level": "days"
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "status",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        }
      ],
      "has_date_dimension": true,
      "date_grain": "days",
      "definition_fingerprint": "sha256:29bac02aa165cd836e79b7c60edbbe22bbb8689afe2b5c45550264e8949d369a",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "TIME_SERIES",
        "rows": 204,
        "value_cells": 612,
        "time_points": 204,
        "first_period": "012orADaAe",
        "last_period": "012orADaAe",
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b4a",
      "widget_title": "Medicaid Account Transfers",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [
        "Medicaid-originated Account Transfers",
        "Outbound Account Transfers to Medicaid Office",
        "Medicaid Responses from Outbound Transfer"
      ],
      "dimensions": [],
      "filter_count": 1,
      "dashboard_filter_count": 1,
      "observations": 5,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 4,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Medicaid-originated Account Transfers",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Outbound Account Transfers to Medicaid Office",
          "date_level": null
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Medicaid Responses from Outbound Transfer",
          "date_level": null
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "date_level": null
        }
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "definition_fingerprint": "sha256:abc72c8877a80aeb9e79a6b50c12ce9cb009fb72d7bcf4aee0f087f295a3e42d",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 3,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    }
  ]
}
