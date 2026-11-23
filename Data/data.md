


                                                                                                               

tests/test_outbound_automation.py::ToFileRuleTests::test_from_files_rejected PASSED                                                                                        [  6%]
tests/test_outbound_automation.py::ToFileRuleTests::test_non_834_to_files_rejected PASSED                                                                                  [ 12%]
tests/test_outbound_automation.py::ToFileRuleTests::test_to_files_selected PASSED                                                                                          [ 18%]
tests/test_outbound_automation.py::ToFileRuleTests::test_unprefixed_rejected PASSED                                                                                        [ 25%]
tests/test_outbound_automation.py::RunIdTests::test_outbound_prefix PASSED                                                                                                 [ 31%]
tests/test_outbound_automation.py::WriterIsolationTests::test_allowlist_rejects_inbound PASSED                                                                             [ 37%]
tests/test_outbound_automation.py::WriterIsolationTests::test_columns_match_outbound_ddl PASSED                                                                            [ 43%]
tests/test_outbound_automation.py::WriterIsolationTests::test_columns_mirror_inbound_writer PASSED                                                                         [ 50%]
tests/test_outbound_automation.py::WriterIsolationTests::test_sql_targets_only_outbound PASSED                                                                             [ 56%]
tests/test_outbound_automation.py::ConfigIsolationTests::test_default_source_root_is_outbound_subfolder PASSED                                                             [ 62%]
tests/test_outbound_automation.py::ConfigIsolationTests::test_remote_path_must_differ_from_inbound PASSED                                                                  [ 68%]
tests/test_outbound_automation.py::ConfigIsolationTests::test_remote_path_outbound PASSED                                                                                  [ 75%]
tests/test_outbound_automation.py::ConfigIsolationTests::test_remote_path_required PASSED                                                                                  [ 81%]
tests/test_outbound_automation.py::ConfigIsolationTests::test_source_root_cannot_equal_inbound PASSED                                                                      [ 87%]
tests/test_outbound_automation.py::LocalIsolationTests::test_inbound_and_outbound_discovery_do_not_mix PASSED                                                              [ 93%]
tests/test_outbound_automation.py::ZeroRowTests::test_zero_row_to_file_is_failed_not_loaded PASSED                                                                         [100%]

============================================================================== 16 passed in 4.54s ===============================================================================
(.venv) PS C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl> .\.venv\Scripts\python.exe run_outbound_automation_load.py --dry-run --issuer 15105 --year 2026 --month 10

OUTBOUND AUTOMATION — DRY RUN
  load_run_id     : outbound_20261123_123429_60693e5f
  source root     : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\source_data\outbound
  year filter     : 2026
  issuer filter   : 15105
  month filter    : 10
  output dir      : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f
  Azure writes    : NONE
2026-11-23 07:34:29,547 | INFO     | ingestion.file_discovery | Discovered 28 source file(s)
2026-11-23 07:34:29,548 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20260930230937.xml size=668483
2026-11-23 07:34:29,548 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261001231008.xml size=282088
2026-11-23 07:34:29,548 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261002231112.xml size=269367
2026-11-23 07:34:29,548 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261003231058.xml size=30479
2026-11-23 07:34:29,548 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261004231130.xml size=45272
2026-11-23 07:34:29,548 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261005231018.xml size=438773
2026-11-23 07:34:29,549 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261006231038.xml size=260595
2026-11-23 07:34:29,549 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261007231855.xml size=298627
2026-11-23 07:34:29,549 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261008231046.xml size=210899
2026-11-23 07:34:29,549 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261009230853.xml size=102106
2026-11-23 07:34:29,549 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261010231054.xml size=31848
2026-11-23 07:34:29,549 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261011230901.xml size=43442
2026-11-23 07:34:29,549 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261012231100.xml size=416206
2026-11-23 07:34:29,550 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261013231040.xml size=374638
2026-11-23 07:34:29,550 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261014231013.xml size=896934
2026-11-23 07:34:29,550 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261015230912.xml size=480275
2026-11-23 07:34:29,550 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261016231053.xml size=225725
2026-11-23 07:34:29,550 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261018231337.xml size=19451
2026-11-23 07:34:29,550 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261020235103.xml size=455335
2026-11-23 07:34:29,550 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261022231659.xml size=1063631
2026-11-23 07:34:29,551 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261023233226.xml size=200868
2026-11-23 07:34:29,551 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261025001520.xml size=25726
2026-11-23 07:34:29,551 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261025233504.xml size=195285
2026-11-23 07:34:29,551 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261026233259.xml size=635659
2026-11-23 07:34:29,551 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261027234356.xml size=463786
2026-11-23 07:34:29,551 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261029001449.xml size=372628
2026-11-23 07:34:29,551 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261029231309.xml size=731258
2026-11-23 07:34:29,552 | INFO     | ingestion.file_discovery |   issuer=15105 year=2026 month=10 file=to_15105_GA_834_INDV_20261030231054.xml size=251132
2026-11-23 07:34:29,552 | INFO     | outbound_automation.discovery | Outbound discovery: 28 TO file(s) kept, 0 non-TO ignored (root=C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\source_data\outbound issuers=15105 year=2026 month=10)
2026-11-23 07:34:29,596 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20260930230937.xml
2026-11-23 07:34:29,598 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20260930230937.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,633 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261001231008.xml
2026-11-23 07:34:29,635 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261001231008.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,676 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261002231112.xml
2026-11-23 07:34:29,677 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261002231112.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,712 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261003231058.xml
2026-11-23 07:34:29,712 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261003231058.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,744 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261004231130.xml
2026-11-23 07:34:29,744 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261004231130.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,794 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261005231018.xml
2026-11-23 07:34:29,795 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261005231018.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,837 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261006231038.xml
2026-11-23 07:34:29,838 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261006231038.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,884 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261007231855.xml
2026-11-23 07:34:29,885 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261007231855.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,925 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261008231046.xml
2026-11-23 07:34:29,925 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261008231046.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,957 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261009230853.xml
2026-11-23 07:34:29,958 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261009230853.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:29,989 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261010231054.xml
2026-11-23 07:34:29,990 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261010231054.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,016 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261011230901.xml
2026-11-23 07:34:30,017 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261011230901.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,067 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261012231100.xml
2026-11-23 07:34:30,069 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261012231100.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,113 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261013231040.xml
2026-11-23 07:34:30,114 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261013231040.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,181 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261014231013.xml
2026-11-23 07:34:30,182 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261014231013.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,228 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261015230912.xml
2026-11-23 07:34:30,230 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261015230912.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,272 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261016231053.xml
2026-11-23 07:34:30,273 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261016231053.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,304 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261018231337.xml
2026-11-23 07:34:30,304 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261018231337.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,355 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261020235103.xml
2026-11-23 07:34:30,356 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261020235103.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,431 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261022231659.xml
2026-11-23 07:34:30,433 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261022231659.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,478 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261023233226.xml
2026-11-23 07:34:30,479 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261023233226.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,510 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261025001520.xml
2026-11-23 07:34:30,510 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261025001520.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,548 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261025233504.xml
2026-11-23 07:34:30,549 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261025233504.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,610 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261026233259.xml
2026-11-23 07:34:30,612 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261026233259.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,664 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261027234356.xml
2026-11-23 07:34:30,666 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261027234356.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,717 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261029001449.xml
2026-11-23 07:34:30,718 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261029001449.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,780 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261029231309.xml
2026-11-23 07:34:30,781 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261029231309.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).
2026-11-23 07:34:30,825 | INFO     | parsers.parser_834 | Parsed 0 record(s) from to_15105_GA_834_INDV_20261030231054.xml
2026-11-23 07:34:30,826 | WARNING  | outbound_automation.pipeline | to_15105_GA_834_INDV_20261030231054.xml: Parser834 returned 0 enrollee rows — outbound XML structure not confirmed compatible (expected root/enrollment/enrollee).

Run complete.
  Files discovered        : 28
  Files parsed            : 0
  Files loaded            : 0
  Files skipped (dup hash): 0
  Files failed            : 28
  Rows parsed             : 0
  Rows inserted           : 0
  Reports                 : C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f
2026-11-23 07:34:31,560 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:run_summary]: shape=(1, 27) columns=['pipeline', 'load_run_id', 'run_mode', 'source_mode', 'source_root', 'year_filter', 'issuer_filter', 'month_filter', 'parser_version', 'runner_version', 'git_commit', 'started_at', 'completed_at', 'elapsed_seconds', 'files_discovered', 'files_parsed', 'files_failed', 'files_skipped_duplicate', 'files_loaded', 'rows_parsed', 'rows_inserted', 'insert_sql_duration_ms', 'avg_rows_per_sec', 'total_warning_count', 'azure_writes', 'status', 'report_output_path'] dtypes={'pipeline': 'str', 'load_run_id': 'str', 'run_mode': 'str', 'source_mode': 'str', 'source_root': 'str', 'year_filter': 'str', 'issuer_filter': 'str', 'month_filter': 'str', 'parser_version': 'str', 'runner_version': 'str', 'git_commit': 'str', 'started_at': 'str', 'completed_at': 'str', 'elapsed_seconds': 'float64', 'files_discovered': 'int64', 'files_parsed': 'int64', 'files_failed': 'int64', 'files_skipped_duplicate': 'int64', 'files_loaded': 'int64', 'rows_parsed': 'int64', 'rows_inserted': 'int64', 'insert_sql_duration_ms': 'null', 'avg_rows_per_sec': 'null', 'total_warning_count': 'int64', 'azure_writes': 'str', 'status': 'str', 'report_output_path': 'str'}
2026-11-23 07:34:31,618 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\run_summary.xlsx (1 sheets)
2026-11-23 07:34:31,652 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\load_summary_by_issuer_year_month_status.xlsx (1 sheets)
2026-11-23 07:34:31,665 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\file_level_raw_counts.xlsx (1 sheets)
2026-11-23 07:34:31,679 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\filename_month_summary.xlsx (1 sheets)
2026-11-23 07:34:31,688 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:failed_files]: shape=(28, 8) columns=['source_file', 'source_file_path', 'issuer', 'folder_year', 'folder_month', 'file_hash', 'parse_duration_ms', 'error_message'] dtypes={'source_file': 'str', 'source_file_path': 'str', 'issuer': 'str', 'folder_year': 'str', 'folder_month': 'str', 'file_hash': 'str', 'parse_duration_ms': 'int64', 'error_message': 'str'}
2026-11-23 07:34:31,724 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\failed_files.xlsx (1 sheets)
2026-11-23 07:34:31,739 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\skipped_duplicate_files.xlsx (1 sheets)
2026-11-23 07:34:31,753 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:dry_run_manifest]: shape=(28, 15) columns=['source_file', 'source_file_path', 'issuer', 'folder_year', 'folder_month', 'filename_file_year', 'filename_file_month', 'file_hash', 'file_size_bytes', 'parse_status', 'row_count', 'parse_duration_ms', 'warning_count', 'warnings', 'error_message'] dtypes={'source_file': 'str', 'source_file_path': 'str', 'issuer': 'str', 'folder_year': 'int64', 'folder_month': 'int64', 'filename_file_year': 'int64', 'filename_file_month': 'int64', 'file_hash': 'str', 'file_size_bytes': 'int64', 'parse_status': 'str', 'row_count': 'int64', 'parse_duration_ms': 'int64', 'warning_count': 'int64', 'warnings': 'str', 'error_message': 'str'}
2026-11-23 07:34:31,787 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\dry_run_manifest.xlsx (1 sheets)
2026-11-23 07:34:31,804 | INFO     | azure_reconciliation.safe_export | safe_dataframe_for_export [excel:file_load_log]: shape=(28, 21) columns=['source_file', 'source_file_path', 'issuer', 'folder_year', 'folder_month', 'file_hash', 'parse_status', 'row_count', 'parse_duration_ms', 'load_duration_ms', 'insert_sql_duration_ms', 'commit_duration_ms', 'file_log_duration_ms', 'rows_per_sec', 'batch_size', 'batch_count', 'avg_batch_duration_ms', 'min_batch_duration_ms', 'max_batch_duration_ms', 'fast_executemany', 'error_message'] dtypes={'source_file': 'str', 'source_file_path': 'str', 'issuer': 'str', 'folder_year': 'int64', 'folder_month': 'int64', 'file_hash': 'str', 'parse_status': 'str', 'row_count': 'int64', 'parse_duration_ms': 'int64', 'load_duration_ms': 'null', 'insert_sql_duration_ms': 'null', 'commit_duration_ms': 'null', 'file_log_duration_ms': 'null', 'rows_per_sec': 'null', 'batch_size': 'null', 'batch_count': 'null', 'avg_batch_duration_ms': 'null', 'min_batch_duration_ms': 'null', 'max_batch_duration_ms': 'null', 'fast_executemany': 'null', 'error_message': 'str'}
2026-11-23 07:34:31,854 | INFO     | azure_reconciliation.safe_export | Wrote Excel: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\file_load_log.xlsx (1 sheets)
2026-11-23 07:34:31,855 | INFO     | outbound_automation.reports | Wrote outbound automation reports to C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f
    run_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\run_summary.xlsx
    load_summary: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\load_summary_by_issuer_year_month_status.xlsx
    file_level: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\file_level_raw_counts.xlsx
    filename_month: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\filename_month_summary.xlsx
    failed_files: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\failed_files.xlsx
    skipped_duplicate: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\skipped_duplicate_files.xlsx
    dry_run_manifest: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\dry_run_manifest.xlsx
    file_load_log: C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issuer_etl\outputs\outbound_automation\outbound_20261123_123429_60693e5f\file_load_log.xlsx
(.venv) PS C:\Users\SelmaKazanci\Downloads\project\gaaccess\834_issue
