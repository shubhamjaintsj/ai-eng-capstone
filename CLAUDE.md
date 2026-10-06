# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project status

An AI engineering capstone project, at the scaffolding stage. There is no application code yet: only tooling (Poetry, ruff, pytest), a Postgres + pgvector container, a placeholder smoke test, and learning notes in `docs/`.

## Commands

Python >= 3.12, managed with Poetry. Dev dependencies (ruff, pytest) are in the `dev` dependency group.

```bash
poetry install
make lint
make test
poetry run pytest tests/test_smoke.py::test_environment
docker compose up -d
