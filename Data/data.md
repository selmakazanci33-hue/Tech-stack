


 .\.venv\Scripts\python.exe main.py                                               
2026-11-09 06:22:02,220 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-09 06:22:02,732 [INFO] sisense.auth: Saved session found; verifying
2026-11-09 06:22:06,552 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-09 06:22:06,553 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-09 06:22:10,224 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-09 06:22:10,260 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-09 06:22:22,123 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-09 06:22:24,745 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-09 06:22:24,745 [INFO] sisense.auth: Authentication successful
2026-11-09 06:22:24,745 [INFO] sisense.auth: Sisense session verified
2026-11-09 06:22:24,752 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-09 06:22:24,752 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: False)
2026-11-09 06:22:31,048 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-09 06:22:31,079 [INFO] sisense.diagnostics: [debug] Inspected 2 dashboard JAQL POST(s); statuses: ['200']
2026-11-09 06:22:31,079 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:22:31,079 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-09 06:22:31,080 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:22:31,084 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-09 06:22:31,084 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-09 06:22:31,084 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-09 06:22:31,085 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-09 06:22:31,085 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-09 06:22:31,085 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-09 06:22:31,100 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:22:31,101 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-09 06:22:46,758 [INFO] oe_trend_pipeline: Passive proof: 37 dashboard JAQL POST(s) seen, 1 for the verified widget; parse PASS
2026-11-09 06:22:46,798 [INFO] oe_trend_pipeline: Passive production metrics: percent_effectuated EXTRACTED, applications_started EXTRACTED, submitted_applications EXTRACTED, new_enrolled EXTRACTED, active_enrolled EXTRACTED, passive_enrolled EXTRACTED
Passive observation window is active.
2026-11-09 06:22:46,798 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-09 06:22:46,798 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-09 06:22:46,798 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-09 06:22:46,798 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.

2026-11-09 06:23:40,027 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-09 06:23:40,027 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-09 06:23:40,027 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:23:40,590 [INFO] sisense.client: HTTP 200 (0.56 sec)
2026-11-09 06:23:40,590 [INFO] sisense.client: Value cells: 2
2026-11-09 06:23:40,590 [INFO] sisense.client: Duration: 0.56 sec
2026-11-09 06:23:40,656 [INFO] sisense.discovery: Discovery scope: 0 out-of-scope JAQL POST(s) {}; other JAQL paths {'/api/datasources/DW_FAST/jaql': 2}
2026-11-09 06:23:40,661 [INFO] sisense.nap_semantic_capture: Phase 6D NAP capture: TARGET_OBSERVED; NEW OTHER_LIFECYCLE_CLASS; bridge NO_ACTIVITY_BRIDGE; report C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\nap_semantic_capture.json
2026-11-09 06:23:40,662 [INFO] oe_trend_pipeline: Wave 1 discovery: 37 dashboard JAQL POST(s), 37 widget(s), 37 definition(s); VERIFIED 7, DISCOVERED 3, PENDING 4
2026-11-09 06:23:40,670 [INFO] oe_trend_pipeline: Wave 1 discovery report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html
2026-11-09 06:23:40,704 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 7, SERIES_EXTRACTED 2, NOT_AVAILABLE 0, VALIDATION_FAILED 2, PENDING 2
2026-11-09 06:23:40,705 [INFO] oe_trend_pipeline: Cancellation source identification: UNRESOLVED/UNRESOLVED (6abe90b12d01ccb8699b1e55), DAILY_CANCELLATION_CANDIDATE/EXACT_IDENTITY_CONFIRMED (6a98048ccef60720fe7f9b39)
2026-11-09 06:23:41,023 [INFO] oe_trend_pipeline: Current PY2027 value: 797762
2026-11-09 06:23:41,024 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-09 06:23:41,024 [INFO] oe_trend_pipeline: Difference: 797762 - 791826 = +5936
2026-11-09 06:23:41,024 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 797762, "retrieved_at": "2026-11-09T11:23:41+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

============================================================
Georgia Access — PY2027 Sisense Retrieval
============================================================

Authentication        PASS
Dashboard             PY 2027 - OE Executive Dashboard
Datasource            MAIN
Metric                Currently Enrolled People
Coverage Year         2027
Current Value         797,762
Manual Baseline       791,826
Retrieved             2026-11-09T11:23:41+00:00
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

Passive Value: 797,762
Application Value: 797,762
Difference: 0
Passive Validation: PASS

============================================================
2026-11-09 06:23:41,025 [INFO] oe_trend_pipeline: Passive Validation: PASS

Wave 1 discovery (developer review only — not used for snapshots or the executive report)
  VERIFIED    7
  DISCOVERED  3
  PENDING     4
  Identification 2 cancellation source candidate(s)
  Report      C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html

============================================================

Wave 1 runtime validation (developer review only — not stored, not in the executive report)
  Applications Started        VALUE_EXTRACTED     573,214
  Submitted Applications      VALUE_EXTRACTED     571,890
  Total Applicants            VALUE_EXTRACTED     840,764
  % Effectuated               VALUE_EXTRACTED     93.71% (raw 0.937135)
  New                         VALUE_EXTRACTED     4,525
  Active                      VALUE_EXTRACTED     60,622
  Passive                     VALUE_EXTRACTED     733,065
  Enrolled & Cancelled        VALIDATION_FAILED   
  Cancelled - Not Enrolled    VALIDATION_FAILED   
  Cancelled Policies — OBSERVED
  SERIES_EXTRACTED
  Cancelled Policies          SERIES_EXTRACTED    
  Terminated Policies         SERIES_EXTRACTED    
  Cancelled                   PENDING             
  Terminated                  PENDING             
  Currently Enrolled identity IDENTITY_PASS
  Currently Enrolled Control  EXACT_VALUE_MATCH
  Promotion evidence (validation-only candidates; nothing is promoted automatically)
    Total Applicants          STABLE        ELIGIBLE
  Cancellation / termination evidence (validation only; not production)
    Enrolled & Cancelled      MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Cancelled - Not Enrolled  MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Cancelled Policies        STABLE        ELIGIBLE
    Terminated Policies       STABLE        ELIGIBLE
    Shared widget cancelled_policies_daily, terminated_policies_daily: ELIGIBLE TOGETHER
    Fingerprint observation: RECORDED
  Cancellation source identification (structure only; not production)
    6abe90b12d01ccb8699b1e55UNRESOLVED                      UNRESOLVED
    6a98048ccef60720fe7f9b39DAILY_CANCELLATION_CANDIDATE    EXACT_IDENTITY_CONFIRMED
  Report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\validation\wave1_runtime_validation.html

============================================================
2026-11-09 06:23:41,033 [INFO] oe_trend_pipeline: Currently Enrolled control: EXACT_VALUE_MATCH (IDENTITY_PASS)
Currently Enrolled    797,762
Snapshot              SAVED
Historical Snapshots  14
Data Status           LIVE
Previous Snapshot Change+451 (+0.06%)
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Overall Data Status   LIVE
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
Verified dashboard metrics (passive, zero additional requests)
  % Effectuated               LIVE           93.71%  snapshot SAVED
  Applications Started        LIVE           573,214  snapshot SAVED
  Submitted Applications      LIVE           571,890  snapshot SAVED
  New                         LIVE           4,525  snapshot SAVED
  Active                      LIVE           60,622  snapshot SAVED
  Passive                     LIVE           733,065  snapshot SAVED

  {
  "generated_at_utc": "2026-11-09T11:23:40Z",
  "scope": "Naturally occurring dashboard JAQL requests only; structure only, no values",
  "observed": {
    "jaql_posts": 37,
    "out_of_scope": 0,
    "widgets": 37,
    "widgets_dropped": 0,
    "retention_skipped": 0,
    "out_of_scope_reasons": {},
    "out_of_scope_samples": [],
    "other_jaql_paths": {
      "/api/datasources/DW_FAST/jaql": 2
    }
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
      "state": "DISCOVERED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b39"
      ],
      "match_sources": [
        "measure title"
      ],
      "reason": "Exact label match in one widget; not approved for production",
      "control": null
    },
    {
      "metric_id": "terminated_policies_daily",
      "label": "Terminated Policies",
      "module": "enrollment",
      "state": "DISCOVERED",
      "widget_ids": [
        "6a98048ccef60720fe7f9b39"
      ],
      "match_sources": [
        "measure title"
      ],
      "reason": "Exact label match in one widget; not approved for production",
      "control": null
    }
  ],
  "widget_inventory": [
    {
      "widget_id": "6a98048ccef60720fe7f9b3c",
      "widget_title": "Enrolled People By Issuer (Static - Pre-OE)",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 11,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Alliant Health Plans, Inc.",
          "column_title": "71739",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Ambetter from Peach State Health Plan",
          "column_title": "209053",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Anthem Blue Cross and Blue Shield",
          "column_title": "154151",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Kaiser Foundation Health Plan of Georgia, Inc.",
          "column_title": "177384",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Oscar Health Plan of Georgia",
          "column_title": "155365",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Others.",
          "column_title": "19751",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": null,
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [
        "Alliant Health Plans, Inc.",
        "Ambetter from Peach State Health Plan",
        "Anthem Blue Cross and Blue Shield",
        "Kaiser Foundation Health Plan of Georgia, Inc.",
        "Oscar Health Plan of Georgia",
        "Others."
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "71739",
        "209053",
        "154151",
        "177384",
        "155365",
        "19751",
        "coverage_year"
      ],
      "context_fields": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:903964b8fdf03bd9d84c753d131e23b7131d7cb3817954947495aecc18f6dbe2"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
      "widget_id": "6a98048ccef60720fe7f9b37",
      "widget_title": "Enrollment Count",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent Assisted Enrollments",
          "column_title": "([# of unique id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "broker_role",
          "column_title": null,
          "table": "enrollment",
          "column": "broker_role",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Agent Name (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "broker_name",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "all",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "NPN (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "npn",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "all",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Agent Name (Enrollments)",
          "column_title": null,
          "table": "enrollment",
          "column": "agent_broker_name",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "all",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Enrollment Status",
          "column_title": null,
          "table": "enrollment",
          "column": "enrollment_status_description",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Enrollment Date",
          "column_title": "Enrollment Date",
          "table": "enrollment",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [
        "Agent Assisted Enrollments"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "([# of unique id])",
        "Enrollment Date",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollment.id"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "SINGLE_INDICATOR",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:b55d465bff68e24a5b30491fbab693565d4f142dee0af9f11cfabd78b6e421fe"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "exclude",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": false,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": false,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "exclude",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "other",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "other",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "all",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": false,
          "aggregation_functions": []
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
      "widget_id": "6a98048ccef60720fe7f9b38",
      "widget_title": "Households Designated to an Agent",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Households Designated",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "designate_broker",
              "column": "individualid"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average HH Designated per Agent",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "designate_broker",
              "column": "brokerid"
            },
            {
              "table": "designate_broker",
              "column": "individualid"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "status",
          "column_title": null,
          "table": "designate_broker",
          "column": "status",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Agent Name (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "broker_name",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "all",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "NPN (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "npn",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "all",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment_aud",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [
        "Households Designated",
        "Average HH Designated per Agent"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "benefit_effective_date",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "designate_broker.individualid",
        "designate_broker.brokerid"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:2f65658298535a9e345711b219ab2f39ec3063f409db2949812d4f681bdbb806"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "sum",
            "other",
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
      "widget_id": "6abe90b12d01ccb8699b1e55",
      "widget_title": "Enrollments Marked for Termination",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Months in benefit_end_date",
          "column_title": "benefit_end_date",
          "table": "enrollment",
          "column": "benefit_end_date",
          "date_level": "months",
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Count",
          "column_title": "id",
          "table": "enrollment",
          "column": "id",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Months in benefit_end_date",
          "column_title": "benefit_end_date",
          "table": "enrollment",
          "column": "benefit_end_date",
          "date_level": "days",
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [],
      "dimension_titles": [
        "Months in benefit_end_date",
        "Count"
      ],
      "dimension_columns": [
        "benefit_end_date",
        "id"
      ],
      "column_titles": [
        "benefit_end_date",
        "id",
        "enrollment_status_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [],
      "has_date_dimension": true,
      "date_grain": "months",
      "response_shape": "EMPTY",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:23a9d92476f4fa3fd2a46c6e9d7f65b0ad2408b4b1a490491ebd1b36f768a8f7"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b3a",
      "widget_title": "Top 15 Agents by Enrollment Volume",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "agent_broker_name",
          "column_title": "agent_broker_name",
          "table": "enrollment",
          "column": "agent_broker_name",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "# of unique id",
          "column_title": "id",
          "table": "enrollment",
          "column": "id",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "# of unique id",
          "column_title": "id",
          "table": "enrollment",
          "column": "id",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "other",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "agent_broker_name",
          "column_title": "agent_broker_name",
          "table": "enrollment",
          "column": "agent_broker_name",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "exclude",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": "creation_timestamp",
          "table": "enrollment",
          "column": "creation_timestamp",
          "date_level": "days",
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [],
      "dimension_titles": [
        "agent_broker_name",
        "# of unique id"
      ],
      "dimension_columns": [
        "agent_broker_name",
        "id"
      ],
      "column_titles": [
        "agent_broker_name",
        "id",
        "creation_timestamp",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "CATEGORICAL",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:6a6eb4fb43e597e5e18ceb7413be61c5d6345455e28e954badb563c23850f66d"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "other",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
      "widget_id": "6a98048ccef60720fe7f9b39",
      "widget_title": "Cancelled & Terminated Policies - By Day",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Date",
          "column_title": "last_update_timestamp",
          "table": "enrollment",
          "column": "last_update_timestamp",
          "date_level": "days",
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Cancelled Policies",
          "column_title": "(count([Id]),[enrollment_status_description])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "id"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": false,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Terminated Policies",
          "column_title": "(count([Id]),[enrollment_status_description])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "id"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Date",
          "column_title": "last_update_timestamp",
          "table": "enrollment",
          "column": "last_update_timestamp",
          "date_level": "days",
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [
        "Cancelled Policies",
        "Terminated Policies"
      ],
      "dimension_titles": [
        "Date"
      ],
      "dimension_columns": [
        "last_update_timestamp"
      ],
      "column_titles": [
        "last_update_timestamp",
        "(count([Id]),[enrollment_status_description])",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollment.enrollment_status_description",
        "enrollment.id"
      ],
      "has_date_dimension": true,
      "date_grain": "days",
      "response_shape": "TIME_SERIES",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:465b159969a3906d3e5a15476c585aa5de80ab0d37e07b2b75332c543c024bba"
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b33",
      "widget_title": "Enrolled People By FPL Level",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 14,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL N/A",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL 0%-99%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL 100%-138%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL 139%-150%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL 151%-200%",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL 201%-300%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL 301%-400%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL 400%+",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [
        "FPL N/A",
        "FPL 0%-99%",
        "FPL 100%-138%",
        "FPL 139%-150%",
        "FPL 151%-200%",
        "FPL 201%-300%",
        "FPL 301%-400%",
        "FPL 400%+"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "Formula",
        "enrollment_status_description",
        "enrollee_status_description",
        "benefit_effective_date",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "cmr_hh_aptc_history.federal_poverty_level",
        "enrollee.exchg_indiv_identifier"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:68be38f0f248d8d3d481e9e7f812063144a74809c587012088d4487b9b47c39b"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b32",
      "widget_title": "Enrolled People By Issuer (Current)",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Insurer Name",
          "column_title": null,
          "table": "enrollment",
          "column": "insurer_name",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "# of unique Exchg Indiv Identifier",
          "column_title": "([# of unique Exchg Indiv Identifier])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": null,
          "table": "enrollment",
          "column": "insurance_type_description",
          "date_level": null,
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "Days in benefit_effective_date",
          "table": "enrollment",
          "column": "benefit_effective_date",
          "date_level": "days",
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [
        "# of unique Exchg Indiv Identifier"
      ],
      "dimension_titles": [
        "Insurer Name"
      ],
      "dimension_columns": [
        "insurer_name"
      ],
      "column_titles": [
        "([# of unique Exchg Indiv Identifier])",
        "Days in benefit_effective_date",
        "coverage_year"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "CATEGORICAL",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:ca6f54333e34040e38fa18fb57ac1d90f4de182cb7bee793fa5c9d1a1aa989d0"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "other",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": false,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "sum",
            "dupcount"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "sum",
            "dupcount"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "sum",
            "dupcount"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
      "widget_id": "6ae348982d01ccb8699b7633",
      "widget_title": "Net Premium Amount",
      "datasource_id": "aLOCALHOST_aMAIN",
      "datasource_title": "MAIN",
      "metadata_item_count": 15,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": ">$0",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$0 - $5",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$5 - $10",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$10 - $25",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$25 - $50",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$50 - $100",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$100 - $200",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$200 - $400",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$400+",
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
              "column": "net_premium_amt"
            }
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
          ]
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
        }
      ],
      "measure_titles": [
        ">$0",
        "$0 - $5",
        "$5 - $10",
        "$10 - $25",
        "$25 - $50",
        "$50 - $100",
        "$100 - $200",
        "$200 - $400",
        "$400+"
      ],
      "dimension_titles": [],
      "dimension_columns": [],
      "column_titles": [
        "Formula",
        "enrollment_status_description",
        "enrollee_status_description",
        "benefit_effective_date",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": [
        "enrollee.exchg_indiv_identifier",
        "enrollment.net_premium_amt"
      ],
      "has_date_dimension": false,
      "date_grain": null,
      "response_shape": "MULTI_MEASURE",
      "http_status": 200,
      "observations": 1,
      "definition_fingerprint": "sha256:fa0483b75553819f53674b2b1f74bba99645cb087ff443e3fa278d1ea10818dd"
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": false,
          "locked": null,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": false,
          "disabled": null,
          "locked": null,
          "filter_kind": "exclude",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          ],
          "is_dashboard_filter": null,
          "disabled": null,
          "locked": null,
          "filter_kind": null,
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": [
            "count"
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
          "context_fields": [],
          "is_dashboard_filter": null,
          "disabled": false,
          "locked": null,
          "filter_kind": "range",
          "matches_verified_dashboard_filter": null,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
          "context_fields": [],
          "is_dashboard_filter": true,
          "disabled": false,
          "locked": true,
          "filter_kind": "member_list",
          "matches_verified_dashboard_filter": true,
          "aggregation_functions": []
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
    }
  ],
  "cancellation_source_identification": [
    {
      "widget_id": "6abe90b12d01ccb8699b1e55",
      "widget_title": "Enrollments Marked for Termination",
      "datasource": "MAIN",
      "measure_titles": [],
      "dimension_titles": [
        "Months in benefit_end_date",
        "Count"
      ],
      "date_grain": "months",
      "response_shape": "EMPTY",
      "definition_fingerprint": "sha256:23a9d92476f4fa3fd2a46c6e9d7f65b0ad2408b4b1a490491ebd1b36f768a8f7",
      "semantic_role": "UNRESOLVED",
      "confidence": "UNRESOLVED",
      "reason": "Cancellation-related title metadata without matching request structure",
      "column_titles": [
        "benefit_end_date",
        "id",
        "enrollment_status_description",
        "coverage_year",
        "insurance_type_description"
      ],
      "context_fields": []
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b39",
      "widget_title": "Cancelled & Terminated Policies - By Day",
      "datasource": "MAIN",
      "measure_titles": [
        "Cancelled Policies",
        "Terminated Policies"
      ],
      "dimension_titles": [
        "Date"
      ],
      "date_grain": "days",
      "response_shape": "TIME_SERIES",
      "definition_fingerprint": "sha256:465b159969a3906d3e5a15476c585aa5de80ab0d37e07b2b75332c543c024bba",
      "semantic_role": "DAILY_CANCELLATION_CANDIDATE",
      "confidence": "EXACT_IDENTITY_CONFIRMED",
      "reason": "Exact measure title for cancelled_policies_daily, terminated_policies_daily; context fields: enrollment.enrollment_status_description, enrollment.id",
      "column_titles": [
        "last_update_timestamp",
        "(count([Id]),[enrollment_status_description])",
        "coverage_year",
        "insurance_type_description",
        "enrollment_status_description"
      ],
      "context_fields": [
        "enrollment.enrollment_status_description",
        "enrollment.id"
      ]
    }
  ],
  "definition_state_comparison": [],
  "widgets": [
    {
      "widget_id": "6a98048ccef60720fe7f9b3c",
      "widget_title": "Enrolled People By Issuer (Static - Pre-OE)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "Alliant Health Plans, Inc.",
        "Ambetter from Peach State Health Plan",
        "Anthem Blue Cross and Blue Shield",
        "Kaiser Foundation Health Plan of Georgia, Inc.",
        "Oscar Health Plan of Georgia",
        "Others."
      ],
      "measure_details": [
        {
          "title": "Alliant Health Plans, Inc.",
          "column_title": "71739",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "Ambetter from Peach State Health Plan",
          "column_title": "209053",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "Anthem Blue Cross and Blue Shield",
          "column_title": "154151",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "Kaiser Foundation Health Plan of Georgia, Inc.",
          "column_title": "177384",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "Oscar Health Plan of Georgia",
          "column_title": "155365",
          "table": null,
          "column": null,
          "context_fields": []
        },
        {
          "title": "Others.",
          "column_title": "19751",
          "table": null,
          "column": null,
          "context_fields": []
        }
      ],
      "dimensions": [],
      "filter_count": 5,
      "dashboard_filter_count": 1,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 11,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Alliant Health Plans, Inc.",
          "column_title": "71739",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Ambetter from Peach State Health Plan",
          "column_title": "209053",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Anthem Blue Cross and Blue Shield",
          "column_title": "154151",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Kaiser Foundation Health Plan of Georgia, Inc.",
          "column_title": "177384",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Oscar Health Plan of Georgia",
          "column_title": "155365",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Others.",
          "column_title": "19751",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": null,
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
      "definition_fingerprint": "sha256:903964b8fdf03bd9d84c753d131e23b7131d7cb3817954947495aecc18f6dbe2",
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
      "widget_id": "6a98048ccef60720fe7f9b37",
      "widget_title": "Enrollment Count",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Agent Assisted Enrollments"
      ],
      "measure_details": [
        {
          "title": "Agent Assisted Enrollments",
          "column_title": "([# of unique id])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            }
          ]
        }
      ],
      "dimensions": [],
      "filter_count": 7,
      "dashboard_filter_count": 1,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Agent Assisted Enrollments",
          "column_title": "([# of unique id])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "broker_role",
          "column_title": null,
          "table": "enrollment",
          "column": "broker_role",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Agent Name (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "broker_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "NPN (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "npn",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Agent Name (Enrollments)",
          "column_title": null,
          "table": "enrollment",
          "column": "agent_broker_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Enrollment Status",
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
          "title": "Enrollment Date",
          "column_title": "Enrollment Date",
          "table": "enrollment",
          "column": "creation_timestamp",
          "date_level": "days",
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
      "definition_fingerprint": "sha256:b55d465bff68e24a5b30491fbab693565d4f142dee0af9f11cfabd78b6e421fe",
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
        "rows": 12,
        "value_cells": 36,
        "time_points": 12,
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
        "rows": 201,
        "value_cells": 603,
        "time_points": 201,
        "first_period": "012orADaAe",
        "last_period": "012orADaAe",
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b38",
      "widget_title": "Households Designated to an Agent",
      "widget_type": "indicator",
      "datasource": "MAIN",
      "measures": [
        "Households Designated",
        "Average HH Designated per Agent"
      ],
      "measure_details": [
        {
          "title": "Households Designated",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "designate_broker",
              "column": "individualid"
            }
          ]
        },
        {
          "title": "Average HH Designated per Agent",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "designate_broker",
              "column": "brokerid"
            },
            {
              "table": "designate_broker",
              "column": "individualid"
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
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Households Designated",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "designate_broker",
              "column": "individualid"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Average HH Designated per Agent",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "designate_broker",
              "column": "brokerid"
            },
            {
              "table": "designate_broker",
              "column": "individualid"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "status",
          "column_title": null,
          "table": "designate_broker",
          "column": "status",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Agent Name (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "broker_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "NPN (Designations/Certs)",
          "column_title": null,
          "table": "brokers",
          "column": "npn",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in benefit_effective_date",
          "column_title": "benefit_effective_date",
          "table": "enrollment_aud",
          "column": "benefit_effective_date",
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
      "definition_fingerprint": "sha256:2f65658298535a9e345711b219ab2f39ec3063f409db2949812d4f681bdbb806",
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
      "widget_id": "6abe90b12d01ccb8699b1e55",
      "widget_title": "Enrollments Marked for Termination",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [],
      "measure_details": [],
      "dimensions": [
        {
          "title": "Months in benefit_end_date",
          "date": true,
          "table": "enrollment",
          "column": "benefit_end_date",
          "column_title": "benefit_end_date"
        },
        {
          "title": "Count",
          "date": false,
          "table": "enrollment",
          "column": "id",
          "column_title": "id"
        }
      ],
      "filter_count": 4,
      "dashboard_filter_count": 2,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 6,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Months in benefit_end_date",
          "column_title": "benefit_end_date",
          "table": "enrollment",
          "column": "benefit_end_date",
          "date_level": "months",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Count",
          "column_title": "id",
          "table": "enrollment",
          "column": "id",
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
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Months in benefit_end_date",
          "column_title": "benefit_end_date",
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
        }
      ],
      "has_date_dimension": true,
      "date_grain": "months",
      "definition_fingerprint": "sha256:23a9d92476f4fa3fd2a46c6e9d7f65b0ad2408b4b1a490491ebd1b36f768a8f7",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "EMPTY",
        "rows": 0,
        "value_cells": 0,
        "time_points": 0,
        "first_period": null,
        "last_period": null,
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b3a",
      "widget_title": "Top 15 Agents by Enrollment Volume",
      "widget_type": "chart/column",
      "datasource": "MAIN",
      "measures": [],
      "measure_details": [],
      "dimensions": [
        {
          "title": "agent_broker_name",
          "date": false,
          "table": "enrollment",
          "column": "agent_broker_name",
          "column_title": "agent_broker_name"
        },
        {
          "title": "# of unique id",
          "date": false,
          "table": "enrollment",
          "column": "id",
          "column_title": "id"
        }
      ],
      "filter_count": 5,
      "dashboard_filter_count": 2,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "agent_broker_name",
          "column_title": "agent_broker_name",
          "table": "enrollment",
          "column": "agent_broker_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "# of unique id",
          "column_title": "id",
          "table": "enrollment",
          "column": "id",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "# of unique id",
          "column_title": "id",
          "table": "enrollment",
          "column": "id",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "agent_broker_name",
          "column_title": "agent_broker_name",
          "table": "enrollment",
          "column": "agent_broker_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Days in creation_timestamp",
          "column_title": "creation_timestamp",
          "table": "enrollment",
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
      "definition_fingerprint": "sha256:6a6eb4fb43e597e5e18ceb7413be61c5d6345455e28e954badb563c23850f66d",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "CATEGORICAL",
        "rows": 15,
        "value_cells": 30,
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
      "widget_id": "6a98048ccef60720fe7f9b39",
      "widget_title": "Cancelled & Terminated Policies - By Day",
      "widget_type": "chart/line",
      "datasource": "MAIN",
      "measures": [
        "Cancelled Policies",
        "Terminated Policies"
      ],
      "measure_details": [
        {
          "title": "Cancelled Policies",
          "column_title": "(count([Id]),[enrollment_status_description])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "id"
            }
          ]
        },
        {
          "title": "Terminated Policies",
          "column_title": "(count([Id]),[enrollment_status_description])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "id"
            }
          ]
        }
      ],
      "dimensions": [
        {
          "title": "Date",
          "date": true,
          "table": "enrollment",
          "column": "last_update_timestamp",
          "column_title": "last_update_timestamp"
        }
      ],
      "filter_count": 4,
      "dashboard_filter_count": 3,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {
        "cancelled policies": [
          "measure title"
        ],
        "terminated policies": [
          "measure title"
        ]
      },
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 7,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Date",
          "column_title": "last_update_timestamp",
          "table": "enrollment",
          "column": "last_update_timestamp",
          "date_level": "days",
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Cancelled Policies",
          "column_title": "(count([Id]),[enrollment_status_description])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "id"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "Terminated Policies",
          "column_title": "(count([Id]),[enrollment_status_description])",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "enrollment",
              "column": "enrollment_status_description"
            },
            {
              "table": "enrollment",
              "column": "id"
            }
          ]
        },
        {
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "Date",
          "column_title": "last_update_timestamp",
          "table": "enrollment",
          "column": "last_update_timestamp",
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
      "has_date_dimension": true,
      "date_grain": "days",
      "definition_fingerprint": "sha256:465b159969a3906d3e5a15476c585aa5de80ab0d37e07b2b75332c543c024bba",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "TIME_SERIES",
        "rows": 9,
        "value_cells": 27,
        "time_points": 9,
        "first_period": "012orADaAe",
        "last_period": "012orADaAe",
        "matched_category_labels": [],
        "failure": null
      }
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b33",
      "widget_title": "Enrolled People By FPL Level",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "FPL N/A",
        "FPL 0%-99%",
        "FPL 100%-138%",
        "FPL 139%-150%",
        "FPL 151%-200%",
        "FPL 201%-300%",
        "FPL 301%-400%",
        "FPL 400%+"
      ],
      "measure_details": [
        {
          "title": "FPL N/A",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "FPL 0%-99%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "FPL 100%-138%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "FPL 139%-150%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "FPL 151%-200%",
          "column_title": null,
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "FPL 201%-300%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "FPL 301%-400%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        },
        {
          "title": "FPL 400%+",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
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
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 14,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "FPL N/A",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
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
          "title": "FPL 0%-99%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
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
          "title": "FPL 100%-138%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
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
          "title": "FPL 139%-150%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
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
          "title": "FPL 151%-200%",
          "column_title": null,
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
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
          "title": "FPL 201%-300%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
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
          "title": "FPL 301%-400%",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
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
          "title": "FPL 400%+",
          "column_title": "Formula",
          "table": null,
          "column": null,
          "date_level": null,
          "context_fields": [
            {
              "table": "cmr_hh_aptc_history",
              "column": "federal_poverty_level"
            },
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
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
      "definition_fingerprint": "sha256:68be38f0f248d8d3d481e9e7f812063144a74809c587012088d4487b9b47c39b",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 8,
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
    },
    {
      "widget_id": "6a98048ccef60720fe7f9b32",
      "widget_title": "Enrolled People By Issuer (Current)",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        "# of unique Exchg Indiv Identifier"
      ],
      "measure_details": [
        {
          "title": "# of unique Exchg Indiv Identifier",
          "column_title": "([# of unique Exchg Indiv Identifier])",
          "table": null,
          "column": null,
          "context_fields": [
            {
              "table": "enrollee",
              "column": "exchg_indiv_identifier"
            }
          ]
        }
      ],
      "dimensions": [
        {
          "title": "Insurer Name",
          "date": false,
          "table": "enrollment",
          "column": "insurer_name",
          "column_title": null
        }
      ],
      "filter_count": 6,
      "dashboard_filter_count": 1,
      "observations": 1,
      "distinct_definitions": 1,
      "structure_changed": false,
      "matches": {},
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 8,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "dimension",
          "jaql_type": null,
          "title": "Insurer Name",
          "column_title": null,
          "table": "enrollment",
          "column": "insurer_name",
          "date_level": null,
          "context_fields": []
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "# of unique Exchg Indiv Identifier",
          "column_title": "([# of unique Exchg Indiv Identifier])",
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
          "panel": "scope",
          "kind": "filter",
          "jaql_type": null,
          "title": "insurance_type_description",
          "column_title": null,
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
          "title": "Days in benefit_effective_date",
          "column_title": "Days in benefit_effective_date",
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
      "definition_fingerprint": "sha256:ca6f54333e34040e38fa18fb57ac1d90f4de182cb7bee793fa5c9d1a1aa989d0",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "CATEGORICAL",
        "rows": 7,
        "value_cells": 14,
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
      "widget_id": "6ae348982d01ccb8699b7633",
      "widget_title": "Net Premium Amount",
      "widget_type": "chart/pie",
      "datasource": "MAIN",
      "measures": [
        ">$0",
        "$0 - $5",
        "$5 - $10",
        "$10 - $25",
        "$25 - $50",
        "$50 - $100",
        "$100 - $200",
        "$200 - $400",
        "$400+"
      ],
      "measure_details": [
        {
          "title": ">$0",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$0 - $5",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$5 - $10",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$10 - $25",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$25 - $50",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$50 - $100",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$100 - $200",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$200 - $400",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "title": "$400+",
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
              "column": "net_premium_amt"
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
      "datasource_id": "aLOCALHOST_aMAIN",
      "metadata_item_count": 15,
      "metadata_roles": [
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": ">$0",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$0 - $5",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$5 - $10",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$10 - $25",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$25 - $50",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$50 - $100",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$100 - $200",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$200 - $400",
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
              "column": "net_premium_amt"
            }
          ]
        },
        {
          "panel": "result",
          "kind": "measure",
          "jaql_type": "measure",
          "title": "$400+",
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
              "column": "net_premium_amt"
            }
          ]
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
      "definition_fingerprint": "sha256:fa0483b75553819f53674b2b1f74bba99645cb087ff443e3fa278d1ea10818dd",
      "control": null,
      "response": {
        "http_status": 200,
        "available": true,
        "shape": "MULTI_MEASURE",
        "rows": 1,
        "value_cells": 9,
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
    }
  ]
}

============================================================
