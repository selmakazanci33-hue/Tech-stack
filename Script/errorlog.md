
Azure config presence (no secrets):
  SERVER present: True
  DATABASE present: True
  USERNAME present: True
  DRIVER present: True
  AZURE_SQL_SCHEMA present: True
  rcni_batch_size: 3000
  fast_executemany: True
  connection_timeout: 15s
Azure connection attempt 1/4...
Azure connection attempt 1/4 successful
RCNI AZURE PREFLIGHT OK
  present: dbo.rcni_run_log
  present: dbo.rcni_file_log
  present: dbo.rcni_raw
  present: dbo.rcni_data_quality_issue
  present: dbo.rcni_stage

RCNI AZURE FILE LOAD
2026-09-07 18:08:32,911 | ERROR    | rcni.raw_loader | RCNI file load failed: to_70893_INDV_MONTHLYDISCREPANCY_2025_20260107070956.OUT.good.gz
Traceback (most recent call last):
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\base.py", line 1969, in _exec_single_context
    self.dialect.do_execute(
    ~~~~~~~~~~~~~~~~~~~~~~~^
        cursor, str_statement, effective_parameters, context
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\default.py", line 952, in do_execute
    cursor.execute(statement, parameters)
    ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
pyodbc.OperationalError: ('08S01', '[08S01] [Microsoft][ODBC Driver 17 for SQL Server]TCP Provider: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.\r\n (10060) (SQLExecDirectW); [08S01] [Microsoft][ODBC Driver 17 for SQL Server]Communication link failure (10060)')

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\rcni\raw_loader.py", line 361, in process_local_file
    promoted = txn.promote_stage_to_raw(load_run_id, file_hash, loaded_at)
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\rcni\azure_raw_writer.py", line 219, in promote_stage_to_raw
    self.conn.execute(
    ~~~~~~~~~~~~~~~~~^
        PROMOTE_SQL,
        ^^^^^^^^^^^^
    ...<4 lines>...
        },
        ^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\base.py", line 1421, in execute
    return meth(
        self,
        distilled_parameters,
        execution_options or NO_OPTIONS,
    )
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\sql\elements.py", line 526, in _execute_on_connection
    return connection._execute_clauseelement(
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
        self, distilled_params, execution_options
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\base.py", line 1643, in _execute_clauseelement
    ret = self._execute_context(
        dialect,
    ...<8 lines>...
        cache_hit=cache_hit,
    )
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\base.py", line 1848, in _execute_context
    return self._exec_single_context(
           ~~~~~~~~~~~~~~~~~~~~~~~~~^
        dialect, context, statement, parameters
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\base.py", line 1988, in _exec_single_context
    self._handle_dbapi_exception(
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
        e, str_statement, effective_parameters, cursor, context
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\base.py", line 2365, in _handle_dbapi_exception
    raise sqlalchemy_exception.with_traceback(exc_info[2]) from e
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\base.py", line 1969, in _exec_single_context
    self.dialect.do_execute(
    ~~~~~~~~~~~~~~~~~~~~~~~^
        cursor, str_statement, effective_parameters, context
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\.venv\Lib\site-packages\sqlalchemy\engine\default.py", line 952, in do_execute
    cursor.execute(statement, parameters)
    ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
sqlalchemy.exc.OperationalError: (pyodbc.OperationalError) ('08S01', '[08S01] [Microsoft][ODBC Driver 17 for SQL Server]TCP Provider: A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.\r\n (10060) (SQLExecDirectW); [08S01] [Microsoft][ODBC Driver 17 for SQL Server]Communication link failure (10060)')
[SQL: INSERT INTO [dbo].[rcni_raw] (load_run_id, file_hash, issuer_id, coverage_year, processing_year, processing_month, processing_day, file_timestamp, source_file, source_path, row_number_in_file, quality_status, loaded_at, exchange_assigned_policy_id, plan_id, member_last_name, member_first_name, exchange_assigned_member_id, issuer_assigned_member_id, subscriber_last_name, subscriber_first_name, exchange_assigned_subscriber_id, issuer_assigned_subscriber_id, discrepancy_reason_code, discrepancy_reason_text, hix_value, issuer_value, date_of_discrepancy, recon_file_name, autofixed_by_hix, assignee, enrollment_status) SELECT load_run_id, file_hash, issuer_id, coverage_year, processing_year, processing_month, processing_day, file_timestamp, source_file, source_path, row_number_in_file, quality_status, ? AS loaded_at, exchange_assigned_policy_id, plan_id, member_last_name, member_first_name, exchange_assigned_member_id, issuer_assigned_member_id, subscriber_last_name, subscriber_first_name, exchange_assigned_subscriber_id, issuer_assigned_subscriber_id, discrepancy_reason_code, discrepancy_reason_text, hix_value, issuer_value, date_of_discrepancy, recon_file_name, autofixed_by_hix, assignee, enrollment_status FROM [dbo].[rcni_stage] WHERE load_run_id = ? AND file_hash = ?]
[parameters: (datetime.datetime(2026, 9, 7, 21, 51, 8, 441280), UUID('c0e9161f-9de9-40d1-a3b4-642d6630dbca'), '791be3df3f97305ddff98879b2d9778bafebc80b8e52baf402a8c45983e19924')]
