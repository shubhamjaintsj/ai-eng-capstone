# DevDocs Copilot

DevDocs Copilot is an engineering assistant that will eventually answer questions about public APIs and developer documentation.

The project is being built incrementally as part of a 182-day Senior AI Engineer study plan.

## Current Status

**Day 7 — Week 1 review** (Day 6: FastAPI service + automated tests + CI)

Current functionality:

- FastAPI application
- `/health` endpoint
- Environment-based configuration
- Automated tests with pytest
- Code quality checks with Ruff
- GitHub Actions CI

## Project Structure

```text
ai-eng-capstone/
├── app/
│   ├── __init__.py
│   ├── main.py
│   └── settings.py
│
├── tests/
│   ├── test_health.py
│   └── test_smoke.py
│
├── docs/
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── .env.example
├── .gitignore
├── pyproject.toml
├── poetry.lock
└── README.md
