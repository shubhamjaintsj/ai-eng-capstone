# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

DevDocs Copilot: a FastAPI service that will answer questions about public APIs and developer docs. Built incrementally following the 182-day plan in `docs/ai-engineer-project-knowledge.md`.

- `app/main.py` — FastAPI app (`/health`)
- `app/settings.py` — pydantic-settings config, read from env vars and `.env`
- `tests/` — pytest tests
- `docker-compose.yml` — Postgres 17 + pgvector, data in the `pgdata` volume

## Setup and commands

Python 3.12, Poetry 2.x (`package-mode = false`: this is an app, not a library). Run all commands from Ubuntu (WSL).

```bash
poetry install                 # install dependencies
cp .env.example .env           # then fill in values; never commit .env
make lint                      # poetry run ruff check .
make test                      # poetry run pytest
poetry run ruff format .       # format (CI runs ruff format --check)
poetry run uvicorn app.main:app --reload
docker compose up -d           # start Postgres
```

`make` needs `build-essential` (`sudo apt install -y build-essential`).

## Code style

- Ruff defaults for lint and formatting; CI fails on lint or format errors.
- Configuration goes through `app/settings.py`, never `os.environ` scattered in code.
- Every new endpoint or behaviour gets a pytest test.

## Rules

- Never commit secrets. `.env` is git-ignored; the pre-commit hook blocks `.env` files and `sk-...` keys.
- Do not call paid LLM APIs from tests.
- A Claude Code hook runs ruff after every Python file edit (`.claude/settings.json`); fix what it reports.
- Use the `code-reviewer` subagent before committing non-trivial changes.
- The learner writes the build code; prefer hints, skeletons, and reviews over full solutions.
