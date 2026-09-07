python .\run_rcni.py --validate-local ".\assets\rcni\15105\2026\05"


RCNI
  mode           : validate-local
  base path      : /archive/out/good/PAS
  local root     : C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\assets\rcni
  issuer         : ALL
  processing year: [2026]
  processing month: ALL
  Azure SQL      : DISABLED

2026-09-07 14:23:06,828 | INFO     | rcni.pipeline | RCNI validate-local — dir=assets\rcni\15105\2026\05 (no SFTP, no SQL)

RCNI CANDIDATE INVENTORY
----------------------------------------------------------------------------------------------------
  (no matching RCNI Monthly Discrepancy files)
----------------------------------------------------------------------------------------------------
2026-09-07 14:23:06,831 | INFO     | rcni.reports | Wrote discovery inventory: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv (0 row(s))
2026-09-07 14:23:06,832 | INFO     | rcni.reports | Wrote validation summary: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\validation_summary.csv (0 file(s))
2026-09-07 14:23:06,832 | INFO     | rcni.reports | Wrote structural malformed evidence: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\structural_malformed.csv (0 row(s))
2026-09-07 14:23:06,833 | INFO     | rcni.reports | Wrote data-quality warnings: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\data_quality_warnings.csv (0 row(s))
2026-09-07 14:23:06,834 | INFO     | rcni.reports | Wrote run manifest: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\run_manifest.json

RCNI VALIDATION SUMMARY
------------------------------------------------------------------------------------------------------------------------
  (no files validated)
------------------------------------------------------------------------------------------------------------------------

Reports:
  discovery_inventory: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\discovery_inventory.csv
  validation_summary: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\validation_summary.csv
  structural_malformed: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\structural_malformed.csv
  data_quality_warnings: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\data_quality_warnings.csv
  manifest: C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl\outputs\rcni\validation\run_manifest.json

Azure SQL writes: NONE
Source files modified: NO
