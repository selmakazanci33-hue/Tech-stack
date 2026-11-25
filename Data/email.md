
1. Önce hangi RCNI dosyalarının olduğunu gör
python run_rcni.py --discover-only --issuer 58081 --year 2026 --month 04

Bu sadece SFTP’de şu scope’u keşfeder:
/archive/out/good/PAS/58081/2026/04/**

Download veya Azure load yapmaz.
2. Sadece bu issuer + month’u SFTP’den download et
python run_rcni.py --issuer 58081 --year 2026 --month 04

3. Download ettiğin SADECE bu month'u Azure'a load et
Burada önemli nokta şu cicim:
python run_rcni.py --load-local-azure --issuer 58081 --year 2026 --month 04


# STEP 1 — Download + validate only
python run_rcni.py --issuer 58081 --year 2026 --month 04

# STEP 2 — Load that local issuer/month into Azure
python run_rcni.py --load-local-azure --issuer 58081 --year 2026 --month 04
