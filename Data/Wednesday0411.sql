



py -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m playwright install chromium
Copy-Item .env.example .env
notepad .env


.\.venv\Scripts\python.exe -m unittest discover -s tests -t .


.\.venv\Scripts\python.exe main.py
echo $LASTEXITCODE
