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
(Background on this error at: https://sqlalche.me/e/20/e3q8)
2026-09-07 18:08:33,106 | INFO     | rcni.raw_loader | RCNI to_70893_INDV_MONTHLYDISCREPANCY_2025_20260107070956.OUT.good.gz status=FAILED disposition=NEW loaded=0 flagged=0 batches=738 file=1045462ms stage=491721ms promote=0ms rows/sec=4497.9
  file=to_70893_INDV_MONTHLYDISCREPANCY_2025_20260107070956.OUT.good.gz status=FAILED disposition=NEW
  parsed=2211717 loaded=0 rejected=0 flagged=0
  batches=738 stage=491720.6ms promote=0.0ms file=1045462.5ms rows/sec=4497.9
    batch=1 rows=3000 duration=696.7ms rps=4306.3
    batch=2 rows=3000 duration=596.9ms rps=5025.9
    batch=3 rows=3000 duration=620.4ms rps=4835.8
    batch=4 rows=3000 duration=626.6ms rps=4787.6
    batch=5 rows=3000 duration=626.6ms rps=4787.4
    batch=6 rows=3000 duration=633.6ms rps=4735.2
    batch=7 rows=3000 duration=646.1ms rps=4642.9
    batch=8 rows=3000 duration=601.2ms rps=4989.7
    batch=9 rows=3000 duration=632.1ms rps=4746.1
    batch=10 rows=3000 duration=594.0ms rps=5050.9
    batch=11 rows=3000 duration=637.9ms rps=4703.3
    batch=12 rows=3000 duration=627.6ms rps=4780.1
    batch=13 rows=3000 duration=599.0ms rps=5008.2
    batch=14 rows=3000 duration=583.9ms rps=5137.8
    batch=15 rows=3000 duration=583.7ms rps=5139.9
    batch=16 rows=3000 duration=583.6ms rps=5140.3
    batch=17 rows=3000 duration=584.7ms rps=5130.4
    batch=18 rows=3000 duration=578.6ms rps=5184.5
    batch=19 rows=3000 duration=581.5ms rps=5159.4
    batch=20 rows=3000 duration=601.4ms rps=4988.1
    batch=21 rows=3000 duration=590.5ms rps=5080.3
    batch=22 rows=3000 duration=636.4ms rps=4714.3
    batch=23 rows=3000 duration=592.2ms rps=5065.8
    batch=24 rows=3000 duration=629.9ms rps=4762.9
    batch=25 rows=3000 duration=601.1ms rps=4991.0
    batch=26 rows=3000 duration=634.9ms rps=4725.0
    batch=27 rows=3000 duration=581.9ms rps=5155.3
    batch=28 rows=3000 duration=589.9ms rps=5085.5
    batch=29 rows=3000 duration=617.4ms rps=4859.1
    batch=30 rows=3000 duration=640.5ms rps=4684.0
    batch=31 rows=3000 duration=638.9ms rps=4695.8
    batch=32 rows=3000 duration=636.1ms rps=4716.1
    batch=33 rows=3000 duration=661.0ms rps=4538.4
    batch=34 rows=3000 duration=645.0ms rps=4651.5
    batch=35 rows=3000 duration=647.3ms rps=4634.8
    batch=36 rows=3000 duration=646.3ms rps=4641.4
    batch=37 rows=3000 duration=616.2ms rps=4868.4
    batch=38 rows=3000 duration=623.9ms rps=4808.4
    batch=39 rows=3000 duration=648.6ms rps=4625.6
    batch=40 rows=3000 duration=673.6ms rps=4454.0
    batch=41 rows=3000 duration=669.5ms rps=4481.2
    batch=42 rows=3000 duration=662.5ms rps=4528.1
    batch=43 rows=3000 duration=643.0ms rps=4665.7
    batch=44 rows=3000 duration=650.8ms rps=4609.4
    batch=45 rows=3000 duration=619.7ms rps=4841.1
    batch=46 rows=3000 duration=613.7ms rps=4888.2
    batch=47 rows=3000 duration=623.3ms rps=4812.8
    batch=48 rows=3000 duration=601.5ms rps=4987.5
    batch=49 rows=3000 duration=583.4ms rps=5142.6
    batch=50 rows=3000 duration=613.4ms rps=4890.4
    batch=51 rows=3000 duration=616.6ms rps=4865.5
    batch=52 rows=3000 duration=642.6ms rps=4668.6
    batch=53 rows=3000 duration=638.5ms rps=4698.3
    batch=54 rows=3000 duration=649.6ms rps=4618.0
    batch=55 rows=3000 duration=582.6ms rps=5149.6
    batch=56 rows=3000 duration=593.5ms rps=5054.6
    batch=57 rows=3000 duration=630.6ms rps=4757.3
    batch=58 rows=3000 duration=614.9ms rps=4878.9
    batch=59 rows=3000 duration=638.1ms rps=4701.4
    batch=60 rows=3000 duration=608.7ms rps=4928.8
    batch=61 rows=3000 duration=659.4ms rps=4549.7
    batch=62 rows=3000 duration=648.8ms rps=4623.6
    batch=63 rows=3000 duration=691.6ms rps=4337.5
    batch=64 rows=3000 duration=642.9ms rps=4666.5
    batch=65 rows=3000 duration=623.0ms rps=4815.4
    batch=66 rows=3000 duration=611.8ms rps=4903.2
    batch=67 rows=3000 duration=666.5ms rps=4501.2
    batch=68 rows=3000 duration=641.2ms rps=4678.9
    batch=69 rows=3000 duration=614.6ms rps=4881.4
    batch=70 rows=3000 duration=613.1ms rps=4893.4
    batch=71 rows=3000 duration=621.7ms rps=4825.4
    batch=72 rows=3000 duration=576.4ms rps=5205.1
    batch=73 rows=3000 duration=612.1ms rps=4901.4
    batch=74 rows=3000 duration=734.0ms rps=4087.0
    batch=75 rows=3000 duration=655.7ms rps=4575.2
    batch=76 rows=3000 duration=612.6ms rps=4897.5
    batch=77 rows=3000 duration=616.9ms rps=4863.2
    batch=78 rows=3000 duration=646.9ms rps=4637.5
    batch=79 rows=3000 duration=586.2ms rps=5117.4
    batch=80 rows=3000 duration=613.5ms rps=4889.6
    batch=81 rows=3000 duration=608.3ms rps=4931.6
    batch=82 rows=3000 duration=654.4ms rps=4584.1
    batch=83 rows=3000 duration=603.3ms rps=4972.6
    batch=84 rows=3000 duration=642.9ms rps=4666.3
    batch=85 rows=3000 duration=865.8ms rps=3464.9
    batch=86 rows=3000 duration=611.0ms rps=4909.7
    batch=87 rows=3000 duration=702.0ms rps=4273.5
    batch=88 rows=3000 duration=616.2ms rps=4868.2
    batch=89 rows=3000 duration=634.0ms rps=4731.9
    batch=90 rows=3000 duration=651.1ms rps=4607.9
    batch=91 rows=3000 duration=626.6ms rps=4788.1
    batch=92 rows=3000 duration=661.1ms rps=4537.7
    batch=93 rows=3000 duration=646.0ms rps=4644.3
    batch=94 rows=3000 duration=647.0ms rps=4637.1
    batch=95 rows=3000 duration=648.9ms rps=4622.9
    batch=96 rows=3000 duration=690.6ms rps=4344.0
    batch=97 rows=3000 duration=655.7ms rps=4575.6
    batch=98 rows=3000 duration=619.9ms rps=4839.9
    batch=99 rows=3000 duration=669.4ms rps=4481.8
    batch=100 rows=3000 duration=636.3ms rps=4715.0
    batch=101 rows=3000 duration=659.5ms rps=4549.2
    batch=102 rows=3000 duration=726.7ms rps=4128.2
    batch=103 rows=3000 duration=637.9ms rps=4703.1
    batch=104 rows=3000 duration=728.4ms rps=4118.9
    batch=105 rows=3000 duration=652.6ms rps=4596.8
    batch=106 rows=3000 duration=612.5ms rps=4897.9
    batch=107 rows=3000 duration=645.6ms rps=4646.9
    batch=108 rows=3000 duration=627.7ms rps=4779.5
    batch=109 rows=3000 duration=631.2ms rps=4752.6
    batch=110 rows=3000 duration=613.4ms rps=4890.9
    batch=111 rows=3000 duration=659.7ms rps=4547.7
    batch=112 rows=3000 duration=716.1ms rps=4189.1
    batch=113 rows=3000 duration=682.6ms rps=4395.1
    batch=114 rows=3000 duration=602.6ms rps=4978.6
    batch=115 rows=3000 duration=722.9ms rps=4149.7
    batch=116 rows=3000 duration=627.3ms rps=4782.3
    batch=117 rows=3000 duration=644.4ms rps=4655.1
    batch=118 rows=3000 duration=628.0ms rps=4777.3
    batch=119 rows=3000 duration=631.2ms rps=4752.6
    batch=120 rows=3000 duration=685.5ms rps=4376.4
    batch=121 rows=3000 duration=660.8ms rps=4540.0
    batch=122 rows=3000 duration=633.9ms rps=4732.9
    batch=123 rows=3000 duration=679.8ms rps=4413.3
    batch=124 rows=3000 duration=641.6ms rps=4676.0
    batch=125 rows=3000 duration=650.6ms rps=4611.1
    batch=126 rows=3000 duration=598.9ms rps=5009.4
    batch=127 rows=3000 duration=703.3ms rps=4265.4
    batch=128 rows=3000 duration=624.9ms rps=4801.0
    batch=129 rows=3000 duration=679.3ms rps=4416.4
    batch=130 rows=3000 duration=615.3ms rps=4875.7
    batch=131 rows=3000 duration=634.7ms rps=4726.5
    batch=132 rows=3000 duration=681.8ms rps=4400.4
    batch=133 rows=3000 duration=730.0ms rps=4109.8
    batch=134 rows=3000 duration=627.2ms rps=4783.5
    batch=135 rows=3000 duration=715.6ms rps=4192.6
    batch=136 rows=3000 duration=691.4ms rps=4339.0
    batch=137 rows=3000 duration=688.0ms rps=4360.7
    batch=138 rows=3000 duration=680.8ms rps=4406.8
    batch=139 rows=3000 duration=695.4ms rps=4314.2
    batch=140 rows=3000 duration=662.2ms rps=4530.7
    batch=141 rows=3000 duration=685.9ms rps=4373.7
    batch=142 rows=3000 duration=681.9ms rps=4399.7
    batch=143 rows=3000 duration=684.2ms rps=4384.4
    batch=144 rows=3000 duration=630.4ms rps=4759.2
    batch=145 rows=3000 duration=708.9ms rps=4231.7
    batch=146 rows=3000 duration=704.8ms rps=4256.4
    batch=147 rows=3000 duration=629.1ms rps=4769.1
    batch=148 rows=3000 duration=666.2ms rps=4502.8
    batch=149 rows=3000 duration=601.1ms rps=4990.7
    batch=150 rows=3000 duration=623.2ms rps=4813.7
    batch=151 rows=3000 duration=607.3ms rps=4939.8
    batch=152 rows=3000 duration=593.4ms rps=5055.5
    batch=153 rows=3000 duration=608.9ms rps=4927.1
    batch=154 rows=3000 duration=595.7ms rps=5036.2
    batch=155 rows=3000 duration=609.0ms rps=4925.8
    batch=156 rows=3000 duration=618.5ms rps=4850.3
    batch=157 rows=3000 duration=609.6ms rps=4921.6
    batch=158 rows=3000 duration=610.6ms rps=4913.1
    batch=159 rows=3000 duration=659.0ms rps=4552.4
    batch=160 rows=3000 duration=593.7ms rps=5053.4
    batch=161 rows=3000 duration=628.0ms rps=4777.4
    batch=162 rows=3000 duration=697.5ms rps=4301.2
    batch=163 rows=3000 duration=758.1ms rps=3957.4
    batch=164 rows=3000 duration=630.0ms rps=4761.8
    batch=165 rows=3000 duration=641.9ms rps=4673.9
    batch=166 rows=3000 duration=614.1ms rps=4885.0
    batch=167 rows=3000 duration=659.0ms rps=4552.0
    batch=168 rows=3000 duration=631.2ms rps=4753.0
    batch=169 rows=3000 duration=611.6ms rps=4905.5
    batch=170 rows=3000 duration=623.1ms rps=4814.9
    batch=171 rows=3000 duration=646.6ms rps=4639.8
    batch=172 rows=3000 duration=606.5ms rps=4946.6
    batch=173 rows=3000 duration=683.7ms rps=4388.0
    batch=174 rows=3000 duration=631.5ms rps=4750.5
    batch=175 rows=3000 duration=631.4ms rps=4751.0
    batch=176 rows=3000 duration=641.7ms rps=4674.9
    batch=177 rows=3000 duration=1083.8ms rps=2768.1
    batch=178 rows=3000 duration=1319.9ms rps=2272.8
    batch=179 rows=3000 duration=1305.8ms rps=2297.4
    batch=180 rows=3000 duration=1266.0ms rps=2369.7
    batch=181 rows=3000 duration=703.9ms rps=4262.3
    batch=182 rows=3000 duration=637.2ms rps=4708.4
    batch=183 rows=3000 duration=635.5ms rps=4720.7
    batch=184 rows=3000 duration=623.3ms rps=4812.7
    batch=185 rows=3000 duration=652.5ms rps=4597.4
    batch=186 rows=3000 duration=665.0ms rps=4511.0
    batch=187 rows=3000 duration=648.2ms rps=4627.9
    batch=188 rows=3000 duration=636.7ms rps=4711.7
    batch=189 rows=3000 duration=672.8ms rps=4459.2
    batch=190 rows=3000 duration=608.6ms rps=4929.3
    batch=191 rows=3000 duration=627.3ms rps=4782.3
    batch=192 rows=3000 duration=608.0ms rps=4933.9
    batch=193 rows=3000 duration=630.2ms rps=4760.5
    batch=194 rows=3000 duration=680.8ms rps=4406.6
    batch=195 rows=3000 duration=650.5ms rps=4611.9
    batch=196 rows=3000 duration=606.3ms rps=4947.7
    batch=197 rows=3000 duration=632.0ms rps=4747.0
    batch=198 rows=3000 duration=644.5ms rps=4654.8
    batch=199 rows=3000 duration=626.7ms rps=4786.7
    batch=200 rows=3000 duration=652.3ms rps=4599.1
    batch=201 rows=3000 duration=620.8ms rps=4832.1
    batch=202 rows=3000 duration=609.6ms rps=4921.1
    batch=203 rows=3000 duration=628.9ms rps=4769.9
    batch=204 rows=3000 duration=628.2ms rps=4775.8
    batch=205 rows=3000 duration=611.3ms rps=4907.8
    batch=206 rows=3000 duration=609.6ms rps=4921.5
    batch=207 rows=3000 duration=610.7ms rps=4912.3
    batch=208 rows=3000 duration=613.0ms rps=4894.0
    batch=209 rows=3000 duration=621.9ms rps=4823.9
    batch=210 rows=3000 duration=616.6ms rps=4865.3
    batch=211 rows=3000 duration=616.2ms rps=4868.8
    batch=212 rows=3000 duration=587.9ms rps=5102.9
    batch=213 rows=3000 duration=626.9ms rps=4785.8
    batch=214 rows=3000 duration=621.5ms rps=4827.4
    batch=215 rows=3000 duration=614.9ms rps=4879.0
    batch=216 rows=3000 duration=604.8ms rps=4960.2
    batch=217 rows=3000 duration=630.4ms rps=4759.0
    batch=218 rows=3000 duration=627.1ms rps=4783.6
    batch=219 rows=3000 duration=626.5ms rps=4788.2
    batch=220 rows=3000 duration=641.3ms rps=4678.3
    batch=221 rows=3000 duration=623.7ms rps=4810.0
    batch=222 rows=3000 duration=604.2ms rps=4965.1
    batch=223 rows=3000 duration=652.6ms rps=4596.7
    batch=224 rows=3000 duration=629.3ms rps=4767.1
    batch=225 rows=3000 duration=778.3ms rps=3854.4
    batch=226 rows=3000 duration=691.6ms rps=4337.6
    batch=227 rows=3000 duration=654.4ms rps=4584.6
    batch=228 rows=3000 duration=596.2ms rps=5031.7
    batch=229 rows=3000 duration=630.5ms rps=4758.5
    batch=230 rows=3000 duration=628.4ms rps=4774.1
    batch=231 rows=3000 duration=690.6ms rps=4343.8
    batch=232 rows=3000 duration=627.0ms rps=4784.8
    batch=233 rows=3000 duration=631.4ms rps=4751.7
    batch=234 rows=3000 duration=650.3ms rps=4613.4
    batch=235 rows=3000 duration=651.8ms rps=4602.4
    batch=236 rows=3000 duration=728.9ms rps=4115.8
    batch=237 rows=3000 duration=653.9ms rps=4587.7
    batch=238 rows=3000 duration=691.1ms rps=4340.8
    batch=239 rows=3000 duration=672.3ms rps=4462.5
    batch=240 rows=3000 duration=664.7ms rps=4513.2
    batch=241 rows=3000 duration=682.2ms rps=4397.3
    batch=242 rows=3000 duration=616.6ms rps=4865.2
    batch=243 rows=3000 duration=630.9ms rps=4755.0
    batch=244 rows=3000 duration=610.1ms rps=4917.1
    batch=245 rows=3000 duration=635.5ms rps=4720.4
    batch=246 rows=3000 duration=619.9ms rps=4839.5
    batch=247 rows=3000 duration=659.5ms rps=4548.8
    batch=248 rows=3000 duration=631.7ms rps=4748.9
    batch=249 rows=3000 duration=659.9ms rps=4546.3
    batch=250 rows=3000 duration=623.1ms rps=4814.9
    batch=251 rows=3000 duration=622.4ms rps=4820.3
    batch=252 rows=3000 duration=633.3ms rps=4737.3
    batch=253 rows=3000 duration=629.6ms rps=4764.9
    batch=254 rows=3000 duration=625.5ms rps=4796.3
    batch=255 rows=3000 duration=652.0ms rps=4601.1
    batch=256 rows=3000 duration=629.7ms rps=4764.0
    batch=257 rows=3000 duration=651.6ms rps=4604.3
    batch=258 rows=3000 duration=630.2ms rps=4760.2
    batch=259 rows=3000 duration=630.6ms rps=4757.1
    batch=260 rows=3000 duration=622.7ms rps=4818.1
    batch=261 rows=3000 duration=668.9ms rps=4484.6
    batch=262 rows=3000 duration=624.9ms rps=4800.7
    batch=263 rows=3000 duration=635.3ms rps=4722.2
    batch=264 rows=3000 duration=654.4ms rps=4584.2
    batch=265 rows=3000 duration=652.7ms rps=4596.3
    batch=266 rows=3000 duration=659.3ms rps=4550.5
    batch=267 rows=3000 duration=657.3ms rps=4564.1
    batch=268 rows=3000 duration=626.5ms rps=4788.5
    batch=269 rows=3000 duration=708.1ms rps=4236.5
    batch=270 rows=3000 duration=698.7ms rps=4293.7
    batch=271 rows=3000 duration=683.4ms rps=4390.0
    batch=272 rows=3000 duration=639.7ms rps=4690.0
    batch=273 rows=3000 duration=634.6ms rps=4727.2
    batch=274 rows=3000 duration=612.6ms rps=4897.0
    batch=275 rows=3000 duration=700.8ms rps=4280.7
    batch=276 rows=3000 duration=613.1ms rps=4893.0
    batch=277 rows=3000 duration=715.1ms rps=4195.1
    batch=278 rows=3000 duration=652.5ms rps=4597.5
    batch=279 rows=3000 duration=661.6ms rps=4534.5
    batch=280 rows=3000 duration=649.2ms rps=4620.7
    batch=281 rows=3000 duration=621.0ms rps=4831.2
    batch=282 rows=3000 duration=610.4ms rps=4914.8
    batch=283 rows=3000 duration=626.3ms rps=4790.0
    batch=284 rows=3000 duration=635.3ms rps=4722.2
    batch=285 rows=3000 duration=645.9ms rps=4645.0
    batch=286 rows=3000 duration=619.4ms rps=4843.6
    batch=287 rows=3000 duration=669.9ms rps=4478.5
    batch=288 rows=3000 duration=645.5ms rps=4647.7
    batch=289 rows=3000 duration=619.3ms rps=4844.1
    batch=290 rows=3000 duration=593.3ms rps=5056.1
    batch=291 rows=3000 duration=659.1ms rps=4551.3
    batch=292 rows=3000 duration=658.3ms rps=4557.1
    batch=293 rows=3000 duration=641.4ms rps=4677.0
    batch=294 rows=3000 duration=611.6ms rps=4905.2
    batch=295 rows=3000 duration=628.8ms rps=4770.6
    batch=296 rows=3000 duration=678.3ms rps=4422.9
    batch=297 rows=3000 duration=671.2ms rps=4469.9
    batch=298 rows=3000 duration=621.2ms rps=4829.6
    batch=299 rows=3000 duration=648.5ms rps=4626.3
    batch=300 rows=3000 duration=611.6ms rps=4905.3
    batch=301 rows=3000 duration=604.0ms rps=4967.3
    batch=302 rows=3000 duration=620.8ms rps=4832.6
    batch=303 rows=3000 duration=683.1ms rps=4391.9
    batch=304 rows=3000 duration=630.0ms rps=4762.2
    batch=305 rows=3000 duration=629.4ms rps=4766.8
    batch=306 rows=3000 duration=634.0ms rps=4731.8
    batch=307 rows=3000 duration=656.6ms rps=4568.8
    batch=308 rows=3000 duration=718.1ms rps=4177.8
    batch=309 rows=3000 duration=750.6ms rps=3996.8
    batch=310 rows=3000 duration=702.8ms rps=4268.7
    batch=311 rows=3000 duration=693.9ms rps=4323.3
    batch=312 rows=3000 duration=691.4ms rps=4338.8
    batch=313 rows=3000 duration=681.8ms rps=4400.3
    batch=314 rows=3000 duration=615.5ms rps=4874.0
    batch=315 rows=3000 duration=704.4ms rps=4258.9
    batch=316 rows=3000 duration=626.0ms rps=4792.5
    batch=317 rows=3000 duration=602.0ms rps=4983.8
    batch=318 rows=3000 duration=641.0ms rps=4680.5
    batch=319 rows=3000 duration=635.5ms rps=4720.6
    batch=320 rows=3000 duration=610.2ms rps=4916.2
    batch=321 rows=3000 duration=629.0ms rps=4769.7
    batch=322 rows=3000 duration=597.9ms rps=5017.8
    batch=323 rows=3000 duration=635.4ms rps=4721.6
    batch=324 rows=3000 duration=665.6ms rps=4507.0
    batch=325 rows=3000 duration=647.7ms rps=4631.6
    batch=326 rows=3000 duration=635.0ms rps=4724.3
    batch=327 rows=3000 duration=672.3ms rps=4462.4
    batch=328 rows=3000 duration=654.8ms rps=4581.4
    batch=329 rows=3000 duration=621.0ms rps=4830.6
    batch=330 rows=3000 duration=713.2ms rps=4206.5
    batch=331 rows=3000 duration=672.1ms rps=4463.9
    batch=332 rows=3000 duration=662.2ms rps=4530.3
    batch=333 rows=3000 duration=675.5ms rps=4440.9
    batch=334 rows=3000 duration=672.6ms rps=4460.2
    batch=335 rows=3000 duration=623.4ms rps=4812.5
    batch=336 rows=3000 duration=675.1ms rps=4443.9
    batch=337 rows=3000 duration=638.2ms rps=4700.9
    batch=338 rows=3000 duration=635.4ms rps=4721.3
    batch=339 rows=3000 duration=651.7ms rps=4603.2
    batch=340 rows=3000 duration=709.7ms rps=4226.9
    batch=341 rows=3000 duration=626.7ms rps=4786.7
    batch=342 rows=3000 duration=648.6ms rps=4625.1
    batch=343 rows=3000 duration=666.2ms rps=4502.9
    batch=344 rows=3000 duration=662.2ms rps=4530.6
    batch=345 rows=3000 duration=646.4ms rps=4641.2
    batch=346 rows=3000 duration=654.0ms rps=4587.1
    batch=347 rows=3000 duration=674.6ms rps=4447.2
    batch=348 rows=3000 duration=641.5ms rps=4676.4
    batch=349 rows=3000 duration=653.4ms rps=4591.7
    batch=350 rows=3000 duration=673.2ms rps=4456.3
    batch=351 rows=3000 duration=640.9ms rps=4680.6
    batch=352 rows=3000 duration=649.3ms rps=4620.4
    batch=353 rows=3000 duration=703.7ms rps=4263.0
    batch=354 rows=3000 duration=657.7ms rps=4561.5
    batch=355 rows=3000 duration=831.3ms rps=3608.8
    batch=356 rows=3000 duration=642.7ms rps=4667.7
    batch=357 rows=3000 duration=674.4ms rps=4448.2
    batch=358 rows=3000 duration=687.3ms rps=4364.9
    batch=359 rows=3000 duration=626.1ms rps=4791.8
    batch=360 rows=3000 duration=650.4ms rps=4612.8
    batch=361 rows=3000 duration=670.5ms rps=4474.2
    batch=362 rows=3000 duration=613.0ms rps=4894.2
    batch=363 rows=3000 duration=683.7ms rps=4387.7
    batch=364 rows=3000 duration=617.3ms rps=4860.1
    batch=365 rows=3000 duration=657.8ms rps=4560.9
    batch=366 rows=3000 duration=625.7ms rps=4794.9
    batch=367 rows=3000 duration=672.5ms rps=4461.0
    batch=368 rows=3000 duration=639.5ms rps=4691.4
    batch=369 rows=3000 duration=643.5ms rps=4661.7
    batch=370 rows=3000 duration=629.2ms rps=4767.8
    batch=371 rows=3000 duration=670.9ms rps=4471.8
    batch=372 rows=3000 duration=624.9ms rps=4800.8
    batch=373 rows=3000 duration=648.1ms rps=4629.0
    batch=374 rows=3000 duration=605.4ms rps=4955.8
    batch=375 rows=3000 duration=649.6ms rps=4618.3
    batch=376 rows=3000 duration=611.8ms rps=4903.9
    batch=377 rows=3000 duration=631.3ms rps=4752.2
    batch=378 rows=3000 duration=640.5ms rps=4683.9
    batch=379 rows=3000 duration=650.9ms rps=4609.0
    batch=380 rows=3000 duration=604.7ms rps=4960.8
    batch=381 rows=3000 duration=660.8ms rps=4539.7
    batch=382 rows=3000 duration=1040.5ms rps=2883.2
    batch=383 rows=3000 duration=1022.6ms rps=2933.7
    batch=384 rows=3000 duration=1029.7ms rps=2913.4
    batch=385 rows=3000 duration=886.5ms rps=3384.2
    batch=386 rows=3000 duration=895.8ms rps=3348.8
    batch=387 rows=3000 duration=1071.4ms rps=2800.2
    batch=388 rows=3000 duration=1002.7ms rps=2992.0
    batch=389 rows=3000 duration=881.0ms rps=3405.2
    batch=390 rows=3000 duration=1002.3ms rps=2993.3
    batch=391 rows=3000 duration=1041.9ms rps=2879.2
    batch=392 rows=3000 duration=945.2ms rps=3173.9
    batch=393 rows=3000 duration=1121.1ms rps=2676.0
    batch=394 rows=3000 duration=1012.0ms rps=2964.5
    batch=395 rows=3000 duration=860.5ms rps=3486.2
    batch=396 rows=3000 duration=741.6ms rps=4045.5
    batch=397 rows=3000 duration=681.5ms rps=4401.9
    batch=398 rows=3000 duration=624.9ms rps=4800.8
    batch=399 rows=3000 duration=645.1ms rps=4650.7
    batch=400 rows=3000 duration=650.4ms rps=4612.3
    batch=401 rows=3000 duration=619.1ms rps=4846.1
    batch=402 rows=3000 duration=650.6ms rps=4611.3
    batch=403 rows=3000 duration=697.0ms rps=4303.9
    batch=404 rows=3000 duration=697.3ms rps=4302.2
    batch=405 rows=3000 duration=663.1ms rps=4524.4
    batch=406 rows=3000 duration=638.7ms rps=4697.0
    batch=407 rows=3000 duration=727.3ms rps=4124.8
    batch=408 rows=3000 duration=637.9ms rps=4703.1
    batch=409 rows=3000 duration=626.2ms rps=4790.9
    batch=410 rows=3000 duration=672.6ms rps=4460.4
    batch=411 rows=3000 duration=619.0ms rps=4846.6
    batch=412 rows=3000 duration=630.7ms rps=4756.5
    batch=413 rows=3000 duration=628.8ms rps=4770.9
    batch=414 rows=3000 duration=665.5ms rps=4508.1
    batch=415 rows=3000 duration=628.6ms rps=4772.8
    batch=416 rows=3000 duration=637.6ms rps=4705.0
    batch=417 rows=3000 duration=633.5ms rps=4735.6
    batch=418 rows=3000 duration=648.3ms rps=4627.8
    batch=419 rows=3000 duration=712.8ms rps=4208.7
    batch=420 rows=3000 duration=707.6ms rps=4239.7
    batch=421 rows=3000 duration=710.4ms rps=4223.3
    batch=422 rows=3000 duration=704.2ms rps=4260.1
    batch=423 rows=3000 duration=753.4ms rps=3981.9
    batch=424 rows=3000 duration=671.5ms rps=4467.4
    batch=425 rows=3000 duration=679.6ms rps=4414.4
    batch=426 rows=3000 duration=670.9ms rps=4471.3
    batch=427 rows=3000 duration=693.5ms rps=4326.2
    batch=428 rows=3000 duration=673.5ms rps=4454.2
    batch=429 rows=3000 duration=677.8ms rps=4426.4
    batch=430 rows=3000 duration=636.5ms rps=4713.4
    batch=431 rows=3000 duration=663.7ms rps=4520.1
    batch=432 rows=3000 duration=641.2ms rps=4678.7
    batch=433 rows=3000 duration=649.7ms rps=4617.9
    batch=434 rows=3000 duration=621.9ms rps=4823.8
    batch=435 rows=3000 duration=700.7ms rps=4281.6
    batch=436 rows=3000 duration=836.8ms rps=3585.1
    batch=437 rows=3000 duration=625.6ms rps=4795.7
    batch=438 rows=3000 duration=728.7ms rps=4117.2
    batch=439 rows=3000 duration=679.5ms rps=4415.2
    batch=440 rows=3000 duration=646.1ms rps=4643.1
    batch=441 rows=3000 duration=600.3ms rps=4997.5
    batch=442 rows=3000 duration=665.5ms rps=4507.9
    batch=443 rows=3000 duration=635.4ms rps=4721.6
    batch=444 rows=3000 duration=744.7ms rps=4028.6
    batch=445 rows=3000 duration=715.8ms rps=4190.9
    batch=446 rows=3000 duration=719.1ms rps=4172.1
    batch=447 rows=3000 duration=636.8ms rps=4711.0
    batch=448 rows=3000 duration=728.7ms rps=4116.9
    batch=449 rows=3000 duration=611.1ms rps=4909.3
    batch=450 rows=3000 duration=642.2ms rps=4671.5
    batch=451 rows=3000 duration=635.7ms rps=4719.1
    batch=452 rows=3000 duration=654.1ms rps=4586.5
    batch=453 rows=3000 duration=644.3ms rps=4656.2
    batch=454 rows=3000 duration=661.8ms rps=4533.3
    batch=455 rows=3000 duration=677.2ms rps=4430.1
    batch=456 rows=3000 duration=762.8ms rps=3933.1
    batch=457 rows=3000 duration=694.0ms rps=4322.7
    batch=458 rows=3000 duration=637.5ms rps=4705.8
    batch=459 rows=3000 duration=639.3ms rps=4692.4
    batch=460 rows=3000 duration=683.0ms rps=4392.4
    batch=461 rows=3000 duration=769.0ms rps=3901.4
    batch=462 rows=3000 duration=668.8ms rps=4485.7
    batch=463 rows=3000 duration=707.9ms rps=4238.1
    batch=464 rows=3000 duration=681.6ms rps=4401.1
    batch=465 rows=3000 duration=651.5ms rps=4604.8
    batch=466 rows=3000 duration=661.2ms rps=4536.9
    batch=467 rows=3000 duration=789.1ms rps=3801.8
    batch=468 rows=3000 duration=650.2ms rps=4613.7
    batch=469 rows=3000 duration=635.9ms rps=4718.1
    batch=470 rows=3000 duration=752.8ms rps=3985.1
    batch=471 rows=3000 duration=708.7ms rps=4233.2
    batch=472 rows=3000 duration=748.9ms rps=4005.7
    batch=473 rows=3000 duration=744.8ms rps=4028.1
    batch=474 rows=3000 duration=669.7ms rps=4479.5
    batch=475 rows=3000 duration=802.1ms rps=3740.3
    batch=476 rows=3000 duration=954.3ms rps=3143.8
    batch=477 rows=3000 duration=799.7ms rps=3751.5
    batch=478 rows=3000 duration=692.9ms rps=4329.6
    batch=479 rows=3000 duration=768.1ms rps=3905.8
    batch=480 rows=3000 duration=692.3ms rps=4333.2
    batch=481 rows=3000 duration=651.8ms rps=4602.8
    batch=482 rows=3000 duration=674.8ms rps=4445.5
    batch=483 rows=3000 duration=670.1ms rps=4476.8
    batch=484 rows=3000 duration=656.6ms rps=4569.3
    batch=485 rows=3000 duration=671.1ms rps=4470.6
    batch=486 rows=3000 duration=647.2ms rps=4635.4
    batch=487 rows=3000 duration=661.6ms rps=4534.8
    batch=488 rows=3000 duration=712.3ms rps=4211.7
    batch=489 rows=3000 duration=664.6ms rps=4514.1
    batch=490 rows=3000 duration=677.7ms rps=4426.8
    batch=491 rows=3000 duration=684.0ms rps=4385.6
    batch=492 rows=3000 duration=662.2ms rps=4530.0
    batch=493 rows=3000 duration=687.9ms rps=4361.0
    batch=494 rows=3000 duration=634.2ms rps=4730.5
    batch=495 rows=3000 duration=652.5ms rps=4597.7
    batch=496 rows=3000 duration=619.1ms rps=4846.1
    batch=497 rows=3000 duration=635.1ms rps=4723.8
    batch=498 rows=3000 duration=653.7ms rps=4588.9
    batch=499 rows=3000 duration=596.5ms rps=5029.7
    batch=500 rows=3000 duration=638.2ms rps=4700.9
    batch=501 rows=3000 duration=631.8ms rps=4748.7
    batch=502 rows=3000 duration=631.5ms rps=4750.5
    batch=503 rows=3000 duration=741.7ms rps=4044.8
    batch=504 rows=3000 duration=666.3ms rps=4502.3
    batch=505 rows=3000 duration=631.0ms rps=4754.7
    batch=506 rows=3000 duration=657.7ms rps=4561.2
    batch=507 rows=3000 duration=758.8ms rps=3953.5
    batch=508 rows=3000 duration=613.4ms rps=4890.7
    batch=509 rows=3000 duration=718.0ms rps=4178.0
    batch=510 rows=3000 duration=692.7ms rps=4330.6
    batch=511 rows=3000 duration=693.7ms rps=4324.9
    batch=512 rows=3000 duration=706.4ms rps=4247.1
    batch=513 rows=3000 duration=673.7ms rps=4452.9
    batch=514 rows=3000 duration=695.9ms rps=4311.1
    batch=515 rows=3000 duration=649.6ms rps=4617.9
    batch=516 rows=3000 duration=715.0ms rps=4195.9
    batch=517 rows=3000 duration=604.3ms rps=4964.1
    batch=518 rows=3000 duration=620.3ms rps=4836.2
    batch=519 rows=3000 duration=658.0ms rps=4558.9
    batch=520 rows=3000 duration=664.6ms rps=4514.3
    batch=521 rows=3000 duration=804.2ms rps=3730.6
    batch=522 rows=3000 duration=686.4ms rps=4370.7
    batch=523 rows=3000 duration=666.1ms rps=4504.0
    batch=524 rows=3000 duration=648.8ms rps=4623.7
    batch=525 rows=3000 duration=660.3ms rps=4543.5
    batch=526 rows=3000 duration=676.6ms rps=4433.7
    batch=527 rows=3000 duration=625.6ms rps=4795.8
    batch=528 rows=3000 duration=641.6ms rps=4676.0
    batch=529 rows=3000 duration=627.5ms rps=4781.2
    batch=530 rows=3000 duration=644.3ms rps=4656.6
    batch=531 rows=3000 duration=615.8ms rps=4871.9
    batch=532 rows=3000 duration=731.4ms rps=4101.9
    batch=533 rows=3000 duration=637.4ms rps=4706.5
    batch=534 rows=3000 duration=651.1ms rps=4607.3
    batch=535 rows=3000 duration=610.3ms rps=4915.4
    batch=536 rows=3000 duration=643.5ms rps=4662.2
    batch=537 rows=3000 duration=667.8ms rps=4492.0
    batch=538 rows=3000 duration=664.1ms rps=4517.7
    batch=539 rows=3000 duration=718.3ms rps=4176.7
    batch=540 rows=3000 duration=648.7ms rps=4624.5
    batch=541 rows=3000 duration=667.8ms rps=4492.2
    batch=542 rows=3000 duration=614.5ms rps=4881.8
    batch=543 rows=3000 duration=640.0ms rps=4687.7
    batch=544 rows=3000 duration=654.8ms rps=4581.8
    batch=545 rows=3000 duration=614.6ms rps=4881.6
    batch=546 rows=3000 duration=623.6ms rps=4810.8
    batch=547 rows=3000 duration=687.4ms rps=4364.5
    batch=548 rows=3000 duration=652.7ms rps=4596.5
    batch=549 rows=3000 duration=646.2ms rps=4642.4
    batch=550 rows=3000 duration=644.5ms rps=4655.1
    batch=551 rows=3000 duration=652.0ms rps=4601.0
    batch=552 rows=3000 duration=675.3ms rps=4442.5
    batch=553 rows=3000 duration=632.8ms rps=4740.8
    batch=554 rows=3000 duration=646.7ms rps=4639.2
    batch=555 rows=3000 duration=683.5ms rps=4389.4
    batch=556 rows=3000 duration=680.7ms rps=4407.2
    batch=557 rows=3000 duration=663.2ms rps=4523.8
    batch=558 rows=3000 duration=703.6ms rps=4263.6
    batch=559 rows=3000 duration=675.1ms rps=4444.0
    batch=560 rows=3000 duration=639.7ms rps=4689.5
    batch=561 rows=3000 duration=674.9ms rps=4444.8
    batch=562 rows=3000 duration=656.6ms rps=4569.2
    batch=563 rows=3000 duration=655.5ms rps=4576.4
    batch=564 rows=3000 duration=659.3ms rps=4550.2
    batch=565 rows=3000 duration=617.9ms rps=4854.9
    batch=566 rows=3000 duration=650.0ms rps=4615.1
    batch=567 rows=3000 duration=651.5ms rps=4604.9
    batch=568 rows=3000 duration=645.6ms rps=4646.6
    batch=569 rows=3000 duration=641.8ms rps=4674.0
    batch=570 rows=3000 duration=646.8ms rps=4638.1
    batch=571 rows=3000 duration=635.0ms rps=4724.5
    batch=572 rows=3000 duration=648.7ms rps=4624.8
    batch=573 rows=3000 duration=698.8ms rps=4293.0
    batch=574 rows=3000 duration=650.2ms rps=4613.7
    batch=575 rows=3000 duration=612.2ms rps=4900.3
    batch=576 rows=3000 duration=637.8ms rps=4703.6
    batch=577 rows=3000 duration=671.2ms rps=4469.5
    batch=578 rows=3000 duration=651.0ms rps=4608.4
    batch=579 rows=3000 duration=628.2ms rps=4775.5
    batch=580 rows=3000 duration=673.0ms rps=4457.4
    batch=581 rows=3000 duration=617.9ms rps=4855.0
    batch=582 rows=3000 duration=639.4ms rps=4691.6
    batch=583 rows=3000 duration=680.7ms rps=4407.4
    batch=584 rows=3000 duration=654.7ms rps=4582.6
    batch=585 rows=3000 duration=620.9ms rps=4831.4
    batch=586 rows=3000 duration=719.2ms rps=4171.5
    batch=587 rows=3000 duration=672.9ms rps=4458.0
    batch=588 rows=3000 duration=836.2ms rps=3587.5
    batch=589 rows=3000 duration=638.6ms rps=4697.8
    batch=590 rows=3000 duration=626.1ms rps=4791.4
    batch=591 rows=3000 duration=653.9ms rps=4587.8
    batch=592 rows=3000 duration=629.7ms rps=4764.1
    batch=593 rows=3000 duration=680.4ms rps=4409.3
    batch=594 rows=3000 duration=668.3ms rps=4489.0
    batch=595 rows=3000 duration=648.5ms rps=4626.4
    batch=596 rows=3000 duration=682.4ms rps=4396.3
    batch=597 rows=3000 duration=670.5ms rps=4474.3
    batch=598 rows=3000 duration=667.3ms rps=4495.8
    batch=599 rows=3000 duration=657.2ms rps=4565.1
    batch=600 rows=3000 duration=656.0ms rps=4573.4
    batch=601 rows=3000 duration=630.5ms rps=4757.9
    batch=602 rows=3000 duration=632.5ms rps=4743.2
    batch=603 rows=3000 duration=654.5ms rps=4583.8
    batch=604 rows=3000 duration=659.2ms rps=4551.0
    batch=605 rows=3000 duration=640.4ms rps=4684.9
    batch=606 rows=3000 duration=622.5ms rps=4819.1
    batch=607 rows=3000 duration=654.9ms rps=4580.6
    batch=608 rows=3000 duration=616.2ms rps=4868.5
    batch=609 rows=3000 duration=740.6ms rps=4050.9
    batch=610 rows=3000 duration=702.2ms rps=4272.2
    batch=611 rows=3000 duration=724.3ms rps=4141.8
    batch=612 rows=3000 duration=680.8ms rps=4406.9
    batch=613 rows=3000 duration=793.8ms rps=3779.5
    batch=614 rows=3000 duration=649.1ms rps=4622.0
    batch=615 rows=3000 duration=649.1ms rps=4621.8
    batch=616 rows=3000 duration=657.5ms rps=4562.4
    batch=617 rows=3000 duration=663.9ms rps=4518.7
    batch=618 rows=3000 duration=653.0ms rps=4594.3
    batch=619 rows=3000 duration=658.0ms rps=4559.4
    batch=620 rows=3000 duration=651.4ms rps=4605.6
    batch=621 rows=3000 duration=630.5ms rps=4757.9
    batch=622 rows=3000 duration=655.2ms rps=4579.0
    batch=623 rows=3000 duration=685.2ms rps=4378.6
    batch=624 rows=3000 duration=671.5ms rps=4467.5
    batch=625 rows=3000 duration=642.0ms rps=4672.9
    batch=626 rows=3000 duration=659.0ms rps=4552.7
    batch=627 rows=3000 duration=670.6ms rps=4473.4
    batch=628 rows=3000 duration=698.6ms rps=4294.3
    batch=629 rows=3000 duration=630.7ms rps=4756.4
    batch=630 rows=3000 duration=653.2ms rps=4592.8
    batch=631 rows=3000 duration=727.5ms rps=4123.5
    batch=632 rows=3000 duration=622.5ms rps=4819.6
    batch=633 rows=3000 duration=646.6ms rps=4639.5
    batch=634 rows=3000 duration=644.7ms rps=4653.1
    batch=635 rows=3000 duration=646.5ms rps=4640.6
    batch=636 rows=3000 duration=611.4ms rps=4907.0
    batch=637 rows=3000 duration=702.8ms rps=4268.4
    batch=638 rows=3000 duration=622.3ms rps=4821.1
    batch=639 rows=3000 duration=649.4ms rps=4619.6
    batch=640 rows=3000 duration=613.8ms rps=4887.6
    batch=641 rows=3000 duration=673.5ms rps=4454.3
    batch=642 rows=3000 duration=674.8ms rps=4446.0
    batch=643 rows=3000 duration=659.8ms rps=4547.1
    batch=644 rows=3000 duration=628.2ms rps=4775.9
    batch=645 rows=3000 duration=645.1ms rps=4650.1
    batch=646 rows=3000 duration=689.6ms rps=4350.1
    batch=647 rows=3000 duration=683.0ms rps=4392.2
    batch=648 rows=3000 duration=634.2ms rps=4730.5
    batch=649 rows=3000 duration=677.6ms rps=4427.6
    batch=650 rows=3000 duration=688.3ms rps=4358.3
    batch=651 rows=3000 duration=657.9ms rps=4560.2
    batch=652 rows=3000 duration=641.4ms rps=4677.2
    batch=653 rows=3000 duration=636.5ms rps=4713.2
    batch=654 rows=3000 duration=641.7ms rps=4674.9
    batch=655 rows=3000 duration=676.8ms rps=4432.3
    batch=656 rows=3000 duration=623.5ms rps=4811.4
    batch=657 rows=3000 duration=646.0ms rps=4644.0
    batch=658 rows=3000 duration=657.5ms rps=4562.9
    batch=659 rows=3000 duration=603.1ms rps=4974.2
    batch=660 rows=3000 duration=665.1ms rps=4510.8
    batch=661 rows=3000 duration=652.1ms rps=4600.8
    batch=662 rows=3000 duration=641.0ms rps=4680.5
    batch=663 rows=3000 duration=652.4ms rps=4598.5
    batch=664 rows=3000 duration=678.8ms rps=4419.9
    batch=665 rows=3000 duration=638.5ms rps=4698.7
    batch=666 rows=3000 duration=667.4ms rps=4494.9
    batch=667 rows=3000 duration=671.7ms rps=4466.4
    batch=668 rows=3000 duration=648.6ms rps=4625.6
    batch=669 rows=3000 duration=630.3ms rps=4759.8
    batch=670 rows=3000 duration=656.1ms rps=4572.5
    batch=671 rows=3000 duration=660.4ms rps=4542.9
    batch=672 rows=3000 duration=630.6ms rps=4757.5
    batch=673 rows=3000 duration=641.8ms rps=4674.2
    batch=674 rows=3000 duration=691.9ms rps=4335.8
    batch=675 rows=3000 duration=658.2ms rps=4558.0
    batch=676 rows=3000 duration=648.2ms rps=4628.2
    batch=677 rows=3000 duration=618.7ms rps=4848.6
    batch=678 rows=3000 duration=616.5ms rps=4866.5
    batch=679 rows=3000 duration=663.7ms rps=4520.3
    batch=680 rows=3000 duration=652.0ms rps=4600.9
    batch=681 rows=3000 duration=609.3ms rps=4923.4
    batch=682 rows=3000 duration=649.5ms rps=4618.6
    batch=683 rows=3000 duration=651.3ms rps=4605.9
    batch=684 rows=3000 duration=635.5ms rps=4720.4
    batch=685 rows=3000 duration=692.6ms rps=4331.5
    batch=686 rows=3000 duration=686.6ms rps=4369.0
    batch=687 rows=3000 duration=699.3ms rps=4290.0
    batch=688 rows=3000 duration=645.3ms rps=4649.4
    batch=689 rows=3000 duration=623.8ms rps=4809.5
    batch=690 rows=3000 duration=644.3ms rps=4656.0
    batch=691 rows=3000 duration=632.5ms rps=4743.2
    batch=692 rows=3000 duration=637.1ms rps=4708.7
    batch=693 rows=3000 duration=608.5ms rps=4930.4
    batch=694 rows=3000 duration=645.2ms rps=4649.4
    batch=695 rows=3000 duration=642.6ms rps=4668.4
    batch=696 rows=3000 duration=646.0ms rps=4644.2
    batch=697 rows=3000 duration=660.2ms rps=4544.0
    batch=698 rows=3000 duration=699.6ms rps=4288.1
    batch=699 rows=3000 duration=688.1ms rps=4359.6
    batch=700 rows=3000 duration=786.9ms rps=3812.7
    batch=701 rows=3000 duration=792.9ms rps=3783.8
    batch=702 rows=3000 duration=738.6ms rps=4061.9
    batch=703 rows=3000 duration=856.6ms rps=3502.3
    batch=704 rows=3000 duration=861.9ms rps=3480.7
    batch=705 rows=3000 duration=904.1ms rps=3318.2
    batch=706 rows=3000 duration=843.6ms rps=3556.1
    batch=707 rows=3000 duration=884.4ms rps=3392.1
    batch=708 rows=3000 duration=790.1ms rps=3796.9
    batch=709 rows=3000 duration=873.3ms rps=3435.3
    batch=710 rows=3000 duration=834.0ms rps=3597.1
    batch=711 rows=3000 duration=790.9ms rps=3793.3
    batch=712 rows=3000 duration=723.1ms rps=4148.7
    batch=713 rows=3000 duration=728.7ms rps=4116.9
    batch=714 rows=3000 duration=722.3ms rps=4153.2
    batch=715 rows=3000 duration=665.0ms rps=4511.5
    batch=716 rows=3000 duration=651.3ms rps=4605.9
    batch=717 rows=3000 duration=733.1ms rps=4092.5
    batch=718 rows=3000 duration=774.9ms rps=3871.5
    batch=719 rows=3000 duration=667.1ms rps=4497.4
    batch=720 rows=3000 duration=719.6ms rps=4169.2
    batch=721 rows=3000 duration=645.2ms rps=4649.7
    batch=722 rows=3000 duration=715.6ms rps=4192.1
    batch=723 rows=3000 duration=670.4ms rps=4475.0
    batch=724 rows=3000 duration=686.0ms rps=4373.5
    batch=725 rows=3000 duration=662.1ms rps=4530.8
    batch=726 rows=3000 duration=692.8ms rps=4330.2
    batch=727 rows=3000 duration=681.4ms rps=4402.6
    batch=728 rows=3000 duration=651.4ms rps=4605.5
    batch=729 rows=3000 duration=620.4ms rps=4835.4
    batch=730 rows=3000 duration=676.7ms rps=4433.1
    batch=731 rows=3000 duration=825.0ms rps=3636.3
    batch=732 rows=3000 duration=662.4ms rps=4529.0
    batch=733 rows=3000 duration=708.1ms rps=4236.8
    batch=734 rows=3000 duration=689.3ms rps=4352.3
    batch=735 rows=3000 duration=650.8ms rps=4609.5
    batch=736 rows=3000 duration=667.6ms rps=4493.4
    batch=737 rows=3000 duration=677.5ms rps=4428.4
    batch=738 rows=717 duration=252.7ms rps=2837.7
2026-09-07 18:16:49,838 | INFO     | rcni.raw_loader | RCNI to_70893_INDV_MONTHLYDISCREPANCY_2026_20260110050148.OUT.good.gz status=SUCCESS disposition=NEW loaded=599893 flagged=3 batches=200 file=496651ms stage=145020ms promote=159273ms rows/sec=4136.6
  file=to_70893_INDV_MONTHLYDISCREPANCY_2026_20260110050148.OUT.good.gz status=SUCCESS disposition=NEW
  parsed=599896 loaded=599893 rejected=3 flagged=3
  batches=200 stage=145019.7ms promote=159273.2ms file=496651.3ms rows/sec=4136.6
