





.\.venv\Scripts\python.exe -m unittest discover -s tests -t .
.................................................................................................................................................2026-11-08 20:18:43,259 [WARNING] metrics.fingerprint_evidence: Production metric applications_started not bound: No observation history directory
2026-11-08 20:18:43,259 [WARNING] metrics.fingerprint_evidence: Production metric submitted_applications not bound: No observation history directory
2026-11-08 20:18:43,259 [WARNING] metrics.fingerprint_evidence: Production metric new_enrolled not bound: No observation history directory
2026-11-08 20:18:43,260 [WARNING] metrics.fingerprint_evidence: Production metric active_enrolled not bound: No observation history directory
2026-11-08 20:18:43,260 [WARNING] metrics.fingerprint_evidence: Production metric passive_enrolled not bound: No observation history directory
2026-11-08 20:18:43,260 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=True)
2026-11-08 20:18:43,260 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-08 20:18:43,260 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:18:43,261 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-08 20:18:43,261 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-08 20:18:43,261 [INFO] sisense.auth: Authentication successful
2026-11-08 20:18:43,261 [INFO] sisense.auth: Sisense session verified
2026-11-08 20:18:43,262 [INFO] sisense.auth: Session state saved to tmpkg_5b5d3\auth\sisense_state.json
2026-11-08 20:18:43,262 [INFO] sisense.diagnostics: [debug] Dashboard sent 0 JAQL POST(s); 0 finished and kept for inspection
2026-11-08 20:18:43,263 [INFO] sisense.diagnostics: [debug] No finished dashboard JAQL POSTs could be inspected
2026-11-08 20:18:43,263 [INFO] sisense.diagnostics: [debug] Context cookies: 1 total
2026-11-08 20:18:43,263 [INFO] sisense.diagnostics: [debug] Cookie domains: ['gahixreports.getinsured.com']
2026-11-08 20:18:43,263 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 1
2026-11-08 20:18:43,263 [INFO] sisense.diagnostics: [debug]   sid domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=True
.2026-11-08 20:18:43,267 [WARNING] metrics.fingerprint_evidence: Production metric applications_started not bound: No observation history directory
2026-11-08 20:18:43,267 [WARNING] metrics.fingerprint_evidence: Production metric submitted_applications not bound: No observation history directory
2026-11-08 20:18:43,267 [WARNING] metrics.fingerprint_evidence: Production metric new_enrolled not bound: No observation history directory
2026-11-08 20:18:43,267 [WARNING] metrics.fingerprint_evidence: Production metric active_enrolled not bound: No observation history directory
2026-11-08 20:18:43,267 [WARNING] metrics.fingerprint_evidence: Production metric passive_enrolled not bound: No observation history directory
2026-11-08 20:18:43,267 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=True)
2026-11-08 20:18:43,267 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-08 20:18:43,267 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:18:43,268 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-08 20:18:43,268 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-08 20:18:43,268 [INFO] sisense.auth: Authentication successful
2026-11-08 20:18:43,268 [INFO] sisense.auth: Sisense session verified
2026-11-08 20:18:43,269 [INFO] sisense.auth: Session state saved to tmp8b8mne1y\auth\sisense_state.json
2026-11-08 20:18:43,269 [INFO] oe_trend_pipeline: Passive production metrics: percent_effectuated FAILED, applications_started FAILED, submitted_applications FAILED, new_enrolled FAILED, active_enrolled FAILED, passive_enrolled FAILED
2026-11-08 20:18:43,269 [INFO] oe_trend_pipeline: Current PY2027 value: 812345
2026-11-08 20:18:43,269 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-08 20:18:43,269 [INFO] oe_trend_pipeline: Difference: 812345 - 791826 = +20519
2026-11-08 20:18:43,269 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 812345, "retrieved_at": "2026-11-09T01:18:43+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}
................................................................................................................................2026-11-08 20:18:48,237 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:18:48,237 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
.2026-11-08 20:18:48,238 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:18:48,238 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
.2026-11-08 20:18:48,238 [INFO] sisense.auth: Login form detected; credentials required
.2026-11-08 20:18:48,239 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:18:48,239 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
.............................................................................................................................................................................................................2026-11-08 20:20:17,876 [INFO] oe_trend_pipeline: Wave 1 discovery: 2 dashboard JAQL POST(s), 2 widget(s), 2 definition(s); VERIFIED 7, DISCOVERED 1, PENDING 6
2026-11-08 20:20:17,876 [INFO] oe_trend_pipeline: Cancellation source identification: DAILY_CANCELLATION_CANDIDATE/EXACT_IDENTITY_CONFIRMED (w-cancelled-policies)
...................Passive observation window is active.
2026-11-08 20:20:18,036 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-08 20:20:18,037 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-08 20:20:18,037 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,037 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,039 [INFO] oe_trend_pipeline: Wave 1 discovery: 1 dashboard JAQL POST(s), 1 widget(s), 1 definition(s); VERIFIED 7, DISCOVERED 1, PENDING 6
2026-11-08 20:20:18,040 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 0, SERIES_EXTRACTED 1, NOT_AVAILABLE 0, VALIDATION_FAILED 10, PENDING 2
2026-11-08 20:20:18,040 [INFO] oe_trend_pipeline: Cancellation source identification: DAILY_CANCELLATION_CANDIDATE/EXACT_IDENTITY_CONFIRMED (w-cancelled-policies)
.Passive observation window is active.
2026-11-08 20:20:18,041 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-08 20:20:18,041 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-08 20:20:18,041 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,041 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,044 [INFO] oe_trend_pipeline: Wave 1 discovery: 1 dashboard JAQL POST(s), 1 widget(s), 1 definition(s); VERIFIED 7, DISCOVERED 0, PENDING 7
2026-11-08 20:20:18,044 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 0, SERIES_EXTRACTED 0, NOT_AVAILABLE 0, VALIDATION_FAILED 11, PENDING 2
..Passive observation window is active.
2026-11-08 20:20:18,047 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-08 20:20:18,047 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-08 20:20:18,047 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,047 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.
.Passive observation window is active.
2026-11-08 20:20:18,048 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-08 20:20:18,048 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-08 20:20:18,048 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,048 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.
.Passive observation window is active.
2026-11-08 20:20:18,049 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-08 20:20:18,049 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-08 20:20:18,049 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,049 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,051 [INFO] oe_trend_pipeline: Wave 1 discovery: 0 dashboard JAQL POST(s), 0 widget(s), 0 definition(s); VERIFIED 7, DISCOVERED 0, PENDING 7
2026-11-08 20:20:18,051 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 0, SERIES_EXTRACTED 0, NOT_AVAILABLE 0, VALIDATION_FAILED 11, PENDING 2
.Passive observation window is active.
2026-11-08 20:20:18,053 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-08 20:20:18,053 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-08 20:20:18,053 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-08 20:20:18,053 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.
...............................................................................................2026-11-08 20:20:43,110 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:43,110 [INFO] sisense.client: JAQL attempt 1/3 (timeout 0 sec)
2026-11-08 20:20:43,110 [INFO] sisense.client: HTTP 503 (0.00 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: Response header names: ['content-type']
2026-11-08 20:20:43,111 [WARNING] sisense.retry: JAQL currently_enrolled_people attempt 1/3 failed (transient): TransientSisenseError: HTTP 503 from JAQL endpoint; retrying in 0.0 sec
2026-11-08 20:20:43,111 [INFO] sisense.client: JAQL attempt 2/3 (timeout 0 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: HTTP 504 (0.00 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: Response header names: ['content-type']
2026-11-08 20:20:43,111 [WARNING] sisense.retry: JAQL currently_enrolled_people attempt 2/3 failed (transient): TransientSisenseError: HTTP 504 from JAQL endpoint; retrying in 0.0 sec
2026-11-08 20:20:43,111 [INFO] sisense.client: JAQL attempt 3/3 (timeout 0 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: HTTP 200 (0.00 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: Value cells: 1
2026-11-08 20:20:43,111 [INFO] sisense.client: Duration: 0.00 sec
.2026-11-08 20:20:43,111 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:43,111 [INFO] sisense.client: JAQL attempt 1/3 (timeout 0 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: HTTP 200 (0.00 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: Value cells: 1
2026-11-08 20:20:43,111 [INFO] sisense.client: Duration: 0.00 sec
.2026-11-08 20:20:43,111 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:43,111 [INFO] sisense.client: JAQL attempt 1/3 (timeout 0 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: HTTP 401 (0.00 sec)
2026-11-08 20:20:43,111 [INFO] sisense.client: Response header names: ['content-type']
2026-11-08 20:20:43,112 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:43,112 [INFO] sisense.client: JAQL attempt 1/3 (timeout 0 sec)
2026-11-08 20:20:43,112 [INFO] sisense.client: HTTP 302 (0.00 sec)
2026-11-08 20:20:43,112 [INFO] sisense.client: Response header names: ['content-type']
2026-11-08 20:20:43,112 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:43,112 [INFO] sisense.client: JAQL attempt 1/3 (timeout 0 sec)
2026-11-08 20:20:43,112 [INFO] sisense.client: HTTP 403 (0.00 sec)
2026-11-08 20:20:43,112 [INFO] sisense.client: Response header names: ['content-type']
2026-11-08 20:20:43,112 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:43,112 [INFO] sisense.client: JAQL attempt 1/3 (timeout 0 sec)
2026-11-08 20:20:43,112 [INFO] sisense.client: HTTP 400 (0.00 sec)
2026-11-08 20:20:43,112 [INFO] sisense.client: Response header names: ['content-type']
...2026-11-08 20:20:43,112 [WARNING] sisense.retry: test attempt 1/3 failed (transient): TransientSisenseError: 503; retrying in 2.3 sec
2026-11-08 20:20:43,112 [WARNING] sisense.retry: test attempt 2/3 failed (transient): TransientSisenseError: 503; retrying in 5.5 sec
2026-11-08 20:20:43,112 [ERROR] sisense.retry: test failed on final attempt 3/3: TransientSisenseError: 503
..2026-11-08 20:20:43,113 [WARNING] sisense.retry: test attempt 1/6 failed (transient): TransientSisenseError: 504; retrying in 2.3 sec
2026-11-08 20:20:43,113 [WARNING] sisense.retry: test attempt 2/6 failed (transient): TransientSisenseError: 504; retrying in 5.5 sec
2026-11-08 20:20:43,113 [WARNING] sisense.retry: test attempt 3/6 failed (transient): TransientSisenseError: 504; retrying in 9.7 sec
2026-11-08 20:20:43,113 [WARNING] sisense.retry: test attempt 4/6 failed (transient): TransientSisenseError: 504; retrying in 9.0 sec
2026-11-08 20:20:43,113 [WARNING] sisense.retry: test attempt 5/6 failed (transient): TransientSisenseError: 504; retrying in 10.0 sec
.2026-11-08 20:20:43,113 [WARNING] sisense.retry: test attempt 1/3 failed (transient): TransientSisenseError: 502; retrying in 2.3 sec
2026-11-08 20:20:43,113 [WARNING] sisense.retry: test attempt 2/3 failed (transient): TimeoutError: t; retrying in 5.5 sec
......................................2026-11-08 20:20:48,036 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:48,037 [INFO] sisense.client: JAQL attempt 1/1 (timeout 30 sec)
2026-11-08 20:20:48,037 [INFO] sisense.client: HTTP 200 (0.00 sec)
2026-11-08 20:20:48,037 [INFO] sisense.client: Value cells: 2
2026-11-08 20:20:48,037 [INFO] sisense.client: Duration: 0.00 sec
...........2026-11-08 20:20:48,225 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=True)
2026-11-08 20:20:48,225 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-08 20:20:48,225 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:20:48,225 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-08 20:20:48,225 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-08 20:20:48,225 [INFO] sisense.auth: Authentication successful
2026-11-08 20:20:48,225 [INFO] sisense.auth: Sisense session verified
2026-11-08 20:20:48,226 [INFO] sisense.auth: Session state saved to tmppa90tbk8\auth\sisense_state.json
2026-11-08 20:20:48,226 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:48,226 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-08 20:20:48,226 [INFO] sisense.client: HTTP 401 (0.00 sec)
2026-11-08 20:20:48,227 [INFO] sisense.client: Response header names: ['content-type']
.2026-11-08 20:20:48,229 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=True)
2026-11-08 20:20:48,229 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-08 20:20:48,229 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:20:48,229 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-08 20:20:48,229 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-08 20:20:48,229 [INFO] sisense.auth: Authentication successful
2026-11-08 20:20:48,229 [INFO] sisense.auth: Sisense session verified
2026-11-08 20:20:48,231 [INFO] sisense.auth: Session state saved to tmppn9gleef\auth\sisense_state.json
2026-11-08 20:20:48,231 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:48,231 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-08 20:20:48,231 [INFO] sisense.client: HTTP 200 (0.00 sec)
2026-11-08 20:20:48,231 [INFO] sisense.client: Value cells: 2
2026-11-08 20:20:48,231 [INFO] sisense.client: Duration: 0.00 sec
.2026-11-08 20:20:48,233 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=True)
2026-11-08 20:20:48,233 [INFO] sisense.auth: Dashboard navigation landed on: login
2026-11-08 20:20:48,234 [INFO] sisense.auth: Login form detected; credentials required
2026-11-08 20:20:48,234 [INFO] sisense.auth: Credentials submitted; waiting for dashboard (SSO/MFA may be completed in the browser)
2026-11-08 20:20:48,234 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-08 20:20:48,234 [INFO] sisense.auth: Authentication successful
2026-11-08 20:20:48,234 [INFO] sisense.auth: Sisense session verified
2026-11-08 20:20:48,235 [INFO] sisense.auth: Session state saved to tmp09r4t17j\auth\sisense_state.json
2026-11-08 20:20:48,235 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:48,235 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-08 20:20:48,235 [INFO] sisense.client: HTTP 200 (0.00 sec)
2026-11-08 20:20:48,235 [INFO] sisense.client: Value cells: 2
2026-11-08 20:20:48,235 [INFO] sisense.client: Duration: 0.00 sec
.2026-11-08 20:20:48,238 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=True)
2026-11-08 20:20:48,238 [INFO] sisense.auth: Saved session found; verifying
2026-11-08 20:20:48,238 [INFO] sisense.auth: Dashboard navigation landed on: dashboard
2026-11-08 20:20:48,238 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-08 20:20:48,238 [INFO] sisense.auth: Sisense session verified (saved state)
2026-11-08 20:20:48,238 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:48,238 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-08 20:20:48,238 [INFO] sisense.client: HTTP 200 (0.00 sec)
2026-11-08 20:20:48,238 [INFO] sisense.client: Value cells: 2
2026-11-08 20:20:48,239 [INFO] sisense.client: Duration: 0.00 sec
....................................................2026-11-08 20:20:48,551 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-08 20:20:48,551 [INFO] sisense.client: JAQL attempt 1/1 (timeout 30 sec)
2026-11-08 20:20:48,551 [INFO] sisense.client: HTTP 200 (0.00 sec)
2026-11-08 20:20:48,551 [INFO] sisense.client: Value cells: 2
2026-11-08 20:20:48,551 [INFO] sisense.client: Duration: 0.00 sec
...............
----------------------------------------------------------------------
Ran 729 tests in 127.823s

OK
PS C:\
