

 .\.venv\Scripts\python.exe main.py                                               
2026-11-08 20:25:11,522 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)                                              
2026-11-08 20:25:12,098 [INFO] sisense.auth: Saved session found; verifying
2026-11-08 20:25:16,053 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-08 20:25:16,053 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-08 20:25:19,114 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-08 20:25:19,152 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-08 20:25:28,305 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-08 20:25:33,226 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-08 20:25:33,227 [INFO] sisense.auth: Authentication successful
2026-11-08 20:25:33,227 [INFO] sisense.auth: Sisense session verified
2026-11-08 20:25:33,239 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-08 20:25:33,239 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: False)
2026-11-08 20:25:37,069 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-08 20:25:37,073 [INFO] sisense.diagnostics: [debug] Inspected 1 dashboard JAQL POST(s); statuses: ['200']
2026-11-08 20:25:37,073 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-08 20:25:37,073 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-08 20:25:37,073 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-08 20:25:37,076 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-08 20:25:37,077 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-08 20:25:37,077 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-08 20:25:37,077 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-08 20:25:37,077 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-08 20:25:37,077 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-08 20:25:37,080 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-08 20:25:37,080 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-08 20:25:52,159 [INFO] oe_trend_pipeline: Passive proof: 37 dashboard JAQL POST(s) seen, 1 for the verified widget; parse PASS
2026-11-08 20:25:52,187 [INFO] oe_trend_pipeline: Passive production metrics: percent_effectuated EXTRACTED, applications_started EXTRACTED, submitted_applications EXTRACTED, new_enrolled EXTRACTED, active_enrolled EXTRACTED, passive_enrolled EXTRACTED
Passive observation window is active.
2026-11-08 20:25:52,187 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-08 20:25:52,187 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-08 20:25:52,187 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:25:52,187 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.

2026-11-08 20:27:37,907 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:27:37,907 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-08 20:27:37,908 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-08 20:27:38,223 [INFO] sisense.client: HTTP 200 (0.32 sec)
2026-11-08 20:27:38,223 [INFO] sisense.client: Value cells: 2
2026-11-08 20:27:38,223 [INFO] sisense.client: Duration: 0.32 sec
2026-11-08 20:27:38,302 [INFO] oe_trend_pipeline: Wave 1 discovery: 135 dashboard JAQL POST(s), 28 widget(s), 34 definition(s); VERIFIED 7, DISCOVERED 1, PENDING 6
2026-11-08 20:27:38,316 [INFO] oe_trend_pipeline: Wave 1 discovery report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html
2026-11-08 20:27:38,337 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 7, SERIES_EXTRACTED 0, NOT_AVAILABLE 0, VALIDATION_FAILED 4, PENDING 2
2026-11-08 20:27:38,669 [INFO] oe_trend_pipeline: Current PY2027 value: 797311
2026-11-08 20:27:38,669 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-08 20:27:38,669 [INFO] oe_trend_pipeline: Difference: 797311 - 791826 = +5485
2026-11-08 20:27:38,670 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 797311, "retrieved_at": "2026-11-09T01:27:38+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

============================================================
Georgia Access — PY2027 Sisense Retrieval
============================================================

Authentication        PASS
Dashboard             PY 2027 - OE Executive Dashboard
Datasource            MAIN
Metric                Currently Enrolled People
Coverage Year         2027
Current Value         797,311
Manual Baseline       791,826
Retrieved             2026-11-09T01:27:38+00:00
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

Passive Value: 797,311
Application Value: 797,311
Difference: 0
Passive Validation: PASS

============================================================
2026-11-08 20:27:38,671 [INFO] oe_trend_pipeline: Passive Validation: PASS

Wave 1 discovery (developer review only — not used for snapshots or the executive report)
  VERIFIED    7
  DISCOVERED  1
  PENDING     6
  Report      C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html

============================================================

Wave 1 runtime validation (developer review only — not stored, not in the executive report)
  Applications Started        VALUE_EXTRACTED     572,753
  Submitted Applications      VALUE_EXTRACTED     571,405
  Total Applicants            VALUE_EXTRACTED     840,166
  % Effectuated               VALUE_EXTRACTED     93.94% (raw 0.939435)
  New                         VALUE_EXTRACTED     4,402
  Active                      VALUE_EXTRACTED     58,793
  Passive                     VALUE_EXTRACTED     734,544
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
2026-11-08 20:27:38,682 [INFO] oe_trend_pipeline: Currently Enrolled control: EXACT_VALUE_MATCH (IDENTITY_PASS)
Currently Enrolled    797,311
Snapshot              SAVED
Historical Snapshots  12
Data Status           LIVE
Previous Snapshot Change+0 (+0.00%)
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Overall Data Status   LIVE
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
Verified dashboard metrics (passive, zero additional requests)
  % Effectuated               LIVE           93.94%  snapshot SAVED
  Applications Started        LIVE           572,753  snapshot SAVED
  Submitted Applications      LIVE           571,405  snapshot SAVED
  New                         LIVE           4,402  snapshot SAVED
  Active                      LIVE           58,793  snapshot SAVED
  Passive                     LIVE           734,544  snapshot SAVED

============================================================
