


 .\.venv\Scripts\python.exe -m comparison.live_executive_runner         
2026-11-09 06:52:58,689 [INFO] oe_trend_pipeline.executive: Step 1/4: live PY2026 database refresh
2026-11-09 06:53:53,361 [INFO] oe_trend_pipeline.executive: Step 2/4: live PY2027 Sisense refresh and snapshot save
2026-11-09 06:53:55,111 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-09 06:53:55,492 [INFO] sisense.auth: Saved session found; verifying
2026-11-09 06:53:59,830 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-09 06:53:59,831 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-09 06:54:02,864 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-09 06:54:02,871 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-09 06:54:05,852 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-09 06:54:11,165 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-09 06:54:11,165 [INFO] sisense.auth: Authentication successful
2026-11-09 06:54:11,165 [INFO] sisense.auth: Sisense session verified
2026-11-09 06:54:11,182 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-09 06:54:11,183 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: False)
2026-11-09 06:54:15,443 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-09 06:54:15,463 [INFO] sisense.diagnostics: [debug] Inspected 1 dashboard JAQL POST(s); statuses: ['200']
2026-11-09 06:54:15,463 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:54:15,463 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-09 06:54:15,463 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:54:15,466 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-09 06:54:15,466 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-09 06:54:15,467 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-09 06:54:15,467 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-09 06:54:15,467 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-09 06:54:15,467 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-09 06:54:15,480 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:54:15,480 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-09 06:54:32,412 [INFO] oe_trend_pipeline: Passive proof: 37 dashboard JAQL POST(s) seen, 1 for the verified widget; parse PASS
2026-11-09 06:54:32,467 [INFO] oe_trend_pipeline: Passive production metrics: percent_effectuated EXTRACTED, applications_started EXTRACTED, submitted_applications EXTRACTED, new_enrolled EXTRACTED, active_enrolled EXTRACTED, passive_enrolled EXTRACTED
Passive observation window is active.
2026-11-09 06:54:32,467 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-09 06:54:32,467 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-09 06:54:32,467 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-09 06:54:32,467 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.

2026-11-09 06:54:51,946 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-09 06:54:51,947 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-09 06:54:51,947 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 06:54:52,232 [INFO] sisense.client: HTTP 200 (0.29 sec)
2026-11-09 06:54:52,233 [INFO] sisense.client: Value cells: 2
2026-11-09 06:54:52,233 [INFO] sisense.client: Duration: 0.29 sec
2026-11-09 06:54:52,300 [INFO] sisense.discovery: Discovery scope: 0 out-of-scope JAQL POST(s) {}; other JAQL paths {'/api/datasources/DW_FAST/jaql': 2}
2026-11-09 06:54:52,317 [INFO] sisense.nap_semantic_capture: Phase 6D NAP capture: TARGET_OBSERVED; NEW OTHER_LIFECYCLE_CLASS; bridge NO_ACTIVITY_BRIDGE; report C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\nap_semantic_capture.json
2026-11-09 06:54:52,318 [INFO] oe_trend_pipeline: Wave 1 discovery: 37 dashboard JAQL POST(s), 37 widget(s), 37 definition(s); VERIFIED 7, DISCOVERED 3, PENDING 4
2026-11-09 06:54:52,328 [INFO] oe_trend_pipeline: Wave 1 discovery report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html
2026-11-09 06:54:52,357 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 7, SERIES_EXTRACTED 2, NOT_AVAILABLE 0, VALIDATION_FAILED 2, PENDING 2
2026-11-09 06:54:52,358 [INFO] oe_trend_pipeline: Cancellation source identification: UNRESOLVED/UNRESOLVED (6abe90b12d01ccb8699b1e55), DAILY_CANCELLATION_CANDIDATE/EXACT_IDENTITY_CONFIRMED (6a98048ccef60720fe7f9b39)
2026-11-09 06:54:52,651 [INFO] oe_trend_pipeline: Current PY2027 value: 797762
2026-11-09 06:54:52,651 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-09 06:54:52,651 [INFO] oe_trend_pipeline: Difference: 797762 - 791826 = +5936
2026-11-09 06:54:52,651 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 797762, "retrieved_at": "2026-11-09T11:54:52+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

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
Retrieved             2026-11-09T11:54:52+00:00
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
2026-11-09 06:54:52,652 [INFO] oe_trend_pipeline: Passive Validation: PASS

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
2026-11-09 06:54:52,662 [INFO] oe_trend_pipeline: Currently Enrolled control: EXACT_VALUE_MATCH (IDENTITY_PASS)
Currently Enrolled    797,762
Snapshot              SKIPPED (DUPLICATE_SLOT: kept existing snapshot from Nov 09, 2026 11:23 UTC)
Historical Snapshots  14
Data Status           LIVE
Previous Snapshot Change+0 (+0.00%)
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Overall Data Status   LIVE
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
Verified dashboard metrics (passive, zero additional requests)
  % Effectuated               LIVE           93.71%  snapshot DUPLICATE_SLOT
  Applications Started        LIVE           573,214  snapshot DUPLICATE_SLOT
  Submitted Applications      LIVE           571,890  snapshot DUPLICATE_SLOT
  New                         LIVE           4,525  snapshot DUPLICATE_SLOT
  Active                      LIVE           60,622  snapshot DUPLICATE_SLOT
  Passive                     LIVE           733,065  snapshot DUPLICATE_SLOT

============================================================
2026-11-09 06:54:53,123 [INFO] oe_trend_pipeline.executive: Step 3/4: building the comparison model from this run
2026-11-09 06:54:53,153 [INFO] oe_trend_pipeline.executive: Step 4/4: writing the executive report

============================================================
Georgia Access — PY2026 vs PY2027 Executive Report
============================================================
Data refreshed          2026-11-09T11:52:58+00:00
PY2026 DB               LIVE_THIS_RUN
PY2027 Sisense          LIVE_THIS_RUN
Currently Enrolled      797,762         LIVE_THIS_RUN
% Effectuated           93.7%           LIVE_THIS_RUN
New                     4,525           LIVE_THIS_RUN
Active                  60,622          LIVE_THIS_RUN
Passive                 733,065         LIVE_THIS_RUN
Applications Started    573,214         LIVE_THIS_RUN
Submitted Applications  571,890         LIVE_THIS_RUN
Total Applicants        840,764         LIVE_THIS_RUN
Snapshots               SKIPPED (DUPLICATE_SLOT)
Executive report        
{
  "report_kind": "EXECUTIVE_PY2026_PY2027_COMPARISON",
  "phase": "7B",
  "generated_at_utc": "2026-11-09T11:52:58+00:00",
  "executive_summary": {
    "data_refreshed": "2026-11-09T11:52:58+00:00",
    "py2026": {
      "freshness": "LIVE_THIS_RUN",
      "retrieved_at": "2026-11-09T11:52:58+00:00",
      "source": "dbo.Enrollments_TEST (coverage_year = 2026)",
      "note": "PY2026 DB: LIVE_THIS_RUN / 2026-11-09T11:52:58+00:00"
    },
    "py2027": {
      "freshness": "LIVE_THIS_RUN",
      "retrieved_at": "2026-11-09T11:54:52+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "note": "PY2027 Sisense: LIVE_THIS_RUN / 2026-11-09T11:54:52+00:00"
    },
    "py2027_observed_at_utc": "2026-11-09T11:54:52+00:00",
    "statement": "PY2026 and PY2027 come from different systems and lifecycle points. Only metrics with defensible semantic alignment are presented as comparisons. Other metrics are explicitly labelled diagnostic or PY2027-only."
  },
  "kpis": [
    {
      "metric_id": "currently_enrolled_people",
      "label": "Currently Enrolled",
      "value_kind": "count",
      "value": 797762,
      "retrieved_at": "2026-11-09T11:54:52+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric_id": "percent_effectuated",
      "label": "% Effectuated",
      "value_kind": "ratio",
      "value": 0.9371353862430148,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric_id": "applications_started",
      "label": "Applications Started",
      "value_kind": "count",
      "value": 573214,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric_id": "submitted_applications",
      "label": "Submitted Applications",
      "value_kind": "count",
      "value": 571890,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN"
    }
  ],
  "currently_enrolled_range": {
    "low": 865946,
    "high": 1320502,
    "scenarios": [
      {
        "candidate_id": "CE1",
        "description": "No status predicate (status filters treated as ignored by the widget).",
        "distinct_people": 1320502
      },
      {
        "candidate_id": "CE2",
        "description": "Enrollee status members minus nested exclusion; enrollment status ignored.",
        "distinct_people": 865947
      },
      {
        "candidate_id": "CE3",
        "description": "Enrollee status members, nested exclusion not applied; enrollment status ignored.",
        "distinct_people": 1320502
      },
      {
        "candidate_id": "CE4",
        "description": "Both status filters as captured, nested exclusion applied (control: contradicts the confirmed ignore of the enrollment-status dashboard filter).",
        "distinct_people": 865946
      }
    ],
    "comparison_status": "DIAGNOSTIC",
    "freshness": "LIVE_THIS_RUN",
    "retrieved_at": "2026-11-09T11:52:58+00:00",
    "note": "CE1-CE4 are competing diagnostic scenarios of one PY2026 metric; none is selected or ranked."
  },
  "population_comparison": {
    "available": true,
    "rows": [
      {
        "metric": "Currently Enrolled vs PY2026 CE1",
        "py2026_value": 1320502,
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 797762,
        "py2027_retrieved_at": "2026-11-09T11:54:52+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
        "absolute_difference": -522740,
        "percent_difference": -39.59,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Scenario CE1: No status predicate (status filters treated as ignored by the widget).",
        "value_kind": "count"
      },
      {
        "metric": "Currently Enrolled vs PY2026 CE2",
        "py2026_value": 865947,
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 797762,
        "py2027_retrieved_at": "2026-11-09T11:54:52+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
        "absolute_difference": -68185,
        "percent_difference": -7.87,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Scenario CE2: Enrollee status members minus nested exclusion; enrollment status ignored.",
        "value_kind": "count"
      },
      {
        "metric": "Currently Enrolled vs PY2026 CE3",
        "py2026_value": 1320502,
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 797762,
        "py2027_retrieved_at": "2026-11-09T11:54:52+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
        "absolute_difference": -522740,
        "percent_difference": -39.59,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Scenario CE3: Enrollee status members, nested exclusion not applied; enrollment status ignored.",
        "value_kind": "count"
      },
      {
        "metric": "Currently Enrolled vs PY2026 CE4",
        "py2026_value": 865946,
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 797762,
        "py2027_retrieved_at": "2026-11-09T11:54:52+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
        "absolute_difference": -68184,
        "percent_difference": -7.87,
        "difference_unit": "count",
        "comparison_status": "DIAGNOSTIC",
        "caveat": "DB enrollee_id is a person-identifier proxy for Sisense exchg_indiv_identifier (unproven); person-type and insurance-type filters unavailable in PY2026; benefit window shifted one year; PY2026 Oct-31-equivalent latest state vs PY2027 live OE. Scenario CE4: Both status filters as captured, nested exclusion applied (control: contradicts the confirmed ignore of the enrollment-status dashboard filter).",
        "value_kind": "count"
      },
      {
        "metric": "% Effectuated vs PY2026 CE1",
        "py2026_value": 0.996935,
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 0.9371353862430148,
        "py2027_retrieved_at": "2026-11-09T11:54:32+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
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
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 0.9371353862430148,
        "py2027_retrieved_at": "2026-11-09T11:54:32+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
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
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 0.9371353862430148,
        "py2027_retrieved_at": "2026-11-09T11:54:32+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
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
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": 0.9371353862430148,
        "py2027_retrieved_at": "2026-11-09T11:54:32+00:00",
        "py2027_source": "Sisense PY 2027 - OE Executive Dashboard",
        "py2027_freshness": "LIVE_THIS_RUN",
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
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": null,
        "py2027_retrieved_at": null,
        "py2027_source": null,
        "py2027_freshness": "UNAVAILABLE",
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
        "py2026_retrieved_at": "2026-11-09T11:52:58+00:00",
        "py2026_source": "dbo.Enrollments_TEST (coverage_year = 2026)",
        "py2026_freshness": "LIVE_THIS_RUN",
        "py2027_value": null,
        "py2027_retrieved_at": null,
        "py2027_source": null,
        "py2027_freshness": "UNAVAILABLE",
        "absolute_difference": null,
        "percent_difference": null,
        "difference_unit": null,
        "comparison_status": "PY2026_ONLY",
        "caveat": "Whole PY2026 latest-state population; no PY2027 counterpart.",
        "value_kind": "count"
      }
    ],
    "note": "CE1-CE4 are competing diagnostic scenarios of one PY2026 metric; none is selected or ranked."
  },
  "py2026_status_populations": {
    "enrollment_status": [
      {
        "status_value": "Cancelled",
        "row_count": 697361,
        "distinct_people": 529245,
        "distinct_policies": 485313,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Pending",
        "row_count": 11681,
        "distinct_people": 11322,
        "distinct_policies": 8444,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Pend",
        "row_count": 220,
        "distinct_people": 193,
        "distinct_policies": 196,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Enrolled",
        "row_count": 928518,
        "distinct_people": 871095,
        "distinct_policies": 650877,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Terminated",
        "row_count": 679443,
        "distinct_people": 596598,
        "distinct_policies": 533065,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Pend canceled",
        "row_count": 13460,
        "distinct_people": 10305,
        "distinct_policies": 10801,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      }
    ],
    "enrollee_status": [
      {
        "status_value": "Cancelled",
        "row_count": 700615,
        "distinct_people": 530883,
        "distinct_policies": 487770,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Pending",
        "row_count": 11597,
        "distinct_people": 11251,
        "distinct_policies": 8432,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Pend",
        "row_count": 220,
        "distinct_people": 193,
        "distinct_policies": 196,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Enrolled",
        "row_count": 909211,
        "distinct_people": 856553,
        "distinct_policies": 650806,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Terminated",
        "row_count": 695552,
        "distinct_people": 609857,
        "distinct_policies": 546812,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Pend canceled",
        "row_count": 13460,
        "distinct_people": 10305,
        "distinct_policies": 10801,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "status_value": "Aborted",
        "row_count": 28,
        "distinct_people": 27,
        "distinct_policies": 25,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      }
    ]
  },
  "py2027_current_snapshot": [
    {
      "metric_id": "currently_enrolled_people",
      "metric": "Currently Enrolled",
      "value_kind": "count",
      "value": 797762,
      "retrieved_at": "2026-11-09T11:54:52+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "percent_effectuated",
      "metric": "% Effectuated",
      "value_kind": "ratio",
      "value": 0.9371353862430148,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "applications_started",
      "metric": "Applications Started",
      "value_kind": "count",
      "value": 573214,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "submitted_applications",
      "metric": "Submitted Applications",
      "value_kind": "count",
      "value": 571890,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "total_applicants",
      "metric": "Total Applicants",
      "value_kind": "count",
      "value": 840764,
      "retrieved_at": "2026-11-09T11:54:53+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "VALIDATION_ONLY"
    },
    {
      "metric_id": "new_enrolled",
      "metric": "New",
      "value_kind": "count",
      "value": 4525,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "active_enrolled",
      "metric": "Active",
      "value_kind": "count",
      "value": 60622,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "PRODUCTION_VERIFIED"
    },
    {
      "metric_id": "passive_enrolled",
      "metric": "Passive",
      "value_kind": "count",
      "value": 733065,
      "retrieved_at": "2026-11-09T11:54:32+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN",
      "verification": "PRODUCTION_VERIFIED"
    }
  ],
  "new_active_passive": {
    "comparison_status": "PY2027_ONLY",
    "py2027": {
      "New": {
        "value": 4525,
        "retrieved_at": "2026-11-09T11:54:32+00:00",
        "source": "Sisense PY 2027 - OE Executive Dashboard",
        "freshness": "LIVE_THIS_RUN"
      },
      "Active": {
        "value": 60622,
        "retrieved_at": "2026-11-09T11:54:32+00:00",
        "source": "Sisense PY 2027 - OE Executive Dashboard",
        "freshness": "LIVE_THIS_RUN"
      },
      "Passive": {
        "value": 733065,
        "retrieved_at": "2026-11-09T11:54:32+00:00",
        "source": "Sisense PY 2027 - OE Executive Dashboard",
        "freshness": "LIVE_THIS_RUN"
      }
    },
    "py2026": "PY2026 equivalent not defensibly available from the canonical enrollment table.",
    "phase_6d": {
      "new_classification": "OTHER_LIFECYCLE_CLASS",
      "activity_bridge": "NO_ACTIVITY_BRIDGE",
      "decision": "CLOSED",
      "capture_artifact_present": true,
      "captured_relationship": "UNRESOLVED_LOGIC"
    },
    "proven_partition": false,
    "partition_note": "New + Active + Passive is not treated as a partition of Currently Enrolled; numeric closeness is not evidence of lifecycle logic.",
    "footer": "Lifecycle measures; no defensible PY2026 equivalent."
  },
  "oe_temporal_diagnostic": {
    "label": "OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC",
    "anchor": "Official OE start anchor not proven; calendar-date alignment only.",
    "footnote": "Activity/cohort dates; not historical population snapshots.",
    "freshness": "LIVE_THIS_RUN",
    "retrieved_at": "2026-11-09T11:52:58+00:00",
    "source": "dbo.Enrollments_TEST (coverage_year = 2026)",
    "available": true,
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
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      },
      {
        "label": "PY2026_DB_TERMINATED_POPULATION_DIAGNOSTIC",
        "distinct_policies": 533065,
        "distinct_people": 596598,
        "comparison_status": "PY2026_ONLY",
        "freshness": "LIVE_THIS_RUN",
        "retrieved_at": "2026-11-09T11:52:58+00:00",
        "source": "dbo.Enrollments_TEST (coverage_year = 2026)"
      }
    ],
    "py2027_daily_activity": {
      "cancelled_policies_daily": {
        "label": "Cancelled Policies",
        "comparison_status": "PY2027_ONLY",
        "points": [
          {
            "date": "012orADaAe",
            "value": 2530
          },
          {
            "date": "012orADaAe",
            "value": 5718
          },
          {
            "date": "012orADaAe",
            "value": 6744
          },
          {
            "date": "012orADaAe",
            "value": 6004
          },
          {
            "date": "012orADaAe",
            "value": 6048
          },
          {
            "date": "012orADaAe",
            "value": 5460
          },
          {
            "date": "012orADaAe",
            "value": 2797
          },
          {
            "date": "012orADaAe",
            "value": 1977
          },
          {
            "date": "012orADaAe",
            "value": 31
          }
        ],
        "retrieved_at": "2026-11-09T11:54:53+00:00",
        "source": "Sisense PY 2027 - OE Executive Dashboard (natural dashboard response)",
        "freshness": "LIVE_THIS_RUN"
      },
      "terminated_policies_daily": {
        "label": "Terminated Policies",
        "comparison_status": "PY2027_ONLY",
        "points": null,
        "retrieved_at": null,
        "source": null,
        "freshness": "UNAVAILABLE"
      }
    },
    "yoy_difference": "Not computed (different semantic families)."
  },
  "applications": {
    "rows": [
      {
        "metric": "Applications Started",
        "py2027": {
          "value": 573214,
          "retrieved_at": "2026-11-09T11:54:32+00:00",
          "source": "Sisense PY 2027 - OE Executive Dashboard",
          "freshness": "LIVE_THIS_RUN"
        },
        "verification": "PRODUCTION_VERIFIED",
        "py2026_value": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
        "comparison_status": "PY2027_ONLY",
        "grain": "application"
      },
      {
        "metric": "Submitted Applications",
        "py2027": {
          "value": 571890,
          "retrieved_at": "2026-11-09T11:54:32+00:00",
          "source": "Sisense PY 2027 - OE Executive Dashboard",
          "freshness": "LIVE_THIS_RUN"
        },
        "verification": "PRODUCTION_VERIFIED",
        "py2026_value": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
        "comparison_status": "PY2027_ONLY",
        "grain": "application"
      },
      {
        "metric": "Total Applicants",
        "py2027": {
          "value": 840764,
          "retrieved_at": "2026-11-09T11:54:53+00:00",
          "source": "Sisense PY 2027 - OE Executive Dashboard",
          "freshness": "LIVE_THIS_RUN"
        },
        "verification": "VALIDATION_ONLY",
        "py2026_value": "NOT_AVAILABLE_FROM_ENROLLMENT_SOURCE",
        "comparison_status": "PY2027_ONLY",
        "grain": "applicant"
      }
    ],
    "funnel": {
      "started": 573214,
      "submitted": 571890,
      "not_yet_submitted": 1324,
      "submitted_share_of_started": 99.77,
      "grain": "application"
    },
    "total_applicants": {
      "value": 840764,
      "retrieved_at": "2026-11-09T11:54:53+00:00",
      "source": "Sisense PY 2027 - OE Executive Dashboard",
      "freshness": "LIVE_THIS_RUN"
    },
    "grain_note": "Total Applicants counts applicants, not applications; it is excluded from funnel arithmetic."
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
      "report_treatment": "PY2027 only; validation-only metric; separate grain from applications."
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
    "PY2027 Currently Enrolled (HISTORICAL_SNAPSHOT) changed from 791,826 (2026-11-05T07:47:11Z) to 797,762 (2026-11-09T11:23:41Z), +5,936 across 14 saved snapshots.",
    "PY2026 enrollment_create_date (OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC): 88.5% of people dated on or before 2025-12-31 were already dated on or before 2025-11-08.",
    "PY2026 enrollment_confirmation_date (OE_LIFECYCLE_ALIGNMENT_DIAGNOSTIC): 89.8% of people dated on or before 2025-12-31 were already dated on or before 2025-11-08."
  ],
  "management_view": [
    {
      "metric": "Currently Enrolled (PY2026 CE1-CE4 range)",
      "py2026": "865,946 \u2013 1,320,502",
      "py2027": "797,762",
      "change": "-522,740 to -68,184",
      "status": "DIAGNOSTIC",
      "freshness": "PY2026 LIVE_THIS_RUN / PY2027 LIVE_THIS_RUN"
    },
    {
      "metric": "% Effectuated (PY2026 CE1-CE4 range)",
      "py2026": "98.9% \u2013 99.7%",
      "py2027": "93.7%",
      "change": "-5.98 pp to -5.20 pp",
      "status": "DIAGNOSTIC",
      "freshness": "PY2026 LIVE_THIS_RUN / PY2027 LIVE_THIS_RUN"
    },
    {
      "metric": "Applications Started",
      "py2026": "\u2014",
      "py2027": "573,214",
      "change": "\u2014",
      "status": "PY2027_ONLY",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric": "Submitted Applications",
      "py2026": "\u2014",
      "py2027": "571,890",
      "change": "\u2014",
      "status": "PY2027_ONLY",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric": "Total Applicants",
      "py2026": "\u2014",
      "py2027": "840,764",
      "change": "\u2014",
      "status": "PY2027_ONLY (validation-only)",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric": "New",
      "py2026": "\u2014",
      "py2027": "4,525",
      "change": "\u2014",
      "status": "PY2027_ONLY",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric": "Active",
      "py2026": "\u2014",
      "py2027": "60,622",
      "change": "\u2014",
      "status": "PY2027_ONLY",
      "freshness": "LIVE_THIS_RUN"
    },
    {
      "metric": "Passive",
      "py2026": "\u2014",
      "py2027": "733,065",
      "change": "\u2014",
      "status": "PY2027_ONLY",
      "freshness": "LIVE_THIS_RUN"
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
    "Official OE start anchor not proven; calendar-date alignment only.",
    "Freshness and comparability are independent: a LIVE_THIS_RUN value keeps its semantic status."
  ],
  "production_comparable": false
}
C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\executive\py2026_vs_py2027_comparison.html
============================================================
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation>
