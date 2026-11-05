.\.venv\Scripts\python.exe main.py                   
2026-11-05 03:49:12,843 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 03:49:13,331 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 03:49:19,199 [INFO] sisense.auth: Dashboard navigation landed on: dashboard
2026-11-05 03:49:19,228 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 03:49:19,229 [INFO] sisense.auth: Sisense session verified (saved state)
2026-11-05 03:49:19,229 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: True)
2026-11-05 03:49:22,682 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-05 03:49:22,697 [INFO] sisense.diagnostics: [debug] Inspected 1 dashboard JAQL POST(s); statuses: ['200']
2026-11-05 03:49:22,697 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 03:49:22,697 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-05 03:49:22,697 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 03:49:22,701 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-05 03:49:22,701 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-05 03:49:22,701 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-05 03:49:22,702 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-05 03:49:22,702 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-05 03:49:22,702 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-05 03:49:22,716 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 03:49:22,716 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-05 03:49:36,136 [INFO] oe_trend_pipeline: Wave 1 discovery: 37 dashboard JAQL POST(s), 28 widget(s); VERIFIED 1, DISCOVERED 7, PENDING 2
2026-11-05 03:49:36,141 [INFO] oe_trend_pipeline: Wave 1 discovery report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html
2026-11-05 03:49:36,156 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 7, NOT_AVAILABLE 0, VALIDATION_FAILED 0, PENDING 2
2026-11-05 03:49:36,179 [INFO] oe_trend_pipeline: Passive proof: 37 dashboard JAQL POST(s) seen, 1 for the verified widget; parse PASS
2026-11-05 03:49:36,180 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-05 03:49:36,180 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-05 03:49:36,180 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 03:49:36,695 [INFO] sisense.client: HTTP 200 (0.51 sec)
2026-11-05 03:49:36,695 [INFO] sisense.client: Value cells: 2
2026-11-05 03:49:36,695 [INFO] sisense.client: Duration: 0.52 sec
2026-11-05 03:49:36,951 [INFO] oe_trend_pipeline: Current PY2027 value: 793512
2026-11-05 03:49:36,951 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-05 03:49:36,951 [INFO] oe_trend_pipeline: Difference: 793512 - 791826 = +1686
2026-11-05 03:49:36,951 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 793512, "retrieved_at": "2026-11-05T08:49:36+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

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
Retrieved             2026-11-05T08:49:36+00:00
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
2026-11-05 03:49:36,953 [INFO] oe_trend_pipeline: Passive Validation: PASS

Wave 1 discovery (developer review only — not used for snapshots or the executive report)
  VERIFIED    1
  DISCOVERED  7
  PENDING     2
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
  Cancelled                   PENDING             
  Terminated                  PENDING             
  Currently Enrolled Control  PASS
  Report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\validation\wave1_runtime_validation.html

============================================================
2026-11-05 03:49:36,956 [INFO] oe_trend_pipeline: Currently Enrolled control: PASS
Currently Enrolled    793,512
Snapshot              SKIPPED (DUPLICATE_SLOT: kept existing snapshot from Nov 05, 2026 08:11 UTC)
Historical Snapshots  2
Data Status           LIVE
Previous Snapshot Change+0 (+0.00%)
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> Remove-item Env:SISENSE_RUNTIME_VALIDATION 
