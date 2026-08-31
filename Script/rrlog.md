

python .\run_rcni.py --validate --issuer 86637 --year 2026 --month 02     

RCNI PHASE 1
  mode           : validate
  base path      : /archive/out/good/PAS
  issuer         : [86637]
  processing year: [2026]
  processing month: [02]
  Azure SQL      : DISABLED

2026-08-31 06:01:20,314 | INFO     | rcni.pipeline | RCNI discover+validate — base=/archive/out/good/PAS issuer=[86637] year=[2026] month=[02] (no SQL)
2026-08-31 06:01:29,414 | INFO     | ingestion.sftp_ingestion | SFTP partitions selected: 1
2026-08-31 06:01:29,414 | INFO     | ingestion.sftp_ingestion |   partition: 86637/2026/02
2026-08-31 06:01:29,710 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=0 path=/archive/out/good/PAS/86637/2026/02 subfolders=1 files=0
2026-08-31 06:01:29,966 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=1 path=/archive/out/good/PAS/86637/2026/02/12 subfolders=1 files=0
2026-08-31 06:01:30,226 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=2 path=/archive/out/good/PAS/86637/2026/02/12/3558332_892328911023 subfolders=0 files=2
2026-08-31 06:01:30,227 | INFO     | rcni.discovery | RCNI candidate issuer=86637 proc=2026/02/12 plan_year=2026 file=to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz path=/archive/out/good/PAS/86637/2026/02/12/3558332_892328911023/to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
2026-08-31 06:01:30,227 | INFO     | rcni.discovery | RCNI discovery: partitions=1 folders=3 files_scanned=2 candidates=1 skipped=1

RCNI CANDIDATE INVENTORY
----------------------------------------------------------------------------------------------------
issuer   proc         day    plan   mismatch  filename
86637    2026/02      12     2026   False     to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
         /archive/out/good/PAS/86637/2026/02/12/3558332_892328911023/to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
----------------------------------------------------------------------------------------------------
Total candidates: 1
2026-08-31 06:01:30,230 | INFO     | rcni.reports | Wrote discovery inventory: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv (1 row(s))
2026-08-31 06:01:30,554 | INFO     | rcni.download | Downloaded /archive/out/good/PAS/86637/2026/02/12/3558332_892328911023/to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz → C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\assets\rcni\86637\2026\02\12\compressed\to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz (55945 bytes)
2026-08-31 06:01:30,590 | INFO     | rcni.staging | Decompressed C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\assets\rcni\86637\2026\02\12\compressed\to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz → C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\assets\rcni\86637\2026\02\12\extracted\to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good (603962 bytes)
2026-08-31 06:01:30,645 | INFO     | rcni.reports | Wrote validation summary: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\validation_summary.csv (1 file(s))
2026-08-31 06:01:30,647 | INFO     | rcni.reports | Wrote malformed evidence: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\malformed_records.csv (0 issue(s))
2026-08-31 06:01:30,648 | INFO     | rcni.reports | Wrote run manifest: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\run_manifest.json

RCNI VALIDATION SUMMARY
------------------------------------------------------------------------------------------------------------------------
86637  proc=2026/02/12  plan_year=2026  status=CLEAN
  file   : to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
  path   : /archive/out/good/PAS/86637/2026/02/12/3558332_892328911023/to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
  size   : compressed=55945  hash=4f5dff57879942e2…
  csv    : header_cols=19  parsed=2744  clean=2744  malformed=0  id_warnings=0
  schema=CLEAN  filename=CLEAN  flags=CLEAN
------------------------------------------------------------------------------------------------------------------------
Files validated: 1
Azure SQL writes: NONE
Source files modified: NO

Reports:
  discovery_inventory: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv
  validation_summary: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\validation_summary.csv
  malformed_records: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\malformed_records.csv
  manifest: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\run_manifest.json

Azure SQL writes: NONE
Source files modified: NO
