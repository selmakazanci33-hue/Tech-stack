


.\.venv\Scripts\python.exe main.py
2026-11-05 01:50:08,073 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 01:50:08,580 [INFO] sisense.auth: Saved session found; verifying
2026-11-05 01:50:13,670 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 01:50:13,670 [INFO] sisense.auth: Saved session is expired or invalid; discarding it
2026-11-05 01:50:17,798 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 01:50:17,806 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-05 01:50:35,133 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-05 01:50:38,822 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 01:50:38,822 [INFO] sisense.auth: Authentication successful
2026-11-05 01:50:38,822 [INFO] sisense.auth: Sisense session verified
2026-11-05 01:50:38,844 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-05 01:50:38,845 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-05 01:50:38,845 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-05 01:50:39,125 [INFO] sisense.client: HTTP 401 (0.28 sec)
2026-11-05 01:50:39,125 [INFO] sisense.client: Response header names: ['cache-control', 'cf-cache-status', 'cf-ray', 'connection', 'content-length', 'content-type', 'date', 'etag', 'expires', 'pragma', 'referrer-policy', 'server', 'set-cookie', 'strict-transport-security', 'vary', 'x-content-type-options', 'x-request-id', 'x-ua-compatible']
2026-11-05 01:50:39,934 [ERROR] oe_trend_pipeline: Retrieval failed: AuthenticationError: HTTP 401: JAQL request is not authenticated (No csrf cookie)
PS C:\Users\SelmaK
