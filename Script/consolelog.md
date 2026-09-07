 python .\run_rcni.py --load-local-azure --issuer 15105 --year 2026 --month 05 --file-name to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good                                                                                                

RCNI
  mode           : load-local-azure
  base path      : /archive/out/good/PAS
  local root     : C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\assets\rcni
  issuer         : [15105]
  processing year: [2026]
  processing month: [05]
  file-name      : to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
  Azure SQL      : EXPLICIT LOAD


RCNI LOCAL AZURE LOAD
  local root     : C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\assets\rcni
  issuer         : [15105]
  processing year: [2026]
  processing month: [05]
  file-name      : to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
  SFTP           : DISABLED
  files found    : 1
    C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
      lineage: /archive/out/good/PAS/15105/2026/05/16/to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good (filesystem)

RCNI PHYSICAL FILE CHECK (before Azure)
  exists/readable: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good

RCNI LOCAL VALIDATION (before Azure)
  local validate: to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good parsed=14268 structural_malformed=0 header_ok=True
  rcni_batch_size: 3000
Azure config presence (no secrets):
  SERVER present: True
  DATABASE present: True
  USERNAME present: True
  DRIVER present: True
  AZURE_SQL_SCHEMA present: True
  fast_executemany: True
  batch_size: 1000
Azure connection successful
RCNI AZURE PREFLIGHT OK
  present: dbo.rcni_run_log
  present: dbo.rcni_file_log
  present: dbo.rcni_raw
  present: dbo.rcni_data_quality_issue
  present: dbo.rcni_stage

RCNI AZURE FILE LOAD
2026-09-07 15:02:53,893 | INFO     | rcni.raw_loader | RCNI to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good status=SUCCESS disposition=NEW loaded=14268 flagged=0 batches=5 file=9652ms stage=3364ms promote=2469ms rows/sec=4242.0
  file=to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good status=SUCCESS disposition=NEW
  parsed=14268 loaded=14268 rejected=0 flagged=0
  batches=5 stage=3363.5ms promote=2469.1ms file=9652.0ms rows/sec=4242.0
    batch=1 rows=3000 duration=738.4ms rps=4062.9
    batch=2 rows=3000 duration=708.2ms rps=4235.9
    batch=3 rows=3000 duration=704.6ms rps=4257.9
    batch=4 rows=3000 duration=678.6ms rps=4421.1
    batch=5 rows=2268 duration=533.8ms rps=4249.1

RCNI AZURE LOAD SUMMARY
Run ID: f2389393-f4c7-4241-a158-dbac72c19976
Files discovered: 1
Files attempted: 1
Files successful: 1
Files failed: 0
Files skipped duplicate: 0

Rows parsed: 14268
Rows loaded: 14268
Rows flagged: 0
Rows rejected: 0
Unaccounted rows: 0

Total stage duration: 3363.5ms
Total promote duration: 2469.1ms
Total run duration: 38263.1ms

Azure writes: TRUE
(.venv) PS C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl> 
