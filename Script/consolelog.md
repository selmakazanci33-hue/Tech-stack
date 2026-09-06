 .\run_rcni.py --help                                                                    
usage: run_rcni.py [-h] (--discover-only | --validate | --validate-local DIR) [--issuer ISSUER] [--year YEAR] [--month MONTH]                                                       

RCNI Monthly Discrepancy — Phase 1 discovery/validation (no SQL).

options:
  -h, --help            show this help message and exit
  --discover-only       List matching SFTP candidates only (no download, no SQL).
  --validate            Discover, download, decompress, validate (no SQL).
  --validate-local DIR  Validate already-local RCNI files (no SFTP, no SQL).
  --issuer ISSUER       Override ISSUER_FILTER from .env
  --year YEAR           Override YEAR_FILTER (SFTP processing year, not plan year)
  --month MONTH         Override MONTH_FILTER (SFTP processing month)

Examples:
  python run_rcni.py --discover-only --issuer 15105 --year 2026 --month 07
  python run_rcni.py --validate --issuer 15105 --year 2026 --month 07
  python run_rcni.py --validate-local "last reports"
(.venv) PS C:\Users\SelmaKazanci\Downloads\project\gaacces-rcni-main\834_issuer_etl> 
