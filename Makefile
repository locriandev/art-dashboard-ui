.PHONY: venv lint fix run

venv:
	uv venv --python 3.11 --clear
	uv sync --active

lint:
	uv run ruff check --output-format concise
	uv run ruff format --check

fix:
	uv run ruff check --fix
	uv run ruff format

run:
	ART_DASH_DEV=1 uv run python app.py
