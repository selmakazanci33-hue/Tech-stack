2026-11-03 05:00:52,106 INFO    oe_trend_pipeline — Pipeline start — run_id=20261103_050052 log=C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline-main\logs\oe_trend_pipeline_20261103_050052.log
2026-11-03 05:00:52,109 INFO    oe_trend_pipeline — SQL preflight passed
2026-11-03 05:00:52,111 INFO    src.azure_connection — Azure connection diagnostic — env_file: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline-main\.env
2026-11-03 05:00:52,111 INFO    src.azure_connection — Azure connection diagnostic — env_file_exists: True
2026-11-03 05:00:52,112 INFO    src.azure_connection — Azure connection diagnostic — server_present: True
2026-11-03 05:00:52,112 INFO    src.azure_connection — Azure connection diagnostic — database_present: True
2026-11-03 05:00:52,112 INFO    src.azure_connection — Azure connection diagnostic — username_present: True
2026-11-03 05:00:52,112 INFO    src.azure_connection — Azure connection diagnostic — driver: ODBC Driver 17 for SQL Server
2026-11-03 05:00:52,112 INFO    src.azure_connection — Azure connection diagnostic — authentication_mode: ActiveDirectoryInteractive
2026-11-03 05:00:52,113 INFO    src.azure_connection — Azure connection diagnostic — connection_timeout: 300
2026-11-03 05:00:52,134 INFO    src.azure_connection — CONNECTING TO AZURE — complete browser sign-in within 300 seconds
2026-11-03 05:01:02,715 INFO    src.azure_connection — Azure connection successful
2026-11-03 05:01:02,715 INFO    oe_trend_pipeline — Step — execute Enrollment query (enrollment_trend.sql)
2026-11-03 05:01:02,717 INFO    src.query_executor — Query start — enrollment_trend.sql
2026-11-03 05:01:05,032 INFO    src.query_executor — Query done — enrollment_trend.sql rows=224 seconds=2.3
2026-11-03 05:01:05,057 INFO    oe_trend_pipeline — Step — process Enrollment
2026-11-03 05:01:05,091 INFO    src.data_processor — Processed Enrollment — PY2025: 187 days, total 633,677, PY2026: 37 days, total 1,061,718
2026-11-03 05:01:05,092 INFO    oe_trend_pipeline — Step — validate Enrollment control totals
2026-11-03 05:01:05,105 INFO    src.validator — Validation L1 Enrollment PY2025 daily_sum_equals_final_cumulative — MATCHED expected=633677 actual=633677 diff=0
2026-11-03 05:01:05,105 INFO    src.validator — Validation L1 Enrollment PY2025 control_total — MATCHED expected=633677 actual=633677 diff=0
2026-11-03 05:01:05,105 INFO    src.validator — Validation L2 Enrollment PY2025 issuer_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:05,105 INFO    src.validator — Validation L3 Enrollment PY2025 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:05,105 INFO    src.validator — Validation L1 Enrollment PY2026 daily_sum_equals_final_cumulative — MATCHED expected=1061718 actual=1061718 diff=0
2026-11-03 05:01:05,106 INFO    src.validator — Validation L1 Enrollment PY2026 control_total — MATCHED expected=1061718 actual=1061718 diff=0
2026-11-03 05:01:05,106 INFO    src.validator — Validation L2 Enrollment PY2026 issuer_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:05,106 INFO    src.validator — Validation L3 Enrollment PY2026 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:05,106 INFO    oe_trend_pipeline — Step — execute Cancellation query (cancellation_trend.sql)
2026-11-03 05:01:05,107 INFO    src.query_executor — Query start — cancellation_trend.sql
2026-11-03 05:01:06,930 INFO    src.query_executor — Query done — cancellation_trend.sql rows=502 seconds=1.8
2026-11-03 05:01:06,941 INFO    oe_trend_pipeline — Step — process Cancellation
2026-11-03 05:01:06,958 INFO    src.data_processor — Processed Cancellation — PY2025: 428 days, total 536,086, PY2026: 74 days, total 370,412
2026-11-03 05:01:06,959 INFO    oe_trend_pipeline — Step — validate Cancellation control totals
2026-11-03 05:01:06,969 INFO    src.validator — Validation L1 Cancellation PY2025 daily_sum_equals_final_cumulative — MATCHED expected=536086 actual=536086 diff=0
2026-11-03 05:01:06,970 INFO    src.validator — Validation L1 Cancellation PY2025 control_total — MATCHED expected=536086 actual=536086 diff=0
2026-11-03 05:01:06,970 INFO    src.validator — Validation L2 Cancellation PY2025 issuer_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:06,970 INFO    src.validator — Validation L3 Cancellation PY2025 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:06,970 INFO    src.validator — Validation L1 Cancellation PY2026 daily_sum_equals_final_cumulative — MATCHED expected=370412 actual=370412 diff=0
2026-11-03 05:01:06,971 INFO    src.validator — Validation L1 Cancellation PY2026 control_total — MATCHED expected=370412 actual=370412 diff=0
2026-11-03 05:01:06,971 INFO    src.validator — Validation L2 Cancellation PY2026 issuer_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:06,972 INFO    src.validator — Validation L3 Cancellation PY2026 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:06,973 INFO    oe_trend_pipeline — Step — execute Termination query (termination_trend.sql)
2026-11-03 05:01:06,974 INFO    src.query_executor — Query start — termination_trend.sql
2026-11-03 05:01:08,604 INFO    src.query_executor — Query done — termination_trend.sql rows=402 seconds=1.6
2026-11-03 05:01:08,607 INFO    oe_trend_pipeline — Step — process Termination
2026-11-03 05:01:08,620 INFO    src.data_processor — Processed Termination — PY2025: 384 days, total 548,512, PY2026: 18 days, total 18,444
2026-11-03 05:01:08,621 INFO    oe_trend_pipeline — Step — validate Termination control totals
2026-11-03 05:01:08,633 INFO    src.validator — Validation L1 Termination PY2025 daily_sum_equals_final_cumulative — MATCHED expected=548512 actual=548512 diff=0
2026-11-03 05:01:08,633 INFO    src.validator — Validation L1 Termination PY2025 control_total — MATCHED expected=548512 actual=548512 diff=0
2026-11-03 05:01:08,634 INFO    src.validator — Validation L2 Termination PY2025 issuer_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:08,634 INFO    src.validator — Validation L3 Termination PY2025 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:08,634 INFO    src.validator — Validation L1 Termination PY2026 daily_sum_equals_final_cumulative — MATCHED expected=18444 actual=18444 diff=0
2026-11-03 05:01:08,634 INFO    src.validator — Validation L1 Termination PY2026 control_total — MATCHED expected=18444 actual=18444 diff=0
2026-11-03 05:01:08,634 INFO    src.validator — Validation L2 Termination PY2026 issuer_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:08,635 INFO    src.validator — Validation L3 Termination PY2026 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:08,636 INFO    oe_trend_pipeline — Step — extended validation (Level 1 recount, Level 2 issuer, Level 3 status category)
2026-11-03 05:01:08,637 INFO    src.query_executor — Query start — validation.sql:enrollment_level1_total
2026-11-03 05:01:10,754 INFO    src.query_executor — Query done — validation.sql:enrollment_level1_total rows=2 seconds=2.1
2026-11-03 05:01:10,754 INFO    src.query_executor — Query start — validation.sql:policy_event_level1_total
2026-11-03 05:01:12,968 INFO    src.query_executor — Query done — validation.sql:policy_event_level1_total rows=4 seconds=2.2
2026-11-03 05:01:12,968 INFO    src.query_executor — Query start — validation.sql:enrollment_level2_issuer
2026-11-03 05:01:15,145 INFO    src.query_executor — Query done — validation.sql:enrollment_level2_issuer rows=33 seconds=2.2
2026-11-03 05:01:15,146 INFO    src.query_executor — Query start — validation.sql:policy_event_level2_issuer
2026-11-03 05:01:17,482 INFO    src.query_executor — Query done — validation.sql:policy_event_level2_issuer rows=65 seconds=2.3
2026-11-03 05:01:17,482 INFO    src.query_executor — Query start — validation.sql:level3_status_category
2026-11-03 05:01:20,094 INFO    src.query_executor — Query done — validation.sql:level3_status_category rows=11 seconds=2.6
2026-11-03 05:01:20,155 INFO    src.validator — Validation L1 Cancellation PY2025 daily_sum_equals_final_cumulative — MATCHED expected=536086 actual=536086 diff=0
2026-11-03 05:01:20,156 INFO    src.validator — Validation L1 Cancellation PY2025 control_total — MATCHED expected=536086 actual=536086 diff=0
2026-11-03 05:01:20,156 INFO    src.validator — Validation L1 Cancellation PY2025 independent_distinct_recount — MATCHED expected=536086 actual=536086 diff=0
2026-11-03 05:01:20,157 INFO    src.validator — Validation L2 Cancellation PY2025 issuer_distribution — VALIDATION PENDING expected=<NA> actual=536086 diff=<NA>
2026-11-03 05:01:20,157 INFO    src.validator — Validation L3 Cancellation PY2025 status_category_distribution — VALIDATION PENDING expected=<NA> actual=536086 diff=<NA>
2026-11-03 05:01:20,157 INFO    src.validator — Validation L1 Cancellation PY2026 daily_sum_equals_final_cumulative — MATCHED expected=370412 actual=370412 diff=0
2026-11-03 05:01:20,157 INFO    src.validator — Validation L1 Cancellation PY2026 control_total — MATCHED expected=370412 actual=370412 diff=0
2026-11-03 05:01:20,158 INFO    src.validator — Validation L1 Cancellation PY2026 independent_distinct_recount — MATCHED expected=370412 actual=370412 diff=0
2026-11-03 05:01:20,158 INFO    src.validator — Validation L2 Cancellation PY2026 issuer_distribution — VALIDATION PENDING expected=<NA> actual=370412 diff=<NA>
2026-11-03 05:01:20,158 INFO    src.validator — Validation L3 Cancellation PY2026 status_category_distribution — VALIDATION PENDING expected=<NA> actual=370412 diff=<NA>
2026-11-03 05:01:20,158 INFO    src.validator — Validation L1 Enrollment PY2025 daily_sum_equals_final_cumulative — MATCHED expected=633677 actual=633677 diff=0
2026-11-03 05:01:20,158 INFO    src.validator — Validation L1 Enrollment PY2025 control_total — MATCHED expected=633677 actual=633677 diff=0
2026-11-03 05:01:20,158 INFO    src.validator — Validation L1 Enrollment PY2025 independent_distinct_recount — MATCHED expected=633677 actual=633677 diff=0
2026-11-03 05:01:20,158 INFO    src.validator — Validation L2 Enrollment PY2025 issuer_distribution — VALIDATION PENDING expected=<NA> actual=658216 diff=<NA>
2026-11-03 05:01:20,158 INFO    src.validator — Validation L3 Enrollment PY2025 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:20,158 INFO    src.validator — Validation L1 Enrollment PY2026 daily_sum_equals_final_cumulative — MATCHED expected=1061718 actual=1061718 diff=0
2026-11-03 05:01:20,159 INFO    src.validator — Validation L1 Enrollment PY2026 control_total — MATCHED expected=1061718 actual=1061718 diff=0
2026-11-03 05:01:20,159 INFO    src.validator — Validation L1 Enrollment PY2026 independent_distinct_recount — MATCHED expected=1061718 actual=1061718 diff=0
2026-11-03 05:01:20,159 INFO    src.validator — Validation L2 Enrollment PY2026 issuer_distribution — VALIDATION PENDING expected=<NA> actual=1101020 diff=<NA>
2026-11-03 05:01:20,159 INFO    src.validator — Validation L3 Enrollment PY2026 status_category_distribution — VALIDATION PENDING expected=<NA> actual=<NA> diff=<NA>
2026-11-03 05:01:20,159 INFO    src.validator — Validation L1 Termination PY2025 daily_sum_equals_final_cumulative — MATCHED expected=548512 actual=548512 diff=0
2026-11-03 05:01:20,159 INFO    src.validator — Validation L1 Termination PY2025 control_total — MATCHED expected=548512 actual=548512 diff=0
2026-11-03 05:01:20,159 INFO    src.validator — Validation L1 Termination PY2025 independent_distinct_recount — MATCHED expected=548512 actual=548512 diff=0
2026-11-03 05:01:20,160 INFO    src.validator — Validation L2 Termination PY2025 issuer_distribution — VALIDATION PENDING expected=<NA> actual=548512 diff=<NA>
2026-11-03 05:01:20,160 INFO    src.validator — Validation L3 Termination PY2025 status_category_distribution — VALIDATION PENDING expected=<NA> actual=548512 diff=<NA>
2026-11-03 05:01:20,160 INFO    src.validator — Validation L1 Termination PY2026 daily_sum_equals_final_cumulative — MATCHED expected=18444 actual=18444 diff=0
2026-11-03 05:01:20,160 INFO    src.validator — Validation L1 Termination PY2026 control_total — MATCHED expected=18444 actual=18444 diff=0
2026-11-03 05:01:20,160 INFO    src.validator — Validation L1 Termination PY2026 independent_distinct_recount — MATCHED expected=18444 actual=18444 diff=0
2026-11-03 05:01:20,160 INFO    src.validator — Validation L2 Termination PY2026 issuer_distribution — VALIDATION PENDING expected=<NA> actual=18444 diff=<NA>
2026-11-03 05:01:20,160 INFO    src.validator — Validation L3 Termination PY2026 status_category_distribution — VALIDATION PENDING expected=<NA> actual=18444 diff=<NA>
2026-11-03 05:01:20,160 INFO    oe_trend_pipeline — Step — normalize and apply validation status
2026-11-03 05:01:20,175 WARNING oe_trend_pipeline — PY2027 — Source Pending: The backend enrollment source used by the PY2027 OE Executive Dashboard has not been identified. Not queried; no values produced.
2026-11-03 05:01:20,175 WARNING oe_trend_pipeline — EDE — Validation Pending: authoritative partner_permissions relationship not identified. No EDE values produced.
2026-11-03 05:01:20,175 INFO    oe_trend_pipeline — Step — build Plotly traces and dashboard
2026-11-03 05:01:20,640 INFO    src.dashboard_generator — Dashboard written — C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline-main\output\oe_trend_dashboard.html (5.0 MB)
2026-11-03 05:01:20,644 INFO    oe_trend_pipeline — Level 1 result — Cancellation|PY2025: MATCHED
2026-11-03 05:01:20,644 INFO    oe_trend_pipeline — Level 1 result — Cancellation|PY2026: MATCHED
2026-11-03 05:01:20,644 INFO    oe_trend_pipeline — Level 1 result — Enrollment|PY2025: MATCHED
2026-11-03 05:01:20,644 INFO    oe_trend_pipeline — Level 1 result — Enrollment|PY2026: MATCHED
2026-11-03 05:01:20,644 INFO    oe_trend_pipeline — Level 1 result — Termination|PY2025: MATCHED
2026-11-03 05:01:20,645 INFO    oe_trend_pipeline — Level 1 result — Termination|PY2026: MATCHED
2026-11-03 05:01:20,645 INFO    oe_trend_pipeline — Dashboard output — C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline-main\output\oe_trend_dashboard.html
2026-11-03 05:01:20,645 INFO    oe_trend_pipeline — Pipeline end — run_id=20261103_050052 exit_code=0
