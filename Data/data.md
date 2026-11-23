



OUTBOUND AUTOMATION — DRY RUN
  load_run_id     : outbound_20261123_130119_30a4d134
  source root     : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\source_data\outbound
  year filter     : 2026
  issuer filter   : 15105
  month filter    : 10
  output dir      : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134
  JSON PII policy : unset_dry_run_in_memory_only
  Azure writes    : NONE
2026-11-23 08:01:19,454 | INFO     | ingestion.file_discovery | Discovered 28 source file(s)
2026-11-23 08:01:19,454 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20260930230937.xml size=668483
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261001231008.xml size=282088
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261002231112.xml size=269367
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261003231058.xml size=30479
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261004231130.xml size=45272
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261005231018.xml size=438773
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261006231038.xml size=260595
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261007231855.xml size=298627
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261008231046.xml size=210899
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261009230853.xml size=102106
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261010231054.xml size=31848
2026-11-23 08:01:19,455 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261011230901.xml size=43442
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261012231100.xml size=416206
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261013231040.xml size=374638
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261014231013.xml size=896934
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261015230912.xml size=480275
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261016231053.xml size=225725
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261018231337.xml size=19451
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261020235103.xml size=455335
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261022231659.xml size=1063631
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261023233226.xml size=200868
2026-11-23 08:01:19,456 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261025001520.xml size=25726
2026-11-23 08:01:19,457 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261025233504.xml size=195285
2026-11-23 08:01:19,457 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261026233259.xml size=635659
2026-11-23 08:01:19,457 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261027234356.xml size=463786
2026-11-23 08:01:19,457 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261029001449.xml size=372628
2026-11-23 08:01:19,457 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261029231309.xml size=731258
2026-11-23 08:01:19,457 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261030231054.xml size=251132
2026-11-23 08:01:19,458 | INFO     | outbound_automation.discovery | Outbound discovery: 28 TO file(s) kept, 0 rejected (root=C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\source_data\outbound issuers=15105 year=2026 month=10)

Run complete.
  source_xml_json policy  : unset_dry_run_in_memory_only
  Files discovered        : 28
  Files rejected (name)   : 0
  Files parsed            : 28
  Files loaded            : 0
  Files skipped (dup hash): 0
  Files failed            : 0
  Rows parsed             : 1102
  Premium rows parsed     : 9027
  Rows inserted           : 0
  Premium rows inserted   : 0
  Warnings (total)        : 0
  Unknown XML paths       : 0
  Reports                 : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134
2026-11-23 08:01:24,137 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:run_summary]: shape=(1, 31) columns=['pipeline', 'load_run_id', 'run_mode', 'source_mode', 'source_root', 'year_filter', 'issuer_filter', 'month_filter', 'parser_version', 'runner_version', 'git_commit', 'source_json_pii_policy', 'started_at', 'completed_at', 'elapsed_seconds', 'files_discovered', 'files_rejected_by_name', 'files_parsed', 'files_failed', 'files_skipped_duplicate', 'files_loaded', 'rows_parsed', 'premium_rows_parsed', 'rows_inserted', 'premium_rows_inserted', 'insert_sql_duration_ms', 'premium_insert_sql_duration_ms', 'total_warning_count', 'unknown_path_count', 'azure_writes', 'report_output_path'] dtypes={'pipeline': 'str', 'load_run_id': 'str', 'run_mode': 'str', 'source_mode': 'str', 'source_root': 'str', 'year_filter': 'str', 'issuer_filter': 'str', 'month_filter': 'str', 'parser_version': 'str', 'runner_version': 'str', 'git_commit': 'str', 'source_json_pii_policy': 'str', 'started_at': 'str', 'completed_at': 'str', 'elapsed_seconds': 'float64', 'files_discovered': 'int64', 'files_rejected_by_name': 'int64', 'files_parsed': 'int64', 'files_failed': 'int64', 'files_skipped_duplicate': 'int64', 'files_loaded': 'int64', 'rows_parsed': 'int64', 'premium_rows_parsed': 'int64', 'rows_inserted': 'int64', 'premium_rows_inserted': 'int64', 'insert_sql_duration_ms': 'null', 'premium_insert_sql_duration_ms': 'null', 'total_warning_count': 'int64', 'unknown_path_count': 'int64', 'azure_writes': 'str', 'report_output_path': 'str'}
2026-11-23 08:01:24,195 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\run_summary.xlsx (1 sheets)
2026-11-23 08:01:24,213 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:file_summary]: shape=(28, 19) columns=['issuer', 'folder_year', 'folder_month', 'source_file', 'file_hash', 'parse_status', 'prior_load_run_id', 'filename_file_year', 'filename_file_month', 'txn_create_datetime', 'job_execution_id', 'row_count', 'premium_row_count', 'unknown_path_count', 'row_warning_count', 'file_warnings', 'parse_duration_ms', 'load_duration_ms', 'error_message'] dtypes={'issuer': 'str', 'folder_year': 'str', 'folder_month': 'str', 'source_file': 'str', 'file_hash': 'str', 'parse_status': 'str', 'prior_load_run_id': 'str', 'filename_file_year': 'int64', 'filename_file_month': 'int64', 'txn_create_datetime': 'str', 'job_execution_id': 'str', 'row_count': 'int64', 'premium_row_count': 'int64', 'unknown_path_count': 'int64', 'row_warning_count': 'int64', 'file_warnings': 'str', 'parse_duration_ms': 'int64', 'load_duration_ms': 'null', 'error_message': 'str'}
2026-11-23 08:01:24,272 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\file_summary.xlsx (1 sheets)
2026-11-23 08:01:24,316 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\warning_summary.xlsx (1 sheets)
2026-11-23 08:01:24,336 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:transaction_summary]: shape=(14, 11) columns=['issuer', 'folder_year', 'folder_month', 'coverage_year', 'insurance_type_code', 'insurance_type', 'outbound_transaction_type', 'enrollee_event_type_code', 'additional_maint_reason_code', 'subscriber_flag', 'row_count'] dtypes={'issuer': 'str', 'folder_year': 'int64', 'folder_month': 'int64', 'coverage_year': 'int64', 'insurance_type_code': 'str', 'insurance_type': 'str', 'outbound_transaction_type': 'str', 'enrollee_event_type_code': 'str', 'additional_maint_reason_code': 'str', 'subscriber_flag': 'str', 'row_count': 'int64'}
2026-11-23 08:01:24,383 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\transaction_summary.xlsx (1 sheets)
2026-11-23 08:01:24,404 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\rejected_files.xlsx (1 sheets)
2026-11-23 08:01:24,418 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:paths]: shape=(173, 8) columns=['normalized_path', 'known', 'mapped', 'observed', 'files_seen', 'occurrence_count', 'first_file', 'value_shapes'] dtypes={'normalized_path': 'str', 'known': 'bool', 'mapped': 'bool', 'observed': 'bool', 'files_seen': 'int64', 'occurrence_count': 'int64', 'first_file': 'str', 'value_shapes': 'str'}
2026-11-23 08:01:24,433 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:codes]: shape=(5, 6) columns=['category', 'code', 'known', 'occurrence_count', 'files_seen', 'first_file'] dtypes={'category': 'str', 'code': 'str', 'known': 'bool', 'occurrence_count': 'int64', 'files_seen': 'int64', 'first_file': 'str'}
2026-11-23 08:01:24,525 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\schema_observations.xlsx (3 sheets)
2026-11-23 08:01:24,526 | INFO     | outbound_automation.reports | Wrote outbound automation reports to C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134
    run_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\run_summary.xlsx
    file_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\file_summary.xlsx
    warning_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\warning_summary.xlsx
    transaction_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\transaction_summary.xlsx
    rejected_files: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\rejected_files.xlsx
    schema_observations: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_130119_30a4d134\schema_observations.xlsx
(.venv) PS C:\Users\SelmaKaza
