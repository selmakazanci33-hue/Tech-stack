..venv\Scripts\python.exe -c "import json; d=json.load(open('reports/discovery/wave1_metric_discovery.json', encoding='utf-8')); print(json.dumps(d.get('observed', {}), indent=2))"                                                       
..venv\Scripts\python.exe : The module '..venv' could not be loaded. For more information, run 'Import-Module ..venv'.
At line:1 char:1
+ ..venv\Scripts\python.exe -c "import json; d=json.load(open('reports/ ...
+ ~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (..venv\Scripts\python.exe:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CouldNotAutoLoadModule
 
