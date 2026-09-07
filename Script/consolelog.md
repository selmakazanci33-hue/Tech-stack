 python .\run_rcni.py --validate-local ".\assets\rcni\15105\2026\05"


RCNI
  mode           : validate-local
  base path      : /archive/out/good/PAS
  local root     : C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\assets\rcni
  issuer         : ALL
  processing year: [2026]
  processing month: ALL
  Azure SQL      : DISABLED

2026-09-07 14:48:52,897 | INFO     | rcni.pipeline | RCNI validate-local — dir=assets\rcni\15105\2026\05 (no SFTP, no SQL)

RCNI CANDIDATE INVENTORY
----------------------------------------------------------------------------------------------------
issuer   proc         day    plan   mismatch  filename
15105    2026/05      16     2025   False     to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
         assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
15105    2026/05      16     2026   False     to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
         assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
----------------------------------------------------------------------------------------------------
Total candidates: 2
2026-09-07 14:48:52,900 | INFO     | rcni.reports | Wrote discovery inventory: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv (2 row(s))
2026-09-07 14:48:53,118 | INFO     | rcni.reports | Wrote validation summary: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\validation_summary.csv (2 file(s))
2026-09-07 14:48:53,119 | INFO     | rcni.reports | Wrote structural malformed evidence: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\structural_malformed.csv (0 row(s))
2026-09-07 14:48:53,120 | INFO     | rcni.reports | Wrote data-quality warnings: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\data_quality_warnings.csv (0 row(s))
2026-09-07 14:48:53,121 | INFO     | rcni.reports | Wrote run manifest: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\run_manifest.json

RCNI VALIDATION SUMMARY
------------------------------------------------------------------------------------------------------------------------
15105  proc=2026/05/16  plan_year=2025  status=CLEAN
  file   : to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
  path   : assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2025_20260517000206.OUT.good
  size   : compressed=0  hash=b31b8f3e8ac6bda6…
  csv    : header_cols=19  parsed=33859  clean=33859  structural_malformed=0  id_format_warnings=0  other_warnings=0
  schema=CLEAN  filename=CLEAN  flags=CLEAN
15105  proc=2026/05/16  plan_year=2026  status=CLEAN
  file   : to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
  path   : assets\rcni\15105\2026\05\16\extracted\to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
  size   : compressed=0  hash=4ef0e588fa7f07b2…
  csv    : header_cols=19  parsed=14268  clean=14268  structural_malformed=0  id_format_warnings=0  other_warnings=0
  schema=CLEAN  filename=CLEAN  flags=CLEAN
------------------------------------------------------------------------------------------------------------------------
Files validated: 2
Totals: structural_malformed=0  identifier_format_warnings=0  other_quality_warnings=0
Azure SQL writes: NONE
Source files modified: NO

Reports:
  discovery_inventory: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv
  validation_summary: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\validation_summary.csv
  structural_malformed: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\structural_malformed.csv
  data_quality_warnings: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\data_quality_warnings.csv
  manifest: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\run_manifest.json

Azure SQL writes: NONE
Source files modified: NO
(.venv) 
