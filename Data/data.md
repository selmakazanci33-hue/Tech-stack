.\.venv\Scripts\python.exe main.py                           
2026-11-05 02:46:30,270 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 02:46:30,807 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 02:46:34,935 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 02:46:34,936 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-05 02:46:38,903 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 02:46:38,919 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-05 02:46:58,584 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-05 02:47:02,774 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 02:47:02,775 [INFO] sisense.auth: Authentication successful
2026-11-05 02:47:02,775 [INFO] sisense.auth: Sisense session verified
2026-11-05 02:47:02,783 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-05 02:47:02,783 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: False)
2026-11-05 02:47:09,124 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-05 02:47:09,147 [INFO] sisense.diagnostics: [debug] Inspected 1 dashboard JAQL POST(s); statuses: ['200']
2026-11-05 02:47:09,147 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 02:47:09,147 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-05 02:47:09,147 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 02:47:09,150 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-05 02:47:09,151 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-05 02:47:09,151 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-05 02:47:09,151 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-05 02:47:09,151 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-05 02:47:09,151 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-05 02:47:09,165 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 02:47:09,165 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-05 02:47:09,166 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-05 02:47:09,166 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-05 02:47:09,166 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 02:47:11,249 [INFO] sisense.client: HTTP 200 (2.08 sec)
2026-11-05 02:47:11,249 [INFO] sisense.client: Value cells: 2
2026-11-05 02:47:11,249 [INFO] sisense.client: Duration: 2.08 sec
2026-11-05 02:47:11,635 [INFO] oe_trend_pipeline: Current PY2027 value: 791826
2026-11-05 02:47:11,635 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-05 02:47:11,635 [INFO] oe_trend_pipeline: Difference: 791826 - 791826 = +0
2026-11-05 02:47:11,635 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 791826, "retrieved_at": "2026-11-05T07:47:11+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

============================================================
Georgia Access — PY2027 Sisense Retrieval
============================================================

Authentication        PASS
Dashboard             PY 2027 - OE Executive Dashboard
Datasource            MAIN
Metric                Currently Enrolled People
Coverage Year         2027
Current Value         791,826
Manual Baseline       791,826
Retrieved             2026-11-05T07:47:11+00:00
JAQL Status           PASS

============================================================
Currently Enrolled    791,826
Snapshot              SAVED
Historical Snapshots  1
Data Status           LIVE
Previous Snapshot ChangeInsufficient history
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
