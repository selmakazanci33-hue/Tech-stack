

.\.venv\Scripts\python.exe main.py
2026-11-05 02:01:42,709 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 02:01:43,089 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 02:01:49,156 [INFO] sisense.auth: Dashboard navigation landed on: dashboard
2026-11-05 02:01:49,191 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 02:01:49,192 [INFO] sisense.auth: Sisense session verified (saved state)
2026-11-05 02:01:49,192 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: True)
2026-11-05 02:01:50,900 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 1 finished and kept for inspection
2026-11-05 02:01:50,926 [INFO] sisense.diagnostics: [debug] Inspected 10 dashboard JAQL POST(s); statuses: ['200']
2026-11-05 02:01:50,926 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 02:01:50,926 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-05 02:01:50,927 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-05 02:01:50,931 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-05 02:01:50,931 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-05 02:01:50,931 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-05 02:01:50,932 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-05 02:01:50,932 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-05 02:01:50,932 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-05 02:01:50,932 [INFO] oe_trend_pipeline: Diagnostics-only mode: no JAQL request was sent by this application
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
