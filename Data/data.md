


@'
import json, re
norm = lambda s: re.sub(r"\s+", " ", str(s or "")).strip().lower()
d = json.load(open("reports/discovery/wave1_metric_discovery.json", encoding="utf-8"))
v = json.load(open("reports/validation/wave1_runtime_validation.json", encoding="utf-8"))
inv = d.get("widget_inventory", [])
print("GENERATED", d.get("generated_at_utc"), "| inventory rows", len(inv),
      "| rows with new fields", sum(any("matches_verified_dashboard_filter" in r for r in w.get("metadata_roles", [])) for w in inv))
want = {"cancelled policies", "terminated policies"}
hits = [w for w in inv if "terminated" in norm(w.get("widget_title")) or want & {norm(t) for t in w.get("measure_titles", [])}]
print(json.dumps({"activity_widget_rows": hits,
                  "cancellation_source_identification": d.get("cancellation_source_identification"),
                  "runtime_rows": [{k: m.get(k) for k in ("metric_id", "widget_id", "widget_title", "shape", "binding", "extraction_status", "reason", "measure_titles", "bound_measure_title", "date_dimension_title", "time_grain", "date_semantics")}
                                   for m in v.get("metrics", []) if m.get("metric_id") in ("cancelled_policies_daily", "terminated_policies_daily", "enrolled_cancelled", "cancelled_not_enrolled")]},
                 indent=2))
'@ | .\.venv\Scripts\python.exe - > activity_widget_evidence.json; Get-Content activity_widget_evidence.json
