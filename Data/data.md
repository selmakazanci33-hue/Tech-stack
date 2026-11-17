

 party did not properly respond after a period of time, or established connection failed because connected host has failed to respond
Traceback (most recent call last):
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\connectors\sftp_connector.py", line 60, in sync
    count, _ = ingest_from_sftp(
               ~~~~~~~~~~~~~~~~^
        host=settings.sftp_host,
        ^^^^^^^^^^^^^^^^^^^^^^^^
    ...<10 lines>...
        reports_dir=settings.reports_path,
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\ingestion\sftp_ingestion.py", line 251, in ingest_from_sftp
    transport = paramiko.Transport((host, port))
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\.venv\Lib\site-packages\paramiko\transport.py", line 471, in __init__
    raise SSHException(
        "Unable to connect to {}: {}".format(hostname, reason)
    )
paramiko.ssh_exception.SSHException: Unable to connect to gahixsftp.getinsured.com: [WinError 10060] A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond
Traceback (most recent call last):
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\main.py", line 116, in <module>
    main()
    ~~~~^^
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\main.py", line 94, in main
    stats = pipeline.run_full(settings.issuer_filter)
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\pipeline\orchestrator.py", line 111, in run_full
    stats = self.ingest_and_load()
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\pipeline\orchestrator.py", line 51, in ingest_and_load
    sources = connector.sync()
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\connectors\sftp_connector.py", line 60, in sync
    count, _ = ingest_from_sftp(
               ~~~~~~~~~~~~~~~~^
        host=settings.sftp_host,
        ^^^^^^^^^^^^^^^^^^^^^^^^
    ...<10 lines>...
        reports_dir=settings.reports_path,
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    )
    ^
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\ingestion\sftp_ingestion.py", line 251, in ingest_from_sftp
    transport = paramiko.Transport((host, port))
  File "C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_issuer_etl\.venv\Lib\site-packages\paramiko\transport.py", line 471, in __init__
    raise SSHException(
        "Unable to connect to {}: {}".format(hostname, reason)
    )
paramiko.ssh_exception.SSHException: Unable to connect to gahixsftp.getinsured.com: [WinError 10060] A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond                                                                             
(.venv) PS C:\Users\SelmaKazanci\Downloads\project\gaaccess-develop8\834_
