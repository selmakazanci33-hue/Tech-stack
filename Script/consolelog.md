C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl> python .\run_rcni.py --issuer 15105 --year 2026 --month 05 --validate

RCNI PHASE 1
  mode           : validate
  base path      : /archive/out/good/PAS
  issuer         : [15105]
  processing year: [2026]
  processing month: [05]
  Azure SQL      : DISABLED

2026-09-06 15:53:41,158 | INFO     | rcni.pipeline | RCNI discover+validate — base=/archive/out/good/PAS issuer=[15105] year=[2026] month=[05] (no SQL)
2026-09-06 15:53:42,247 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 13535: issuer filter ['15105']
2026-09-06 15:53:43,538 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 37001: issuer filter ['15105']
2026-09-06 15:53:43,538 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 37301: issuer filter ['15105']
2026-09-06 15:53:43,538 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 43802: issuer filter ['15105']
2026-09-06 15:53:43,539 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 45334: issuer filter ['15105']
2026-09-06 15:53:43,540 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 49046: issuer filter ['15105']
2026-09-06 15:53:43,540 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 58081: issuer filter ['15105']
2026-09-06 15:53:43,540 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 60224: issuer filter ['15105']
2026-09-06 15:53:43,540 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 64357: issuer filter ['15105']
2026-09-06 15:53:43,540 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 68806: issuer filter ['15105']
2026-09-06 15:53:43,540 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 70893: issuer filter ['15105']
2026-09-06 15:53:43,541 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 82824: issuer filter ['15105']
2026-09-06 15:53:43,541 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 83502: issuer filter ['15105']
2026-09-06 15:53:43,541 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 83761: issuer filter ['15105']
2026-09-06 15:53:43,541 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 86637: issuer filter ['15105']
2026-09-06 15:53:43,541 | INFO     | ingestion.sftp_ingestion | Skipping SFTP issuer entry 89942: issuer filter ['15105']
2026-09-06 15:53:43,541 | INFO     | ingestion.sftp_ingestion | SFTP partitions selected: 1
2026-09-06 15:53:43,541 | INFO     | ingestion.sftp_ingestion |   partition: 15105/2026/05

RCNI PARTITION DIAGNOSTIC
----------------------------------------------------------------------------------------------------
issuer 15105  path=/archive/out/good/PAS/15105
  year directories found : ['2024', '2025', '2026']
  years accepted         : ['2026']
  years rejected:
    2024: year filter ['2026']
    2025: year filter ['2026']
  under 2026 month directories found: ['01', '02', '03', '04', '05', '06', '07', '08']
    months accepted: ['05']
    months rejected:
      01: month filter ['05']
      02: month filter ['05']
      03: month filter ['05']
      04: month filter ['05']
      06: month filter ['05']
      07: month filter ['05']
      08: month filter ['05']

----------------------------------------------------------------------------------------------------
2026-09-06 15:53:44,917 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=0 path=/archive/out/good/PAS/15105/2026/05 subfolders=1 files=0
2026-09-06 15:53:46,157 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=1 path=/archive/out/good/PAS/15105/2026/05/16 subfolders=2 files=0
2026-09-06 15:53:47,711 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=2 path=/archive/out/good/PAS/15105/2026/05/16/3066767_148093563610 subfolders=0 files=2
2026-09-06 15:53:49,418 | INFO     | ingestion.sftp_tree_walk | Entering folder depth=2 path=/archive/out/good/PAS/15105/2026/05/16/3066767_888586925866 subfolders=0 files=2
2026-09-06 15:53:49,418 | INFO     | rcni.discovery | Production walk 15105/2026/05 folders=4 files_scanned=4
2026-09-06 15:53:49,420 | INFO     | rcni.discovery | RCNI candidate issuer=15105 proc=2026/05/16 plan_year=2025 file=to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good path=/archive/out/good/PAS/15105/2026/05/16/3066767_148093563610/to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
2026-09-06 15:53:49,422 | INFO     | rcni.discovery | RCNI candidate issuer=15105 proc=2026/05/16 plan_year=2026 file=to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good path=/archive/out/good/PAS/15105/2026/05/16/3066767_888586925866/to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
2026-09-06 15:53:49,422 | INFO     | rcni.discovery | RCNI discovery: partitions=1 folders=4 files_scanned=4 candidates=2 skipped=2

RCNI CANDIDATE INVENTORY
----------------------------------------------------------------------------------------------------
issuer   proc         day    plan   mismatch  filename
15105    2026/05      16     2025   False     to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
         /archive/out/good/PAS/15105/2026/05/16/3066767_148093563610/to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
15105    2026/05      16     2026   False     to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
         /archive/out/good/PAS/15105/2026/05/16/3066767_888586925866/to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
----------------------------------------------------------------------------------------------------
Total candidates: 2
2026-09-06 15:53:49,429 | INFO     | rcni.reports | Wrote discovery inventory: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv (2 row(s))
2026-09-06 15:53:49,432 | INFO     | rcni.download | Skipping existing extracted file: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
2026-09-06 15:53:49,556 | INFO     | rcni.download | Skipping existing extracted file: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
2026-09-06 15:53:49,629 | INFO     | rcni.reports | Wrote validation summary: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\validation_summary.csv (2 file(s))
2026-09-06 15:53:49,631 | INFO     | rcni.reports | Wrote structural malformed evidence: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\structural_malformed.csv (0 row(s))
2026-09-06 15:53:49,632 | INFO     | rcni.reports | Wrote data-quality warnings: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\data_quality_warnings.csv (0 row(s))
2026-09-06 15:53:49,634 | INFO     | rcni.reports | Wrote run manifest: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\run_manifest.json

RCNI VALIDATION SUMMARY
------------------------------------------------------------------------------------------------------------------------
15105  proc=2026/05/16  plan_year=2025  status=CLEAN
  file   : to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
  path   : /archive/out/good/PAS/15105/2026/05/16/3066767_148093563610/to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
  size   : compressed=0  hash=b31b8f3e8ac6bda6…
  csv    : header_cols=19  parsed=33859  clean=33859  structural_malformed=0  id_format_warnings=0  other_warnings=0
  schema=CLEAN  filename=CLEAN  flags=CLEAN
15105  proc=2026/05/16  plan_year=2026  status=CLEAN
  file   : to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
  path   : /archive/out/good/PAS/15105/2026/05/16/3066767_888586925866/to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
  size   : compressed=0  hash=4ef0e588fa7f07b2…
  csv    : header_cols=19  parsed=14268  clean=14268  structural_malformed=0  id_format_warnings=0  other_warnings=0
  schema=CLEAN  filename=CLEAN  flags=CLEAN
------------------------------------------------------------------------------------------------------------------------
Files validated: 2
Totals: structural_malformed=0  identifier_format_warnings=0  other_quality_warnings=0
Azure SQL writes: NONE
Source files modified: NO

Reports:
  discovery_inventory: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv
  validation_summary: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\validation_summary.csv
  structural_malformed: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\structural_malformed.csv
  data_quality_warnings: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\data_quality_warnings.csv
  manifest: C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\run_manifest.json

Azure SQL writes: NONE
Source files modified: NO
(.venv) PS C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl> 
