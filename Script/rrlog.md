

python .\run_rcni.py --discover-only --issuer 86637 --year 2026 --month 02

RCNI PHASE 1
  mode           : discover-only
  base path      : /archive/out/good/PAS
  issuer         : [86637]
  processing year: [2026]
  processing month: [02]
  Azure SQL      : DISABLED

2026-08-31 05:58:23,414 | INFO     | rcni.pipeline | RCNI discover-only — base=/archive/out/good/PAS issuer=[86637] year=[2026] month=[02] (no download, no SQL)
2026-08-31 05:58:32,204 | INFO     | ingestion.sftp_ingestion | SFTP partitions selected: 1
2026-08-31 05:58:32,206 | INFO     | ingestion.sftp_ingestion |   partition: 86637/2026/02
2026-08-31 05:58:32,497 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=0 path=/archive/out/good/PAS/86637/2026/02 subfolders=1 files=0
2026-08-31 05:58:32,747 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=1 path=/archive/out/good/PAS/86637/2026/02/12 subfolders=1 files=0
2026-08-31 05:58:32,990 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=2 path=/archive/out/good/PAS/86637/2026/02/12/3558332_892328911023 subfolders=0 files=2
2026-08-31 05:58:32,991 | INFO     | rcni.discovery | RCNI candidate issuer=86637 proc=2026/02/12 plan_year=2026 file=to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz path=/archive/out/good/PAS/86637/2026/02/12/3558332_892328911023/to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
2026-08-31 05:58:32,991 | INFO     | rcni.discovery | RCNI discovery: partitions=1 folders=3 files_scanned=2 candidates=1 skipped=1

RCNI CANDIDATE INVENTORY
----------------------------------------------------------------------------------------------------
issuer   proc         day    plan   mismatch  filename
86637    2026/02      12     2026   False     to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
         /archive/out/good/PAS/86637/2026/02/12/3558332_892328911023/to_86637_INDV_MONTHLYDISCREPANCY_2026_20260212042145.OUT.good.gz
----------------------------------------------------------------------------------------------------
Total candidates: 1
2026-08-31 05:58:32,995 | INFO     | rcni.reports | Wrote discovery inventory: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv (1 row(s))
2026-08-31 05:58:32,997 | INFO     | rcni.reports | Wrote run manifest: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\run_manifest.json

Reports:
  discovery_inventory: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv
  manifest: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni\834_issuer_etl\outputs\rcni\validation\run_manifest.json

Azure SQL writes: NONE
Source files modified: NO
(.
