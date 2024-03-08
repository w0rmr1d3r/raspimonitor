SOURCES = raspimonitor tests

install:
	pip install -r requirements.txt

install-dev:
	pip install -r requirements-dev.txt

format:
	ruff format $(SOURCES)
	ruff check --fix $(SOURCES)

lint:
	ruff check $(SOURCES)

unit:
	pytest -svvv tests

test: lint unit

freeze:
	CUSTOM_COMPILE_COMMAND="make freeze" pip-compile --no-emit-index-url -v -o requirements.txt pyproject.toml
	CUSTOM_COMPILE_COMMAND="make freeze-dev" pip-compile --extra "dev" --no-emit-index-url -v -o requirements-dev.txt pyproject.toml

freeze-upgrade:
	CUSTOM_COMPILE_COMMAND="make freeze" pip-compile --upgrade --no-emit-index-url -v -o requirements.txt pyproject.toml
	CUSTOM_COMPILE_COMMAND="make freeze-dev" pip-compile --extra "dev" --upgrade --no-emit-index-url -v -o requirements-dev.txt pyproject.toml

.PHONY: install install-dev format lint unit test freeze freeze-upgrade
