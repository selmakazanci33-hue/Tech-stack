python .\run_rcni.py --help
usage: run_rcni.py [-h] [--discover-only | --validate | --validate-local DIR | --load-azure | --load-local-azure] [--issuer ISSUER] [--year YEAR] [--month MONTH]
                   [--file-name FILE_NAME]

RCNI Monthly Discrepancy — discovery/validation by default; Azure load only with an explicit load flag.

options:
  -h, --help            show this help message and exit
  --discover-only       List matching SFTP candidates only (no download, no Azure).
  --validate            Discover, download, parse, validate (no Azure). Default when no mode is set.
  --validate-local DIR  Validate already-local RCNI files (no SFTP, no Azure).
  --load-azure          SFTP acquire + explicit Azure load. Azure is contacted only with this flag.
  --load-local-azure    Load already-downloaded local RCNI files into Azure. No SFTP.
  --issuer ISSUER       Override ISSUER_FILTER from .env
  --year YEAR           Override YEAR_FILTER (SFTP processing year, not plan year)
  --month MONTH         Override MONTH_FILTER (SFTP processing month)
  --file-name FILE_NAME
                        Exact basename match only (no glob, no logical-name rewrite).

Examples:
  python run_rcni.py --discover-only --issuer 15105 --year 2026 --month 05
  python run_rcni.py --issuer 15105 --year 2026 --month 05
  python run_rcni.py --load-local-azure --issuer 15105 --year 2026 --month 05 \
      --file-name to_15105_INDV_MONTHLYDISCREPANCY_2026_20260517000035.OUT.good
(.venv) PS C:\Users\SelmaKazanci\Downloads\all new downloads\gaacces-rcni-main\gaacces-rcni-main\834_issuer_etl> 
