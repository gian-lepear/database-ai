set shell := ["sh", "-c"]
set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

test:
    uv run ./tests/main.py

pyclean:
    uv run pyclean . --debris all --verbose

run_db:
    docker compose up -d
