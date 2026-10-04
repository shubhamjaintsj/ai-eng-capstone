.PHONY: lint test

lint:
	poetry run ruff check .

test:
	poetry run pytest
