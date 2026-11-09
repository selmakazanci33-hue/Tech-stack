


.\.venv\Scripts\python.exe -m database.comparison.activity_semantic_bridge --existing
ACTIVITY STABILITY FROM EXISTING REPORT (no database, no Sisense)
Snapshot dates: {'Enrollments_PY2526_01312026': '2026-01-31', 'Enrollments_PY2526_02272026': '2026-02-27', 'Enrollments_PY2526_DEC31': None, 'Enrollments_PY2526_NOV30': None}
Cancelled: DRIFTING
  Enrollments_PY2526_01312026 -> Enrollments_PY2526_02272026 lag=27d retention=0.000819 days_within=0.0 max_dev=1.0 DRIFTING
Terminated: DRIFTING
  Enrollments_PY2526_01312026 -> Enrollments_PY2526_02272026 lag=27d retention=0.827476 days_within=0.333333 max_dev=1.0 DRIFTING
Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2026_activity_stability_existing.json
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
