.PHONY: lint run

lint:
	uv sync
	uv run ruff check . --fix
	uv run ruff format .

run:
	uv run main.py $@ 
