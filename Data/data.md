


# 1. Issuer/month inbound files download
python main.py --issuer 70893 --year 2026 --month 10 --no-clean

# 2. Parse/validate without Azure write
python run_inbound_automation_load.py --dry-run --issuer 70893 --year 2026 --month 10

# 3. Azure SQL load
python run_inbound_automation_load.py --load --issuer 70893 --year 2026 --month 10


-- Main inbound 834 records
SELECT TOP 100 *
FROM dbo.inbound_automation
WHERE issuer_id = '70893';


-- File-level processing history
SELECT TOP 100 *
FROM dbo.inbound_automation_file_log
ORDER BY id DESC;


-- Pipeline run history
SELECT TOP 100 *
FROM dbo.inbound_automation_run_log
ORDER BY id DESC;


