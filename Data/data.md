

.\.venv\Scripts\python.exe -m database.comparison.field_mapping
PHASE 5B STATUS
Database source(s) inspected: Enrollments_PY2526_01312026, Enrollments_PY2526_02272026, Enrollments_PY2526_03312026, Enrollments_PY2526_04302026, Enrollments_PY2526_05302026, Enrollments_PY2526_05312026, Enrollments_PY2526_06312026, Enrollments_PY2526_07302026, Enrollments_PY2526_08302026, Enrollments_PY2526_09302026, Enrollments_PY2526_10312026, Enrollments_PY2526_DEC31, Enrollments_PY2526_NOV30
PY2026 enrollment-id candidate: enrollment_id (EXACT_NAME)
PY2026 person-id candidate: ENROLLEE_ID_PROXY (IDENTIFIER_EQUIVALENCE_UNPROVEN)
PY2026 status field: enrollment_status_description
PY2026 event-date candidate: enrollment_id (EXACT_NAME)
Cancelled Policies: DIAGNOSTIC
reason: Historical snapshots do not expose last_update_timestamp by that name. enrollment_last_update_date is not assumed equal. Event semantics unproven.
Terminated Policies: DIAGNOSTIC
reason: Historical snapshots do not expose last_update_timestamp by that name. enrollment_last_update_date is not assumed equal. Event semantics unproven.
Currently Enrolled People: DIAGNOSTIC
reason: Verified PY2027 extraction is unchanged. Identifier, filter, and as-of checks are not all proven. Failed/unresolved: person_identifier_equivalence, coverage_year, insurance_type_health, person_type_enrollee_subscriber, enrollment_status_logic, enrollee_status_logic, benefit_effective_date, snapshot_as_of_semantics
Enrolled & Cancelled People: DIAGNOSTIC
reason: Person metric, not policy activity. Diagnostic query ran on one snapshot.
Cancelled - Not Enrolled People: DIAGNOSTIC
reason: Person metric, not policy activity. Diagnostic query ran on one snapshot.
OE anchors: PY2026 = UNKNOWN PY2027 = UNKNOWN
Daily PY2026 activity: BLOCKED
Monthly PY2026 activity: BLOCKED
PY2027 daily history: PENDING
Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2026_field_mapping.json
Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2026_field_mapping.html
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
