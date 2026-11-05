.\.venv\Scripts\python.exe main.py
2026-11-05 01:53:36,875 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 01:53:37,140 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 01:53:41,370 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 01:53:41,371 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-05 01:53:45,629 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 01:53:45,634 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-05 01:53:58,877 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-05 01:54:02,607 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 01:54:02,607 [INFO] sisense.auth: Authentication successful
2026-11-05 01:54:02,607 [INFO] sisense.auth: Sisense session verified
2026-11-05 01:54:02,613 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-05 01:54:02,613 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: False)
2026-11-05 01:54:07,797 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-05 01:54:07,799 [INFO] sisense.diagnostics: [debug] Inspected 1 dashboard JAQL POST(s); statuses: ['200']
2026-11-05 01:54:07,799 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 01:54:07,799 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-05 01:54:07,800 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 01:54:07,803 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-05 01:54:07,804 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-05 01:54:07,804 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-05 01:54:07,805 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-05 01:54:07,805 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-05 01:54:07,805 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-05 01:54:07,805 [INFO] oe_trend_pipeline: Diagnostics-only mode: no JAQL request was sent by this application
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
