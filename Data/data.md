


 .\.venv\Scripts\python.exe main.py
2026-11-05 06:51:12,750 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 06:51:13,220 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 06:51:19,443 [INFO] sisense.auth: Dashboard navigation landed on: dashboard
2026-11-05 06:51:19,462 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 06:51:19,462 [INFO] sisense.auth: Sisense session verified (saved state)
2026-11-05 06:51:19,462 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: True)
2026-11-05 06:51:23,481 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-05 06:51:23,498 [INFO] sisense.diagnostics: [debug] Inspected 1 dashboard JAQL POST(s); statuses: ['200']
2026-11-05 06:51:23,498 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 06:51:23,498 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-05 06:51:23,498 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 06:51:23,502 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-05 06:51:23,502 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-05 06:51:23,502 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-05 06:51:23,502 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-05 06:51:23,502 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-05 06:51:23,503 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-05 06:51:23,520 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 06:51:23,520 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-05 06:51:35,910 [INFO] oe_trend_pipeline: Wave 1 discovery: 37 dashboard JAQL POST(s), 28 widget(s); VERIFIED 7, DISCOVERED 1, PENDING 6
2026-11-05 06:51:35,918 [INFO] oe_trend_pipeline: Wave 1 discovery report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html
2026-11-05 06:51:35,933 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 7, SERIES_EXTRACTED 0, NOT_AVAILABLE 0, VALIDATION_FAILED 4, PENDING 2
2026-11-05 06:51:35,951 [INFO] oe_trend_pipeline: Passive proof: 37 dashboard JAQL POST(s) seen, 1 for the verified widget; parse PASS
2026-11-05 06:51:35,982 [INFO] oe_trend_pipeline: Passive production metrics: percent_effectuated EXTRACTED, applications_started EXTRACTED, submitted_applications EXTRACTED, new_enrolled EXTRACTED, active_enrolled EXTRACTED, passive_enrolled EXTRACTED
2026-11-05 06:51:35,982 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-05 06:51:35,982 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-05 06:51:35,982 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 06:51:36,247 [INFO] sisense.client: HTTP 200 (0.26 sec)
2026-11-05 06:51:36,247 [INFO] sisense.client: Value cells: 2
2026-11-05 06:51:36,247 [INFO] sisense.client: Duration: 0.26 sec
2026-11-05 06:51:36,562 [INFO] oe_trend_pipeline: Current PY2027 value: 793512
2026-11-05 06:51:36,562 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-05 06:51:36,562 [INFO] oe_trend_pipeline: Difference: 793512 - 791826 = +1686
2026-11-05 06:51:36,562 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 793512, "retrieved_at": "2026-11-05T11:51:36+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

============================================================
Georgia Access — PY2027 Sisense Retrieval
============================================================

Authentication        PASS
Dashboard             PY 2027 - OE Executive Dashboard
Datasource            MAIN
Metric                Currently Enrolled People
Coverage Year         2027
Current Value         793,512
Manual Baseline       791,826
Retrieved             2026-11-05T11:51:36+00:00
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

Passive Value: 793,512
Application Value: 793,512
Difference: 0
Passive Validation: PASS

============================================================
2026-11-05 06:51:36,563 [INFO] oe_trend_pipeline: Passive Validation: PASS

Wave 1 discovery (developer review only — not used for snapshots or the executive report)
  VERIFIED    7
  DISCOVERED  1
  PENDING     6
  Report      C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html

============================================================

Wave 1 runtime validation (developer review only — not stored, not in the executive report)
  Applications Started        VALUE_EXTRACTED     566,051
  Submitted Applications      VALUE_EXTRACTED     565,200
  Total Applicants            VALUE_EXTRACTED     832,776
  % Effectuated               VALUE_EXTRACTED     95.48% (raw 0.954845)
  New                         VALUE_EXTRACTED     2,510
  Active                      VALUE_EXTRACTED     35,266
  Passive                     VALUE_EXTRACTED     756,009
  Enrolled & Cancelled        VALIDATION_FAILED   
  Cancelled - Not Enrolled    VALIDATION_FAILED   
  Cancelled Policies          VALIDATION_FAILED   
  Terminated Policies         VALIDATION_FAILED   
  Cancelled                   PENDING             
  Terminated                  PENDING             
  Currently Enrolled Control  PASS
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
2026-11-05 06:51:36,571 [INFO] oe_trend_pipeline: Currently Enrolled control: PASS
Currently Enrolled    793,512
Snapshot              SKIPPED (DUPLICATE_SLOT: kept existing snapshot from Nov 05, 2026 11:01 UTC)
Historical Snapshots  5
Data Status           LIVE
Previous Snapshot Change+0 (+0.00%)
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Overall Data Status   LIVE
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
Verified dashboard metrics (passive, zero additional requests)
  % Effectuated               LIVE           95.48%  snapshot DUPLICATE_SLOT
  Applications Started        LIVE           566,051  snapshot DUPLICATE_SLOT
  Submitted Applications      LIVE           565,200  snapshot DUPLICATE_SLOT
  New                         LIVE           2,510  snapshot DUPLICATE_SLOT
  Active                      LIVE           35,266  snapshot DUPLICATE_SLOT
  Passive                     LIVE           756,009  snapshot DUPLICATE_SLOT

============================================================
