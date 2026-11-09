


.\.venv\Scripts\python.exe -c "import json; d=json.load(open('reports/discovery/wave1_metric_discovery.json', encoding='utf-8')); print(json.dumps(d.get('observed', {}), indent=2))"
