


.\.venv\Scripts\python.exe -m comparison.live_executive_runner
2026-11-09 08:49:21,847 [INFO] oe_trend_pipeline.executive: Step 1/4: live PY2026 database refresh
2026-11-09 08:50:13,824 [INFO] oe_trend_pipeline.executive: Step 2/4: live PY2027 Sisense refresh and snapshot save
2026-11-09 08:50:13,845 [WARNING] metrics.fingerprint_evidence: Production metric applications_started not bound: No observation history for this metric
2026-11-09 08:50:13,846 [WARNING] metrics.fingerprint_evidence: Production metric submitted_applications not bound: No observation history for this metric
2026-11-09 08:50:13,846 [WARNING] metrics.fingerprint_evidence: Production metric new_enrolled not bound: No observation history for this metric
2026-11-09 08:50:13,846 [WARNING] metrics.fingerprint_evidence: Production metric active_enrolled not bound: No observation history for this metric
2026-11-09 08:50:13,846 [WARNING] metrics.fingerprint_evidence: Production metric passive_enrolled not bound: No observation history for this metric
2026-11-09 08:50:15,746 [INFO] sisense.browser: Launching installed browser channel: msedge (headless=False)
2026-11-09 08:50:16,225 [INFO] sisense.auth: Saved session found; verifying
2026-11-09 08:50:23,876 [INFO] sisense.auth: Dashboard navigation landed on: dashboard
2026-11-09 08:50:23,928 [INFO] sisense.auth: Dashboard: PY 2027 - OE Executive Dashboard
2026-11-09 08:50:23,928 [INFO] sisense.auth: Sisense session verified (saved state)
2026-11-09 08:50:23,928 [INFO] oe_trend_pipeline: [debug] Authenticated BrowserContext ready (reused saved state: True)
2026-11-09 08:50:23,928 [INFO] sisense.diagnostics: [debug] Dashboard sent 37 JAQL POST(s); 2 finished and kept for inspection
2026-11-09 08:50:23,952 [INFO] sisense.diagnostics: [debug] Inspected 2 dashboard JAQL POST(s); statuses: ['200']
2026-11-09 08:50:23,952 [INFO] sisense.diagnostics: [debug] Header names on every HTTP 200 dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 08:50:23,952 [INFO] sisense.diagnostics: [debug] Cookie names sent on every HTTP 200 dashboard JAQL POST: ['XSRF-TOKEN', 'server.session']
2026-11-09 08:50:23,952 [INFO] sisense.diagnostics: [debug] Header names seen on any dashboard JAQL POST: [':authority', ':method', ':path', ':scheme', 'accept', 'accept-encoding', 'accept-language', 'content-length', 'content-type', 'cookie', 'internal', 'origin', 'priority', 'referer', 'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform', 'sec-fetch-dest', 'sec-fetch-mode', 'sec-fetch-site', 'user-agent', 'x-request-id', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 08:50:23,956 [INFO] sisense.diagnostics: [debug] Context cookies: 3 total
2026-11-09 08:50:23,956 [INFO] sisense.diagnostics: [debug] Cookie domains: ['.candu.ai', 'gahixreports.getinsured.com']
2026-11-09 08:50:23,957 [INFO] sisense.diagnostics: [debug] Cookies applicable to gahixreports.getinsured.com/api/datasources/MAIN/jaql: 2
2026-11-09 08:50:23,957 [INFO] sisense.diagnostics: [debug]   server.session domain=gahixreports.getinsured.com path=/ secure=True httpOnly=True sameSite=Lax session=False
2026-11-09 08:50:23,957 [INFO] sisense.diagnostics: [debug]   XSRF-TOKEN domain=gahixreports.getinsured.com path=/ secure=True httpOnly=False sameSite=Lax session=False
2026-11-09 08:50:23,957 [INFO] sisense.diagnostics: [debug]   not sent to JAQL: cdn-allocation domain=.candu.ai path=/ secure=True httpOnly=True sameSite=None session=True
2026-11-09 08:50:23,974 [INFO] oe_trend_pipeline: Request metadata taken from observed dashboard JAQL request: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 08:50:23,974 [INFO] oe_trend_pipeline: CSRF header matches current BrowserContext cookie: True
2026-11-09 08:51:30,287 [INFO] oe_trend_pipeline: Passive proof: 8 dashboard JAQL POST(s) seen, 0 for the verified widget; parse FAIL
2026-11-09 08:52:28,774 [INFO] oe_trend_pipeline: Passive production metrics: percent_effectuated EXTRACTED, applications_started FAILED, submitted_applications FAILED, new_enrolled FAILED, active_enrolled FAILED, passive_enrolled FAILED
Passive observation window is active.
2026-11-09 08:52:28,774 [INFO] oe_trend_pipeline: Passive observation window is active.
Use the already-open dashboard normally to expose the widgets you want to validate.
2026-11-09 08:52:28,774 [INFO] oe_trend_pipeline: Use the already-open dashboard normally to expose the widgets you want to validate.
No additional application JAQL requests will be generated.
2026-11-09 08:52:28,775 [INFO] oe_trend_pipeline: No additional application JAQL requests will be generated.
Press ENTER in this terminal when natural dashboard observation is complete.
2026-11-09 08:52:28,775 [INFO] oe_trend_pipeline: Press ENTER in this terminal when natural dashboard observation is complete.

2026-11-09 08:52:54,338 [INFO] sisense.client: Metric: currently_enrolled_people
2026-11-09 08:52:54,338 [INFO] sisense.client: JAQL attempt 1/3 (timeout 30 sec)
2026-11-09 08:52:54,338 [INFO] sisense.client: Forwarding observed request metadata headers: ['internal', 'origin', 'referer', 'x-sisense-origin', 'x-tenant-id', 'x-xsrf-token']
2026-11-09 08:52:55,144 [INFO] sisense.client: HTTP 200 (0.81 sec)
2026-11-09 08:52:55,144 [INFO] sisense.client: Value cells: 2
2026-11-09 08:52:55,145 [INFO] sisense.client: Duration: 0.81 sec
2026-11-09 08:52:55,205 [INFO] sisense.discovery: Discovery scope: 0 out-of-scope JAQL POST(s) {}; other JAQL paths {'/api/datasources/DW_FAST/jaql': 2}
2026-11-09 08:52:55,221 [INFO] sisense.nap_semantic_capture: Phase 6D NAP capture: TARGET_OBSERVED; NEW OTHER_LIFECYCLE_CLASS; bridge NO_ACTIVITY_BRIDGE; report C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\nap_semantic_capture.json
2026-11-09 08:52:55,226 [INFO] oe_trend_pipeline.activity_evidence: Phase 8B enrollment activity evidence: PARTIAL_EVIDENCE_ONLY; C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2027_enrollment_activity_evidence.json
2026-11-09 08:52:55,227 [INFO] oe_trend_pipeline: Wave 1 discovery: 37 dashboard JAQL POST(s), 37 widget(s), 37 definition(s); VERIFIED 7, DISCOVERED 3, PENDING 4
2026-11-09 08:52:55,235 [INFO] oe_trend_pipeline: Wave 1 discovery report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html
2026-11-09 08:52:55,269 [INFO] oe_trend_pipeline: Wave 1 runtime validation: VALUE_EXTRACTED 4, SERIES_EXTRACTED 2, NOT_AVAILABLE 0, VALIDATION_FAILED 5, PENDING 2
2026-11-09 08:52:55,270 [INFO] oe_trend_pipeline: Cancellation source identification: UNRESOLVED/UNRESOLVED (6abe90b12d01ccb8699b1e55), DAILY_CANCELLATION_CANDIDATE/EXACT_IDENTITY_CONFIRMED (6a98048ccef60720fe7f9b39)
2026-11-09 08:52:55,537 [INFO] oe_trend_pipeline: Current PY2027 value: 797777
2026-11-09 08:52:55,537 [INFO] oe_trend_pipeline: Manual baseline: 791826
2026-11-09 08:52:55,537 [INFO] oe_trend_pipeline: Difference: 797777 - 791826 = +5951
2026-11-09 08:52:55,537 [INFO] oe_trend_pipeline: Result: {"metric": "currently_enrolled_people", "plan_year": 2027, "value": 797777, "retrieved_at": "2026-11-09T13:52:55+00:00", "source": "Sisense MAIN", "dashboard": "PY 2027 - OE Executive Dashboard"}

============================================================
Georgia Access — PY2027 Sisense Retrieval
============================================================

Authentication        PASS
Dashboard             PY 2027 - OE Executive Dashboard
Datasource            MAIN
Metric                Currently Enrolled People
Coverage Year         2027
Current Value         797,777
Manual Baseline       791,826
Retrieved             2026-11-09T13:52:55+00:00
JAQL Status           PASS

============================================================

Passive JAQL proof (validation only — application value is authoritative)
Passive observation:
  Candidate: NOT FOUND
  HTTP Status: n/a
  Parse: FAIL
  Reason: No dashboard request for the verified widget

Passive Value: n/a
Application Value: 797,777
Difference: n/a
Passive Validation: FAIL

============================================================
2026-11-09 08:52:55,538 [INFO] oe_trend_pipeline: Passive Validation: FAIL

Wave 1 discovery (developer review only — not used for snapshots or the executive report)
  VERIFIED    7
  DISCOVERED  3
  PENDING     4
  Identification 2 cancellation source candidate(s)
  Report      C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\discovery\wave1_metric_discovery.html

============================================================

Wave 1 runtime validation (developer review only — not stored, not in the executive report)
  Applications Started        VALUE_EXTRACTED     573,232
  Submitted Applications      VALUE_EXTRACTED     571,906
  Total Applicants            VALUE_EXTRACTED     840,788
  % Effectuated               VALUE_EXTRACTED     93.77% (raw 0.937666)
  New                         VALIDATION_FAILED   
  Active                      VALIDATION_FAILED   
  Passive                     VALIDATION_FAILED   
  Enrolled & Cancelled        VALIDATION_FAILED   
  Cancelled - Not Enrolled    VALIDATION_FAILED   
  Cancelled Policies — OBSERVED
  SERIES_EXTRACTED
  Cancelled Policies          SERIES_EXTRACTED    
  Terminated Policies         SERIES_EXTRACTED    
  Cancelled                   PENDING             
  Terminated                  PENDING             
  Currently Enrolled identity IDENTITY_PASS
  Currently Enrolled Control  EXACT_VALUE_MATCH
  Promotion evidence (validation-only candidates; nothing is promoted automatically)
    Total Applicants          STABLE        ELIGIBLE
  Cancellation / termination evidence (validation only; not production)
    Enrolled & Cancelled      MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Cancelled - Not Enrolled  MISSING       NOT ELIGIBLE (Extraction status VALIDATION_FAILED)
    Cancelled Policies        STABLE        ELIGIBLE
    Terminated Policies       STABLE        ELIGIBLE
    Shared widget cancelled_policies_daily, terminated_policies_daily: ELIGIBLE TOGETHER
    Fingerprint observation: RECORDED
  Cancellation source identification (structure only; not production)
    6abe90b12d01ccb8699b1e55UNRESOLVED                      UNRESOLVED
    6a98048ccef60720fe7f9b39DAILY_CANCELLATION_CANDIDATE    EXACT_IDENTITY_CONFIRMED
  Report: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\validation\wave1_runtime_validation.html

============================================================
2026-11-09 08:52:55,559 [INFO] oe_trend_pipeline: Currently Enrolled control: EXACT_VALUE_MATCH (IDENTITY_PASS)
Currently Enrolled    797,777
Snapshot              SKIPPED (DUPLICATE_SLOT: kept existing snapshot from Nov 09, 2026 13:01 UTC)
Historical Snapshots  16
Data Status           LIVE
Previous Snapshot Change+0 (+0.00%)
Daily Change          Insufficient history
7-Day Change          Insufficient history
30-Day Change         Insufficient history
Overall Data Status   PARTIAL
Report                C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\latest\index.html

============================================================
Verified dashboard metrics (passive, zero additional requests)
  % Effectuated               LIVE           93.77%  snapshot DUPLICATE_SLOT
  Applications Started        STALE          Approved source definition is not available
  Submitted Applications      STALE          Approved source definition is not available
  New                         STALE          Approved source definition is not available
  Active                      STALE          Approved source definition is not available
  Passive                     STALE          Approved source definition is not available

============================================================
2026-11-09 08:52:55,996 [INFO] oe_trend_pipeline.executive: Step 3/4: building the comparison model from this run
2026-11-09 08:52:56,055 [INFO] oe_trend_pipeline.executive: Step 4/4: writing the executive report

============================================================
Georgia Access — PY2026 vs PY2027 Executive Report
============================================================
Data refreshed          2026-11-09T13:49:21+00:00
PY2026 DB               LIVE_THIS_RUN
PY2027 Sisense          LIVE_THIS_RUN
Currently Enrolled      797,777         LIVE_THIS_RUN
% Effectuated           93.8%           LIVE_THIS_RUN
New                     4,525           STALE_FALLBACK
Active                  60,622          STALE_FALLBACK
Passive                 733,065         STALE_FALLBACK
Applications Started    573,214         STALE_FALLBACK
Submitted Applications  571,890         STALE_FALLBACK
Total Applicants        840,788         LIVE_THIS_RUN
Snapshots               SKIPPED (DUPLICATE_SLOT)
Executive report        C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\executive\py2026_vs_py2027_comparison.html
============================================================

Runtime timing
PY2026 database         00:52
PY2027 Sisense          02:42
History preparation     00:00
Comparison model        00:00
Report rendering        00:00
Total                   03:34
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
