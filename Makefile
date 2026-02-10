.PHONY: venv lint fix clean-reinstall

venv:
	uv venv --python 3.11 --clear
	./install.sh

lint:
	uv run ruff check --select I --output-format concise
	uv run ruff format --check
	uv run ruff check --output-format concise

fix:
	uv run ruff check --select I --fix
	uv run ruff format
	uv run ruff check --fix --unsafe-fixes
