


python run_outbound_automation_load.py --load --issuer 15105 --year 2026 --month 10

OUTBOUND AUTOMATION — LOAD
  load_run_id     : outbound_20261123_111915_fef9d530
  source root     : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\source_data\outbound
  year filter     : 2026
  issuer filter   : 15105
  month filter    : 10
  output dir      : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530
  Azure writes    : dbo.outbound_automation + run_log + file_log
  fast_executemany: True
  batch_size: 1000
Azure connection successful
2026-11-23 06:19:26,174 | INFO     | outbound_automation.pipeline | Found 0 previously loaded outbound file_hash value(s)
2026-11-23 06:19:26,290 | INFO     | ingestion.file_discovery | Discovered 28 source file(s)
2026-11-23 06:19:26,290 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20260930230937.xml size=668483
2026-11-23 06:19:26,290 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261001231008.xml size=282088
2026-11-23 06:19:26,291 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261002231112.xml size=269367
2026-11-23 06:19:26,291 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261003231058.xml size=30479
2026-11-23 06:19:26,291 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261004231130.xml size=45272
2026-11-23 06:19:26,291 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261005231018.xml size=438773
2026-11-23 06:19:26,291 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261006231038.xml size=260595
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261007231855.xml size=298627
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261008231046.xml size=210899
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261009230853.xml size=102106
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261010231054.xml size=31848
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261011230901.xml size=43442
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261012231100.xml size=416206
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261013231040.xml size=374638
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261014231013.xml size=896934
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261015230912.xml size=480275
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261016231053.xml size=225725
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261018231337.xml size=19451
2026-11-23 06:19:26,292 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261020235103.xml size=455335
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261022231659.xml size=1063631
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261023233226.xml size=200868
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261025001520.xml size=25726
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261025233504.xml size=195285
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261026233259.xml size=635659
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261027234356.xml size=463786
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261029001449.xml size=372628
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261029231309.xml size=731258
2026-11-23 06:19:26,293 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261030231054.xml size=251132
2026-11-23 06:19:26,293 | INFO     | outbound_automation.discovery | Outbound discovery: 28 TO file(s) kept, 0 non-TO ignored (root=C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\source_data\outbound issuers=15105 year=2026 month=10)
2026-11-23 06:19:26,312 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20260930230937.xml
2026-11-23 06:19:26,313 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20260930230937.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:26,455 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261001231008.xml
2026-11-23 06:19:26,456 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261001231008.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:26,594 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261002231112.xml
2026-11-23 06:19:26,595 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261002231112.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:26,727 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261003231058.xml
2026-11-23 06:19:26,728 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261003231058.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:26,855 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261004231130.xml
2026-11-23 06:19:26,856 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261004231130.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:26,992 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261005231018.xml
2026-11-23 06:19:26,993 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261005231018.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:27,123 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261006231038.xml
2026-11-23 06:19:27,124 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261006231038.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:27,258 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261007231855.xml
2026-11-23 06:19:27,259 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261007231855.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:27,396 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261008231046.xml
2026-11-23 06:19:27,397 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261008231046.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:27,530 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261009230853.xml
2026-11-23 06:19:27,530 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261009230853.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:27,652 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261010231054.xml
2026-11-23 06:19:27,652 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261010231054.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:27,775 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261011230901.xml
2026-11-23 06:19:27,776 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261011230901.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:27,904 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261012231100.xml
2026-11-23 06:19:27,906 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261012231100.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:28,039 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261013231040.xml
2026-11-23 06:19:28,040 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261013231040.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:28,189 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261014231013.xml
2026-11-23 06:19:28,191 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261014231013.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:28,337 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261015230912.xml
2026-11-23 06:19:28,338 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261015230912.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:28,475 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261016231053.xml
2026-11-23 06:19:28,476 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261016231053.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:28,597 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261018231337.xml
2026-11-23 06:19:28,598 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261018231337.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:28,748 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261020235103.xml
2026-11-23 06:19:28,749 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261020235103.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:28,898 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261022231659.xml
2026-11-23 06:19:28,900 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261022231659.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:29,031 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261023233226.xml
2026-11-23 06:19:29,032 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261023233226.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:29,164 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261025001520.xml
2026-11-23 06:19:29,164 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261025001520.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:29,318 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261025233504.xml
2026-11-23 06:19:29,319 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261025233504.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:29,460 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261026233259.xml
2026-11-23 06:19:29,461 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261026233259.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:29,603 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261027234356.xml
2026-11-23 06:19:29,604 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261027234356.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:29,739 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261029001449.xml
2026-11-23 06:19:29,741 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261029001449.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:29,886 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261029231309.xml
2026-11-23 06:19:29,887 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261029231309.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 06:19:30,016 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261030231054.xml
2026-11-23 06:19:30,017 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261030231054.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).

Run complete.
  Files discovered        : 28
  Files parsed            : 0
  Files loaded            : 0
  Files skipped (dup hash): 0
  Files failed            : 28
  Rows parsed             : 0
  Rows inserted           : 0
  Reports                 : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530
2026-11-23 06:19:30,808 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:run_summary]: shape=(1, 27) columns=['pipeline', 'load_run_id', 'run_mode', 'source_mode', 'source_root', 'year_filter', 'issuer_filter', 'month_filter', 'parser_version', 'runner_version', 'git_commit', 'started_at', 'completed_at', 'elapsed_seconds', 'files_discovered', 'files_parsed', 'files_failed', 'files_skipped_duplicate', 'files_loaded', 'rows_parsed', 'rows_inserted', 'insert_sql_duration_ms', 'avg_rows_per_sec', 'total_warning_count', 'azure_writes', 'status', 'report_output_path'] dtypes={'pipeline': 'str', 'load_run_id': 'str', 'run_mode': 'str', 'source_mode': 'str', 'source_root': 'str', 'year_filter': 'str', 'issuer_filter': 'str', 'month_filter': 'str', 'parser_version': 'str', 'runner_version': 'str', 'git_commit': 'str', 'started_at': 'str', 'completed_at': 'str', 'elapsed_seconds': 'float64', 'files_discovered': 'int64', 'files_parsed': 'int64', 'files_failed': 'int64', 'files_skipped_duplicate': 'int64', 'files_loaded': 'int64', 'rows_parsed': 'int64', 'rows_inserted': 'int64', 'insert_sql_duration_ms': 'int64', 'avg_rows_per_sec': 'null', 'total_warning_count': 'int64', 'azure_writes': 'str', 'status': 'str', 'report_output_path': 'str'}
2026-11-23 06:19:30,848 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\run_summary.xlsx (1 sheets)
2026-11-23 06:19:30,872 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\load_summary_by_issuer_year_month_status.xlsx (1 sheets)
2026-11-23 06:19:30,881 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\file_level_raw_counts.xlsx (1 sheets)
2026-11-23 06:19:30,889 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\filename_month_summary.xlsx (1 sheets)
2026-11-23 06:19:30,893 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:failed_files]: shape=(28, 8) columns=['source_file', 'source_file_path', 'issuer', 'folder_year', 'folder_month', 'file_hash', 'parse_duration_ms', 'error_message'] dtypes={'source_file': 'str', 'source_file_path': 'str', 'issuer': 'str', 'folder_year': 'str', 'folder_month': 'str', 'file_hash': 'str', 'parse_duration_ms': 'int64', 'error_message': 'str'}
2026-11-23 06:19:30,914 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\failed_files.xlsx (1 sheets)
2026-11-23 06:19:30,924 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\skipped_duplicate_files.xlsx (1 sheets)
2026-11-23 06:19:30,937 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:dry_run_manifest]: shape=(28, 15) columns=['source_file', 'source_file_path', 'issuer', 'folder_year', 'folder_month', 'filename_file_year', 'filename_file_month', 'file_hash', 'file_size_bytes', 'parse_status', 'row_count', 'parse_duration_ms', 'warning_count', 'warnings', 'error_message'] dtypes={'source_file': 'str', 'source_file_path': 'str', 'issuer': 'str', 'folder_year': 'int64', 'folder_month': 'int64', 'filename_file_year': 'int64', 'filename_file_month': 'int64', 'file_hash': 'str', 'file_size_bytes': 'int64', 'parse_status': 'str', 'row_count': 'int64', 'parse_duration_ms': 'int64', 'warning_count': 'int64', 'warnings': 'str', 'error_message': 'str'}
2026-11-23 06:19:30,968 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\dry_run_manifest.xlsx (1 sheets)
2026-11-23 06:19:30,977 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:file_load_log]: shape=(28, 21) columns=['source_file', 'source_file_path', 'issuer', 'folder_year', 'folder_month', 'file_hash', 'parse_status', 'row_count', 'parse_duration_ms', 'load_duration_ms', 'insert_sql_duration_ms', 'commit_duration_ms', 'file_log_duration_ms', 'rows_per_sec', 'batch_size', 'batch_count', 'avg_batch_duration_ms', 'min_batch_duration_ms', 'max_batch_duration_ms', 'fast_executemany', 'error_message'] dtypes={'source_file': 'str', 'source_file_path': 'str', 'issuer': 'str', 'folder_year': 'int64', 'folder_month': 'int64', 'file_hash': 'str', 'parse_status': 'str', 'row_count': 'int64', 'parse_duration_ms': 'int64', 'load_duration_ms': 'null', 'insert_sql_duration_ms': 'null', 'commit_duration_ms': 'null', 'file_log_duration_ms': 'null', 'rows_per_sec': 'null', 'batch_size': 'null', 'batch_count': 'null', 'avg_batch_duration_ms': 'null', 'min_batch_duration_ms': 'null', 'max_batch_duration_ms': 'null', 'fast_executemany': 'null', 'error_message': 'str'}
2026-11-23 06:19:31,007 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\file_load_log.xlsx (1 sheets)
2026-11-23 06:19:31,007 | INFO     | outbound_automation.reports | Wrote outbound automation reports to C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530
    run_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\run_summary.xlsx
    load_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\load_summary_by_issuer_year_month_status.xlsx
    file_level: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\file_level_raw_counts.xlsx
    filename_month: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\filename_month_summary.xlsx
    failed_files: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\failed_files.xlsx
    skipped_duplicate: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\skipped_duplicate_files.xlsx
    dry_run_manifest: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\dry_run_manifest.xlsx
    file_load_log: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_111915_fef9d530\file_load_log.xlsx
(.venv) PS C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl> 
