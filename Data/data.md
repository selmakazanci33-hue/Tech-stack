



nloads\project\oe_trend_pipeline_automation> .\.venv\Scripts\python.exe main.py
2026-11-05 01:23:51,163 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-05 01:23:55,267 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-05 01:23:55,303 [INFO] sisense.auth: Login form detected; credentials required
Sisense password: 
2026-11-05 01:24:00,315 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-05 01:24:02,337 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-05 01:24:02,337 [INFO] sisense.auth: Authentication successful
2026-11-05 01:24:02,337 [INFO] sisense.auth: Sisense session verified
2026-11-05 01:24:02,367 [INFO] sisense.auth: Session state saved to runtime\auth\sisense_state.json
2026-11-05 01:24:02,368 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-05 01:24:02,368 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-05 01:24:02,680 [INFO] sisense.client: HTTP 401 (0.31 sec)
2026-11-05 01:24:03,494 [ERROR] oe_trend_pipeline: Retrieval failed: AuthenticationError: HTTP 401: JAQL request is not authenticated
