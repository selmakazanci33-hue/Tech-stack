


 .\.venv\Scripts\python.exe main.py
2026-11-05 01:38:11,544 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 01:38:11,958 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 01:38:16,165 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 01:38:16,165 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-05 01:38:19,807 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 01:38:19,813 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-05 01:39:12,242 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-05 01:39:19,328 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 01:39:19,329 [INFO] sisense.auth: Authentication successful
2026-11-05 01:39:19,329 [INFO] sisense.auth: Sisense session verified
2026-11-05 01:39:19,342 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-05 01:39:19,342 [INFO] oe_trend_pipeline: [debug] JAQL will use the authenticated BrowserContext (reused saved state: False)
2026-11-05 01:39:19,343 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); header names: []
2026-11-05 01:39:19,347 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-05 01:39:19,348 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-05 01:39:19,348 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-05 01:39:19,349 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-05 01:39:19,349 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-05 01:39:19,349 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-05 01:39:19,350 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-05 01:39:19,350 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-05 01:39:19,620 [INFO] sisense.client: HTTP 401 (0.27 sec)
2026-11-05 01:39:19,620 [INFO] sisense.client: Response header names: ['cache-control', 'cf-cache-status', 'cf-ray', 'connection', 'content-length', 'content-type', 'date', 'etag', 'expires', 'pragma', 'referrer-policy', 'server', 'set-cookie', 'strict-transport-security', 'vary', 'x-content-type-options', 'x-request-id', 'x-ua-compatible']
2026-11-05 01:39:19,904 [ERROR] oe_trend_pipeline: Retrieval failed: AuthenticationError: HTTP 401: JAQL request is not authenticated (No csrf cookie)
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
