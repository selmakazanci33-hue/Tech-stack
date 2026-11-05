

.\.venv\Scripts\python.exe main.py
2026-11-05 08:53:38,982 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 08:53:39,607 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 08:53:45,994 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 08:53:45,995 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-05 08:53:51,375 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 08:53:51,451 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-05 08:53:56,152 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-05 08:54:05,061 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 08:54:05,061 [INFO] sisense.auth: Authentication successful
2026-11-05 08:54:05,062 [INFO] sisense.auth: Sisense session verified
2026-11-05 08:54:05,160 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-05 08:54:05,161 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: False)
2026-11-05 08:54:05,161 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 10 finished and kept for inspection
2026-11-05 08:54:05,226 [INFO] sisense.diagnostics: [debug] Inspected 10 dashboard JAQL POST(s); statuses: ['200']
2026-11-05 08:54:05,226 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 08:54:05,226 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-05 08:54:05,226 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 08:54:05,231 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-05 08:54:05,231 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-05 08:54:05,231 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-05 08:54:05,231 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-05 08:54:05,231 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-05 08:54:05,232 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-05 08:54:05,257 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 08:54:05,258 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-05 08:54:10,645 [INFO] oe_trend_pipeline: Passive proof: 37 dashboard JAQL POST(s) seen, 1 for the verified widget; parse PASS
2026-11-05 08:54:11,100 [INFO] oe_trend_pipeline: Passive production metrics: percent_effectuated EXTRACTED, applications_started EXTRACTED, submitted_applications EXTRACTED, new_enrolled EXTRACTED, active_enrolled EXTRACTED, passive_enrolled EXTRACTED
Passive observation window is active.
2026-11-05 08:54:11,101 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-05 08:54:11,101 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-05 08:54:11,102 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-05 08:54:11,102 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.

2026-11-05 08:55:19,657 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-05 08:55:19,658 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-05 08:55:19,658 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 08:55:20,245 [INFO] sisense.client: HTTP 200 (0.59 sec)
2026-11-05 08:55:20,245 [INFO] sisense.client: Value cells: 2
2026-11-05 08:55:20,245 [INFO] sisense.client: Duration: 0.59 sec
2026-11-05 08:55:20,332 [INFO] oe_trend_pipeline: Wave 1 discovery: 37 dashboard JAQL POST(s), 28 widget(s), 28 definition(s); VERIFIED 7, DISCOVERED 1, PENDING 6
2026-11-05 08:55:20,347 [INFO] oe_trend_pipeline: Wave 1 discovery report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html
2026-11-05 08:55:20,383 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 7, SERIES_EXTRACTED 0, NOT_AVAILABLE 0, VALIDATION_FAILED 4, PENDING 2
2026-11-05 08:55:20,895 [INFO] oe_trend_pipeline: Current PY2027 value: 793517
2026-11-05 08:55:20,896 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-05 08:55:20,896 [INFO] oe_trend_pipeline: Difference: 793517 - 791826 = +1691
2026-11-05 08:55:20,896 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 793517, "retrieved_at": "2026-11-05T13:55:20+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

============================================================
Georgia Access — PY2027 Sisense Retrieval
============================================================

Authentication        PASS
Dashboard             PY 2027 - OE Executive Dashboard
Datasource            MAIN
Metric                Currently Enrolled People
Coverage Year         2027
Current Value         793,517
Manual Baseline       791,826
Retrieved             2026-11-05T13:55:20+00:00
JAQL Status           PASS

============================================================

Passive JAQL proof (validation only — application value is authoritative)
Passive observation:
  Candidate: FOUND
  Dashboard: MATCH
  Widget: MATCH
  Datasource: MATCH
  Primary Measure: MATCH
  Filters: MATCH
  HTTP Status: 200
  Parse: PASS

Passive Value: 793,517
Application Value: 793,517
Difference: 0
Passive Validation: PASS

============================================================
2026-11-05 08:55:20,899 [INFO] oe_trend_pipeline: Passive Validation: PASS

Wave 1 discovery (developer review only — not used for snapshots or the executive report)
  VERIFIED    7
  DISCOVERED  1
  PENDING     6
  Report      C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html

============================================================

Wave 1 runtime validation (developer review only — not stored, not in the executive report)
  Applications Started        VALUE_EXTRACTED     566,051
  Submitted Applications      VALUE_EXTRACTED     565,223
  Total Applicants            VALUE_EXTRACTED     832,839
  % Effectuated               VALUE_EXTRACTED     95.72% (raw 0.957228)
  New                         VALUE_EXTRACTED     2,510
  Active                      VALUE_EXTRACTED     35,336
  Passive                     VALUE_EXTRACTED     755,947
  Enrolled & Cancelled        VALIDATION_FAILED   
  Cancelled - Not Enrolled    VALIDATION_FAILED   
  Cancelled Policies          VALIDATION_FAILED   
  Terminated Policies         VALIDATION_FAILED   
  Cancelled                   PENDING             
  Terminated                  PENDING             
  Currently Enrolled identity IDENTITY_PASS
  Currently Enrolled Control  EXACT_VALUE_MATCH
  Promotion evidence (validation-only candidates; nothing is promoted automatically)
    Total Applicants          STABLE        ELIGIBLE
  Cancellation / termination evidence (validation only; not production)
    Enrolled & Cancelled      MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Cancelled - Not Enrolled  MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Cancelled Policies        MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Terminated Policies       MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Fingerprint observation: RECORDED
  Report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\validation\wave1_runtime_validation.html

============================================================
2026-11-05 08:55:20,922 [INFO] oe_trend_pipeline: Currently Enrolled control: EXACT_VALUE_MATCH (IDENTITY_PASS)
Currently Enrolled    793,517
Snapshot              SKIPPED (DUPLICATE_SLOT: kept existing snapshot from Nov 05, 2026 13:09 UTC)
Historical Snapshots  7
Data Status           LIVE
Previous Snapshot Change+0 (+0.00%)
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Overall Data Status   LIVE
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
Verified dashboard metrics (passive, zero additional requests)
  % Effectuated               LIVE           95.72%  snapshot DUPLICATE_SLOT
  Applications Started        LIVE           566,051  snapshot DUPLICATE_SLOT
  Submitted Applications      LIVE           565,223  snapshot DUPLICATE_SLOT
  New                         LIVE           2,510  snapshot DUPLICATE_SLOT
  Active                      LIVE           35,336  snapshot DUPLICATE_SLOT
  Passive                     LIVE           755,947  snapshot DUPLICATE_SLOT

  {
  "generated_at_utc": "2026-11-05T13:55:20Z",
  "scope": "Naturally occurring dashboard JAQL requests only; structure only, no values",
  "observed": {
    "jaql_posts": 37,
    "out_of_scope": 9,
    "widgets": 28,
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
          "column_title": "count([Id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Applications Started"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "count([Id])",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "ssap_applications.id"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "column_title": "application_status",
          "table": "ssap_applications",
          "column": "application_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Submitted Applications"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "application_status",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "ssap_applications.id"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:ed7df5cce47214b306d632daa6601ab03779f253987fb44b891fa6404c8441a7"
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
          "column_title": "(count([applicant_guid]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applicants",
              "column": "applicant_guid"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "applying_for_coverage",
          "column_title": null,
          "table": "ssap_applicants",
          "column": "applying_for_coverage",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "column_title": "application_status",
          "table": "ssap_applications",
          "column": "application_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Total Applicants"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([applicant_guid]))",
        "application_status",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "ssap_applicants.applicant_guid"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:9e16eec0048d28c30e05539efccf87a17d7cfb7a08abd613f1082ba58ceaad3d"
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
          "column_title": null,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Years in creation_timestamp",
          "column_title": null,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "date_level": "years",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Total Applications",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "column_title": null,
          "table": "ssap_applications",
          "column": "application_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "ssap_applications.id"
      ],
      "has_date_dimension": true,
      "date_grain": null,
      "response_shape": "TIME_SERIES",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:fcb0ef22cc5afdab57b0e0c59c63c44986e4cbdd07fd1c5a19de5532fec4f2ec"
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
          "column_title": "Count([exchg_indiv_identifier])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% Effectuated",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": null,
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": null,
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Currently Enrolled People",
        "% Effectuated"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "Count([exchg_indiv_identifier])",
        "Formula",
        "benefit_effective_date",
        "person_type_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "enrollment.enrollment_status_description"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:96f5ed54eedaa32f4c8cb934b71e3d15c1e3fa0099bc58beb71f8a76744fbbbc"
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "Formula",
        "person_type_description",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "cmr_household.creation_timestamp",
        "enrollee.exchg_indiv_identifier",
        "ssap_applications.creation_timestamp"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:d1e4a0e1902728fd5dc6ae87f5bf0058c4fd9406601510129996054d9a81180a"
    },
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
          "column_title": "317",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "column_title": "345602",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "column_title": "396983",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "column_title": "43414",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "column_title": "1127",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "317",
        "345602",
        "396983",
        "43414",
        "1127",
        "benefit_effective_date",
        "person_type_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:fed0dd9905d902bb4cd5488b2f414c1dae0696bad18dfe164dcbdc13b6de74f5"
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Enrollment Status",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "Formula",
        "benefit_effective_date",
        "enrollee_status_description",
        "person_type_description",
        "enrollment_status_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.effective_end_date",
        "enrollee.exchg_indiv_identifier",
        "enrollment.plan_level",
        "enrollment.enrollment_status_description"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:99de344ece47201e76a13823700fc7a3c38c096a5bfc87944f6579eb95855377"
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
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([id]), [net_premium_amt1])\n/ count([id])",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollment.id",
        "enrollment.net_premium_amt"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:59a11958984425c060ec55c28289784214003a46c97f0990e9069cec46ae9f29"
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
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "column_title": null,
          "table": "enrollment",
          "column": "benefit_end_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Percent Net Premiums Under $10"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([id]), [net_premium_amt1])\n/ count([id])",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollment.id",
        "enrollment.net_premium_amt"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:169e13cd71e9bd5a9f4e7447ec09e0427012970b0098742679d4ccb167b9965d"
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ee_assisters",
              "column": "certification_status"
            },
            {
              "table": "ee_assisters",
              "column": "id"
            }
          ]
        }
      ],
      "measure_titles": [
        "Certified Assisters"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [],
      "context_fields": [
        "ee_assisters.certification_status",
        "ee_assisters.id"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:37247be4ad9a2c0a7dce4de30e4d4c4f62e5c17cdb0bec4c7470faeceb7adddd"
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
          "column_title": "(COUNT([id]),[type],[Days in created_on1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "medicaid_inbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_inbound",
              "column": "id"
            },
            {
              "table": "medicaid_inbound",
              "column": "type"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Outbound Account Transfers to Medicaid Office",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "medicaid_outbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_outbound",
              "column": "ssap_application_id"
            },
            {
              "table": "medicaid_outbound",
              "column": "status"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Medicaid Responses from Outbound Transfer",
          "column_title": "(COUNT([id]),[type],[Days in created_on1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "medicaid_inbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_inbound",
              "column": "id"
            },
            {
              "table": "medicaid_inbound",
              "column": "type"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Medicaid-originated Account Transfers",
        "Outbound Account Transfers to Medicaid Office",
        "Medicaid Responses from Outbound Transfer"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(COUNT([id]),[type],[Days in created_on1])",
        "Formula",
        "coverage_year"
      ],
      "context_fields": [
        "medicaid_inbound.created_on",
        "medicaid_inbound.id",
        "medicaid_inbound.type",
        "medicaid_outbound.created_on",
        "medicaid_outbound.ssap_application_id",
        "medicaid_outbound.status"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:abc72c8877a80aeb9e79a6b50c12ce9cb009fb72d7bcf4aee0f087f295a3e42d"
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
          "column_title": "(count([Id]),[certification_status])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "brokers",
              "column": "certification_status"
            },
            {
              "table": "brokers",
              "column": "id"
            }
          ]
        }
      ],
      "measure_titles": [
        "Certified Brokers"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([Id]),[certification_status])"
      ],
      "context_fields": [
        "brokers.certification_status",
        "brokers.id"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:3c331d95d4356cdf2e58ce6f8a2c46c257ad2d40b200a585cbc4828113cfa3d2"
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
          "column_title": "(sum([gross_premium_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "gross_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "column_title": "(sum([aptc_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "aptc_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "column_title": "(sum([net_premium_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "column_title": "Days in effective_end_date",
          "table": "enrollee",
          "column": "effective_end_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": null,
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(sum([gross_premium_amt])) / (dupcount([id1]))",
        "(sum([aptc_amt])) / (dupcount([id1]))",
        "(sum([net_premium_amt])) / (dupcount([id1]))",
        "Days in effective_end_date",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollee.id",
        "enrollment.gross_premium_amt",
        "enrollment.aptc_amt",
        "enrollment.net_premium_amt"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:39c911450c518dd05f6d0f7fb39d85f1bd0845a38317f64cc6349de34218196c"
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
          "column_title": null,
          "table": "tkm_tickets",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "status",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "# of unique tkm_ticket_id",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "tkm_ticket_id",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "status",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "coverage_year"
      ],
      "context_fields": [],
      "has_date_dimension": true,
      "date_grain": "days",
      "response_shape": "TIME_SERIES",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:29bac02aa165cd836e79b7c60edbbe22bbb8689afe2b5c45550264e8949d369a"
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            },
            {
              "table": "ssap_integration_logs_pasup_6346",
              "column": "auto_flow_execution_steps"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in created_on",
          "column_title": "Days in created_on",
          "table": "medicaid_inbound",
          "column": "created_on",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "% Successful Auto Elig"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "Days in created_on",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "ssap_applications.id",
        "ssap_applications.source",
        "ssap_integration_logs_pasup_6346.auto_flow_execution_steps"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:7cce930f6add0ca97d9275e7e289173d4a209acddf5f4e054ea55ed268e03f35"
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "column_title": null,
          "table": "ssap_applications",
          "column": "exchange_eligibility_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "Formula",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollee.effective_end_date",
        "enrollee.exchg_indiv_identifier",
        "enrollee.person_type_description",
        "enrollment.csr_level",
        "enrollment.enrollment_status_description",
        "enrollment.plan_level"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:2206f3a8ff6b93ef2f372698f21b0ddced837c8d9bcccfcfdd137b16238021c1"
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
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Agent",
        "Assister",
        "None"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(Count([exchg_indiv_identifier]),[broker_role])",
        "benefit_effective_date",
        "enrollee_status_description",
        "person_type_description",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "enrollment.broker_role"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:4c5d892806cc73d6a11377441d3d52d8d3959056196a0c4ff51984e2197f95a6"
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "Formula",
        "benefit_effective_date",
        "person_type_description",
        "enrollee_status_description",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "ssap_applications.exchange_eligibility_status",
        "ssap_applications.maximum_aptc"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:ac042c3c0da45423456903e7bf35c72c17cfd6f3ce773e80babfcf085bf7607f"
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "% of HHs AT'd that Enrolled"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "cmr_household.id",
        "enrollment.enrollment_status_description",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:49f0cc215d005f4db0bd936ecc1e602350b042c5c4a4e01567510fe5782ae0ac"
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
          "column_title": "(count([exchg_indiv_identifier]),[source])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "EDE Enrollees Count"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([exchg_indiv_identifier]),[source])",
        "enrollee_status_description",
        "person_type_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:2cc6f5fdb5c5c066ab7105fc2a0d3ad37d9cf7626bc292d80ad8b119f3c6c611"
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
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": null,
          "table": "enrollment",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Previous Day & Today"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([exchg_indiv_identifier]),[source1])",
        "person_type_description",
        "enrollee_status_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:2807cddae3215eeb9e7a82f76ce3f7253f047402a5278ce1dde3e0b7fb87ff7f"
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
          "column_title": null,
          "table": "enrollment_partners",
          "column": "business_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Count",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment_partners",
              "column": "business_name"
            },
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "source",
          "column_title": "source",
          "table": "ssap_applications",
          "column": "source",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "source",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollment_partners.business_name",
        "ssap_applications.id"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "CATEGORICAL",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:b4052b60574e8c24bc8f8c2d2c3bdddff0e3570da2ed9faebb0de531da4175b1"
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
          "column_title": "(count([id]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": null,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "Previous Day & Today"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([id]),[source1])",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "ssap_applications.id",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:57bf938f03cbf3663ca7a428b340b4f3164ab7ebc4fa5ac81be810ff4742aaf7"
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
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Non - EDE Enrollees",
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "EDE Enrollees",
        "Non - EDE Enrollees"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([exchg_indiv_identifier]),[source1])",
        "person_type_description",
        "enrollee_status_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:18a221a7a0087e724b2038ada62e8acde34b3400a7ccd2af4a1e231e25b9cff3"
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
          "column_title": "(count([id]),[source])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "EDE Application Count"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "(count([id]),[source])",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "ssap_applications.id",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:0f969f1a138cbd44841dfb51812dfabd1c00056ba88523a045967455a85ea6b1"
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        }
      ],
      "measure_titles": [
        "EDE Enrollees % of Total"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "Formula",
        "enrollee_status_description",
        "person_type_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:999a271eb5ddf85689d0b3d1dafc73d63c168ec1f8833ab58d0844149f37093d"
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
          "column_title": null,
          "table": "enrollment_partners",
          "column": "business_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "# of unique Id",
          "column_title": "([# of unique id], [source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "column_titles": [
        "([# of unique id], [source1])",
        "person_type_description",
        "enrollee_status_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.id",
        "ssap_applications.source"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "CATEGORICAL",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:5256123e222cdbe47b22a82b9feb0dc7e09276e472ced86ab5cc66661bf5ea8e"
    }
  ],
  "cancellation_source_identification": [],
  "definition_state_comparison": [],
  "widgets": [
    {
      "widget_id": "6a98048ccef60720fe7f9b44",
      "widget_title": "Applications Started",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Applications Started"
      ],
      "measure_details": [
        {
          "title": "Applications Started",
          "column_title": "count([Id])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 2,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "count([Id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "measure_details": [
        {
          "title": "Submitted Applications",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "column_title": "application_status",
          "table": "ssap_applications",
          "column": "application_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b4f",
      "widget_title": "Applicants On Submitted Applications",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Total Applicants"
      ],
      "measure_details": [
        {
          "title": "Total Applicants",
          "column_title": "(count([applicant_guid]))",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ssap_applicants",
              "column": "applicant_guid"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "(count([applicant_guid]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applicants",
              "column": "applicant_guid"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "applying_for_coverage",
          "column_title": null,
          "table": "ssap_applicants",
          "column": "applying_for_coverage",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "column_title": "application_status",
          "table": "ssap_applications",
          "column": "application_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b49",
      "widget_title": "Applications Submitted Daily",
      "widget_type": "chart/line",
      "datasource": "MAIN",
      "measures": [
        "Total Applications"
      ],
      "measure_details": [
        {
          "title": "Total Applications",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        }
      ],
      "dimensions": [
        {
          "title": "Days in creation_timestamp",
          "date": true,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "column_title": null
        },
        {
          "title": "Years in creation_timestamp",
          "date": true,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "column_title": null
        }
      ],
      "filter_count": 3,
      "dashboard_filter_count": 2,
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
          "column_title": null,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Years in creation_timestamp",
          "column_title": null,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "date_level": "years",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Total Applications",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "application_status",
          "column_title": null,
          "table": "ssap_applications",
          "column": "application_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b47",
      "widget_title": "Currently Enrolled People",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Currently Enrolled People",
        "% Effectuated"
      ],
      "measure_details": [
        {
          "title": "Currently Enrolled People",
          "column_title": "Count([exchg_indiv_identifier])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "% Effectuated",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "Count([exchg_indiv_identifier])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "% Effectuated",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": null,
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": null,
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b6e",
      "widget_title": "New/Active/Passive - Enrolled People",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "NEW",
        "ACTIVE",
        "PASSIVE"
      ],
      "measure_details": [
        {
          "title": "NEW",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "title": "ACTIVE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "title": "PASSIVE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "ACTIVE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PASSIVE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "creation_timestamp"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "creation_timestamp"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "measure_details": [
        {
          "title": "CATASTROPHIC",
          "column_title": "317",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "BRONZE",
          "column_title": "345602",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "SILVER",
          "column_title": "396983",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "GOLD",
          "column_title": "43414",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "PLATINUM",
          "column_title": "1127",
          "table": null,
          "column": null,
          "context_fields": []
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "317",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "column_title": "345602",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "column_title": "396983",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "column_title": "43414",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "column_title": "1127",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "measure_details": [
        {
          "title": "CATASTROPHIC",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "title": "BRONZE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "title": "SILVER",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "title": "GOLD",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "title": "PLATINUM",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "BRONZE",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "SILVER",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "GOLD",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "PLATINUM",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Enrollment Status",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b50",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $1",
        "Percent Net Premiums Under $50"
      ],
      "measure_details": [
        {
          "title": "Percent Net Premiums Under $1",
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "Percent Net Premiums Under $50",
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 3,
      "observations": 1,
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
          "title": "Percent Net Premiums Under $1",
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Percent Net Premiums Under $50",
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b6b",
      "widget_title": "Percent of Active Plans by Net Premium",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Percent Net Premiums Under $10"
      ],
      "measure_details": [
        {
          "title": "Percent Net Premiums Under $10",
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
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
          "title": "Percent Net Premiums Under $10",
          "column_title": "(count([id]), [net_premium_amt1])\n/ count([id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_end_date",
          "column_title": null,
          "table": "enrollment",
          "column": "benefit_end_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b54",
      "widget_title": "Status is Certified and ReCert Date in the Future",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Certified Assisters"
      ],
      "measure_details": [
        {
          "title": "Certified Assisters",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ee_assisters",
              "column": "certification_status"
            },
            {
              "table": "ee_assisters",
              "column": "id"
            }
          ]
        }
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ee_assisters",
              "column": "certification_status"
            },
            {
              "table": "ee_assisters",
              "column": "id"
            }
          ]
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
      "widget_id": "6a98048ccef60720fe7f9b4a",
      "widget_title": "Medicaid Account Transfers",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [
        "Medicaid-originated Account Transfers",
        "Outbound Account Transfers to Medicaid Office",
        "Medicaid Responses from Outbound Transfer"
      ],
      "measure_details": [
        {
          "title": "Medicaid-originated Account Transfers",
          "column_title": "(COUNT([id]),[type],[Days in created_on1])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "medicaid_inbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_inbound",
              "column": "id"
            },
            {
              "table": "medicaid_inbound",
              "column": "type"
            }
          ]
        },
        {
          "title": "Outbound Account Transfers to Medicaid Office",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "medicaid_outbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_outbound",
              "column": "ssap_application_id"
            },
            {
              "table": "medicaid_outbound",
              "column": "status"
            }
          ]
        },
        {
          "title": "Medicaid Responses from Outbound Transfer",
          "column_title": "(COUNT([id]),[type],[Days in created_on1])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "medicaid_inbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_inbound",
              "column": "id"
            },
            {
              "table": "medicaid_inbound",
              "column": "type"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 1,
      "dashboard_filter_count": 1,
      "observations": 1,
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
          "column_title": "(COUNT([id]),[type],[Days in created_on1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "medicaid_inbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_inbound",
              "column": "id"
            },
            {
              "table": "medicaid_inbound",
              "column": "type"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Outbound Account Transfers to Medicaid Office",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "medicaid_outbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_outbound",
              "column": "ssap_application_id"
            },
            {
              "table": "medicaid_outbound",
              "column": "status"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Medicaid Responses from Outbound Transfer",
          "column_title": "(COUNT([id]),[type],[Days in created_on1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "medicaid_inbound",
              "column": "created_on"
            },
            {
              "table": "medicaid_inbound",
              "column": "id"
            },
            {
              "table": "medicaid_inbound",
              "column": "type"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
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
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b52",
      "widget_title": "Status is Certified and ReCert Date in the Future",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Certified Brokers"
      ],
      "measure_details": [
        {
          "title": "Certified Brokers",
          "column_title": "(count([Id]),[certification_status])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "brokers",
              "column": "certification_status"
            },
            {
              "table": "brokers",
              "column": "id"
            }
          ]
        }
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
          "column_title": "(count([Id]),[certification_status])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "brokers",
              "column": "certification_status"
            },
            {
              "table": "brokers",
              "column": "id"
            }
          ]
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
      "widget_id": "6a98048ccef60720fe7f9b4b",
      "widget_title": "PMPM - Average Premiums and APTC for Enrollees",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [
        "Gross Premium Average",
        "Average APTC",
        "Average Net Premium"
      ],
      "measure_details": [
        {
          "title": "Gross Premium Average",
          "column_title": "(sum([gross_premium_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "gross_premium_amt"
            }
          ]
        },
        {
          "title": "Average APTC",
          "column_title": "(sum([aptc_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "aptc_amt"
            }
          ]
        },
        {
          "title": "Average Net Premium",
          "column_title": "(sum([net_premium_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Gross Premium Average",
          "column_title": "(sum([gross_premium_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "gross_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average APTC",
          "column_title": "(sum([aptc_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "aptc_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average Net Premium",
          "column_title": "(sum([net_premium_amt])) / (dupcount([id1]))",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in effective_end_date",
          "column_title": "Days in effective_end_date",
          "table": "enrollee",
          "column": "effective_end_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": null,
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b55",
      "widget_title": "Ticket by Creation Date (last 60 days)",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [],
      "measure_details": [],
      "dimensions": [
        {
          "title": "Days in creation_timestamp",
          "date": true,
          "table": "tkm_tickets",
          "column": "creation_timestamp",
          "column_title": null
        },
        {
          "title": "status",
          "date": false,
          "table": "tkm_tickets",
          "column": "status",
          "column_title": null
        },
        {
          "title": "# of unique tkm_ticket_id",
          "date": false,
          "table": "tkm_tickets",
          "column": "tkm_ticket_id",
          "column_title": null
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
          "column_title": null,
          "table": "tkm_tickets",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "status",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "# of unique tkm_ticket_id",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "tkm_ticket_id",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "status",
          "column_title": null,
          "table": "tkm_tickets",
          "column": "status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b58",
      "widget_title": "Auto Eligibility",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "% Successful Auto Elig"
      ],
      "measure_details": [
        {
          "title": "% Successful Auto Elig",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            },
            {
              "table": "ssap_integration_logs_pasup_6346",
              "column": "auto_flow_execution_steps"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            },
            {
              "table": "ssap_integration_logs_pasup_6346",
              "column": "auto_flow_execution_steps"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in created_on",
          "column_title": "Days in created_on",
          "table": "medicaid_inbound",
          "column": "created_on",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "measure_details": [
        {
          "title": "AV -73",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "title": "AV - 87",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "title": "AV - 94",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "title": "AI/AN",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "title": "CSR Eligible but not SILVER",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
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
          "title": "AV -73",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 87",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AV - 94",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "AI/AN",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR Eligible but not SILVER",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "effective_end_date"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollee",
              "column": "person_type_description"
            },
            {
              "table": "enrollment",
              "column": "csr_level"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "plan_level"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "exchange_eligibility_status",
          "column_title": null,
          "table": "ssap_applications",
          "column": "exchange_eligibility_status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b5a",
      "widget_title": "Enrolled people by Assistance",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Agent",
        "Assister",
        "None"
      ],
      "measure_details": [
        {
          "title": "Agent",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "title": "Assister",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "title": "None",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
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
          "title": "Agent",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Assister",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "None",
          "column_title": "(Count([exchg_indiv_identifier]),[broker_role])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "enrollment",
              "column": "broker_role"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "measure_details": [
        {
          "title": "APTC",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "title": "APTC_CSR; APTC=$0",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "title": "APTC; APTC=$0",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "title": "APTC_CSR",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "title": "CSR",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            }
          ]
        },
        {
          "title": "QHP",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 6,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "localhost_aMAIN",
      "metadata_item_count": 12,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR; APTC=$0",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC; APTC=$0",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "APTC_CSR",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            },
            {
              "table": "ssap_applications",
              "column": "maximum_aptc"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "CSR",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "QHP",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "exchange_eligibility_status"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollment_status_description",
          "column_title": "enrollment_status_description",
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b57",
      "widget_title": "AT Conversion",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "% of HHs AT'd that Enrolled"
      ],
      "measure_details": [
        {
          "title": "% of HHs AT'd that Enrolled",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 2,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_household",
              "column": "id"
            },
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b68",
      "widget_title": "EDE Enrollees",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "EDE Enrollees Count"
      ],
      "measure_details": [
        {
          "title": "EDE Enrollees Count",
          "column_title": "(count([exchg_indiv_identifier]),[source])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "(count([exchg_indiv_identifier]),[source])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b63",
      "widget_title": "EDE Enrollees - Since Previous Day & Today",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Previous Day & Today"
      ],
      "measure_details": [
        {
          "title": "Previous Day & Today",
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": null,
          "table": "enrollment",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b64",
      "widget_title": "Breakdown of EDE Partners with Applications",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Count"
      ],
      "measure_details": [
        {
          "title": "Count",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollment_partners",
              "column": "business_name"
            },
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        }
      ],
      "dimensions": [
        {
          "title": "EDE Partner",
          "date": false,
          "table": "enrollment_partners",
          "column": "business_name",
          "column_title": null
        }
      ],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": null,
          "table": "enrollment_partners",
          "column": "business_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Count",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment_partners",
              "column": "business_name"
            },
            {
              "table": "ssap_applications",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "source",
          "column_title": "source",
          "table": "ssap_applications",
          "column": "source",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b67",
      "widget_title": "EDE Applications - Since Previous Day & Today",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Previous Day & Today"
      ],
      "measure_details": [
        {
          "title": "Previous Day & Today",
          "column_title": "(count([id]),[source1])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 3,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "(count([id]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": null,
          "table": "ssap_applications",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b62",
      "widget_title": "EDE Enrollees",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "EDE Enrollees",
        "Non - EDE Enrollees"
      ],
      "measure_details": [
        {
          "title": "EDE Enrollees",
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "title": "Non - EDE Enrollees",
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Non - EDE Enrollees",
          "column_title": "(count([exchg_indiv_identifier]),[source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b69",
      "widget_title": "Applications submitted via EDE",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "EDE Application Count"
      ],
      "measure_details": [
        {
          "title": "EDE Application Count",
          "column_title": "(count([id]),[source])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 2,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "(count([id]),[source])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "ssap_applications",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b61",
      "widget_title": "EDE Enrollees % Total",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "EDE Enrollees % of Total"
      ],
      "measure_details": [
        {
          "title": "EDE Enrollees % of Total",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 1,
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
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
      "widget_id": "6a98048ccef60720fe7f9b6a",
      "widget_title": "Breakdown of EDE Partners with Enrollees",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "# of unique Id"
      ],
      "measure_details": [
        {
          "title": "# of unique Id",
          "column_title": "([# of unique id], [source1])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        }
      ],
      "dimensions": [
        {
          "title": "EDE Partner",
          "date": false,
          "table": "enrollment_partners",
          "column": "business_name",
          "column_title": null
        }
      ],
      "filter_count": 4,
      "dashboard_filter_count": 2,
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
          "title": "EDE Partner",
          "column_title": null,
          "table": "enrollment_partners",
          "column": "business_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "# of unique Id",
          "column_title": "([# of unique id], [source1])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "id"
            },
            {
              "table": "ssap_applications",
              "column": "source"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "person_type_description",
          "column_title": "person_type_description",
          "table": "enrollee",
          "column": "person_type_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "enrollee_status_description",
          "column_title": "enrollee_status_description",
          "table": "enrollee",
          "column": "enrollee_status_description",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "coverage_year",
          "column_title": "coverage_year",
          "table": "ssap_applications",
          "column": "coverage_year",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": "insurance_type_description",
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": []
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
    }
  ]
}

============================================================
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
