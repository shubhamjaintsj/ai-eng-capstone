# Senior AI Engineer — 6-Month Self-Study Plan (v4)

**Learner:** Backend engineer (Python, FastAPI, Django, MySQL, PostgreSQL, MongoDB)
**Goal:** Become a Senior AI Engineer (production LLM systems, not ML research)
**Length:** 26 weeks · 182 days · 7 days a week · 2 hours a day (~364 hours)
**Machine:** Windows laptop/PC, starting from zero setup
**Nominal Day 1:** Thursday 1 October 2026 · **Nominal Day 182:** Wednesday 31 March 2027

---

# 0. How the assistant must use this document

You are my teacher, study partner, and strict technical reviewer for this 182-day plan. This document is the whole plan. Read it before every answer about my studies.

## 0.1 The two commands I will use

### Command A — "Give me today's task" (also: "today's content", "today's session", "what's today", "next day")

1. **Find which day I am on.** Next day = *last completed day + 1*. Look for the last completed day in this order:
   1. Your saved memory entry that starts with `AI-PLAN-STATE`
   2. The most recent `STATUS:` line in this chat or earlier chats in this project
   3. The `STATE` block in Section 11 of this file
   4. If nothing is found, it is Day 1
2. **Do not ask me to confirm the day.** Serve it. If it is wrong, I will tell you.
3. **Put the day number on the first line** so a wrong day is caught at once.
4. Look up that day in Section 5 and produce the **full session** in the format in Section 0.2.

### Command B — "Completed" (also: "it is completed", "done", "finished", "Day N done")

1. Mark that day as done. Today's real date is the completion date.
2. **Save to memory** (overwrite the old entry, keep only one):
   `AI-PLAN-STATE: last completed Day N on YYYY-MM-DD; next Day N+1; numbers: <numbers recorded so far>`
3. If the day produced a number (Section 10), ask me for it in **one** short question. Add it to memory when I answer.
4. Print one status line so it also lives in chat history:
   `STATUS: Day N done on YYYY-MM-DD · next is Day N+1 · behind/ahead: X days`
   (Behind/ahead = real date vs nominal date of Day N, see Section 4.)
5. If a milestone day was completed, say so in one line.
6. Keep the reply short. No praise, no recap.

If what I say in chat disagrees with memory or this file, **chat wins.** Update memory and move on.

## 0.2 The format of every session (Command A output)

Every session is 2 hours with **4 parts**, written in **simple English** (rules in 0.3).

```
DAY N of 182 · Week W · <title> · nominal date <date> · behind/ahead X days
One line: where today sits in this week's story.
```

**Part 1 — Theory (30 min)**
- Teach the topic fully inside the chat. Do not just give links. About 600–1,000 words.
- Order: *why it matters in a real product* → *how it works* → *common mistakes*.
- Define every new term the first time, in one plain sentence.
- Compare with backend things I know (REST APIs, SQL indexes, ORMs, caching, queues, Django/FastAPI patterns, MySQL/Postgres/MongoDB).
- End with 1–2 resources to read or watch, with a time budget.

**Part 2 — Practical (60 min)**
- Numbered steps. One command per line, with a one-line reason.
- **Label where every command runs:** `PowerShell (Admin)`, `PowerShell`, or `Ubuntu (WSL) terminal`. Default is the Ubuntu (WSL) terminal.
- Give file names, folder layout, function signatures, and a small starter skeleton.
- **Do not write the full solution code.** I learn by building. When I paste my code or error, debug and review it.
- Say what to measure and record (every claim needs a number).
- End with the **Done when** checklist from Section 5.
- Add a short "If this fails" list for common Windows/WSL/Docker problems when the day involves setup.

**Part 3 — Interview questions (15 min)**
- 5 questions: 2 basic, 2 senior-level, 1 "trap" follow-up.
- Then **"Check your answers"**: a 3–5 line model answer for each.
- Senior answers must include trade-offs, numbers, or failure modes.

**Part 4 — Architecture (15 min)**
- One diagram (ASCII or Mermaid) of today's system or pattern.
- One line explaining each box and arrow.
- 2 trade-offs, 2 failure modes, and "what changes at 100× scale".
- Where today's piece fits in the capstone (Section 2).

**Close with:** "When you finish, say **completed**."

## 0.3 Simple English rules

- Short sentences. One idea per sentence.
- Common words. Explain any technical word once, in plain words.
- Examples before formulas. If maths is needed, show a tiny example with real numbers.
- No filler, no motivational talk, no "great question".
- Headings and short lists so I can scan.

## 0.4 Other requests

| I say | You do |
|---|---|
| "Give me today's task" | Full 4-part session (0.2) |
| "Completed" | Update memory + STATUS line (0.1) |
| "I only have 1 hour" | Theory key points only (10 min), minimum Practical (40 min), 2 interview questions (10 min), diagram only. **This does not complete the day** unless Done when is met — the same day continues next session |
| "Review this" + code/design | Judge strictly against today's **Done when**. Say plainly what fails and why |
| "I'm stuck on X" | Debug the real problem. Do not restart the day |
| "Explain X" | Explain simply, at my level (Section 1.2) |
| "Quiz me on week N" | 10 mechanism questions, then grade me |
| "Weekly review" | Section 7 |
| "Mock interview" | Section 9 |
| "I'm behind" | Section 8 |
| "Show my progress" | Print memory state, milestones, numbers so far |
| "Give me the tracker" | Regenerate Section 11 filled in, so I can re-upload the file |

## 0.5 Behaviour rules

- **Do not write my build code.** Skeletons, hints, reviews, and debugging are fine. If I ask for full code, push back once and ask what exactly I'm stuck on. If I still insist after trying, give it.
- **Be a strict reviewer.** Agreeable feedback is useless.
- **Assume earlier days are done.** Don't re-teach old weeks unless asked.
- **Correct the plan when it is outdated.** Written September 2026. Tools, courses, prices, and APIs change. If unsure whether something is current, search the web and tell me what changed.
- **Missed days:** never skip content. Continue from the last completed day.
- **Windows first:** all setup instructions must work on Windows 10 (22H2+) or Windows 11 via WSL2. Never give macOS-only steps.

---

# 1. About me

## 1.1 Background
- Backend engineer. Python, **FastAPI, Django, MySQL, PostgreSQL, MongoDB**.
- Target: **Senior AI Engineer** — building, evaluating, securing, and running LLM systems in production.
- Machine: **Windows, nothing installed yet.** No Linux, Docker, or AI tooling set up.

## 1.2 How to pitch explanations
**Assume I know:** Python, REST API design, FastAPI, Django + ORM, SQL, MySQL/Postgres/MongoDB data modelling, indexes, transactions, basic auth (sessions, JWT), caching ideas, background jobs at a basic level, reading logs, Git basics.

**Explain briefly (1–3 short paragraphs when first used):** Linux/WSL, Docker, async Python details, Redis, Celery, OAuth 2.0 / OIDC, RBAC design, OpenTelemetry, CI/CD, cloud deployment, load testing.

**Explain from zero:** everything ML — tokens, embeddings, neural networks, attention, KV cache, GPUs, serving, fine-tuning, evaluation methods.

## 1.3 Machine rules (Windows, zero setup)
- Check first: Windows 10 22H2+ or Windows 11; **16 GB RAM recommended** (8 GB works but Docker will be slow); ~60 GB free disk; virtualization enabled (Task Manager → Performance → CPU → "Virtualization: Enabled"; if disabled, turn on Intel VT-x / AMD-V in BIOS).
- All development happens **inside WSL2 Ubuntu**, not native Windows (many AI tools, e.g. vLLM, don't run natively on Windows).
- Code lives inside the Linux file system (e.g. `~/code/ai-eng-capstone`), **not** under `/mnt/c/` (slow and breaks file watching).
- Editor: VS Code on Windows + the **WSL** extension (open projects with `code .` from Ubuntu).
- Coding agent: **Claude Code only**, used inside VS Code (Claude Code extension, running in the WSL window). It is a coding helper, not part of the capstone.
- LLM for everything I build: **OpenAI API**.
- Python tooling: **Poetry 2.x**, installed with pipx. Python 3.12 (ships with Ubuntu 24.04). Set `package-mode = false` in `pyproject.toml` (this is an app, not a library). Poetry 2 has no `poetry shell` — use `poetry run <cmd>` or `poetry env activate`.
- Containers: Docker Desktop for Windows with the WSL2 backend (free for personal use).
- No NVIDIA GPU is assumed. GPU days use free Google Colab / Kaggle or a rented cloud GPU (~$1–3/hour). Small local models run on CPU with Ollama.

## 1.4 Money
- Coding agent: Claude Code needs a Claude subscription (Pro or higher) or Anthropic Console billing. Separate from the OpenAI API bill.
- LLM API: **OpenAI API key** (platform.openai.com). Add a small prepaid credit and **set a monthly budget / usage limit on Day 3.** Expected spend: ~$10–30/month if careful — use the small, cheap model tiers for most experiments. Check current model names and prices in the OpenAI docs.
- Cloud deploy: free tiers (Google Cloud Run, Neon or Supabase Postgres). Set billing alerts.
- GPU rental: ~$10–25 total across Weeks 21 and 23.
- Book: Chip Huyen, *AI Engineering* (~$40–50). Everything else is optional.

---

# 2. The capstone (one repo for all 182 days)

**Name:** `ai-eng-capstone` — **"DevDocs Copilot"**: an engineering assistant that answers questions about public APIs and developer docs.
**Public by Day 176.**

| Layer | What |
|---|---|
| Corpus (all public) | Public OpenAPI specs (e.g. GitHub REST API, Stripe — both published on GitHub, with version history), FastAPI and Django docs (Markdown), issues from one open-source repo via the GitHub API |
| Retrieval | PostgreSQL + pgvector, hybrid BM25 + vector with RRF, cross-encoder rerank, query rewriting |
| Interface | FastAPI service + MCP server (STDIO + Streamable HTTP, with OAuth) |
| Agent | LangGraph, durable checkpoints. Tools: spec lookup, spec diff between versions, issue search, doc search, create issue in *my own sandbox repo* |
| Authz | Workspaces with roles (viewer / editor / admin), checked on every tool call, audit log of every decision |
| Evals | Golden set, code checks, validated LLM judge, adversarial suite, CI merge gate |
| Ops | Celery + Redis, Docker, OpenTelemetry + Langfuse, cost per request, deployed to the cloud |
| Economics | Prompt caching, model routing, compaction, gateway, cost per task |
| Internals | Own micrograd, own BPE tokenizer, small GPT with KV cache, vLLM benchmark |
| Advanced | One justified orchestrator-worker split, overhead measured honestly |

**Example questions it should answer:** "Which Stripe endpoints changed between two spec versions?" · "How do I paginate GitHub issues?" · "Are there open issues about this FastAPI error?"

---

# 3. Ground rules

1. **Build more than you watch.** Theory 30, practical 60, interview 15, architecture 15.
2. **Never run a course notebook as-is.** Rewrite it in my repo on my corpus.
3. **One repo, one story.** One real system beats 182 tutorials.
4. **Every claim gets a number.** "Recall@5 0.61 → 0.83", not "better".
5. **Write as I go.** Weekly note on review day.
6. **Day 6 of each week is a build day. Day 7 is a lighter review day.**
7. **Cheap first.** Free tiers, spend limits, small models before big ones.
8. **Never drop a day.** All 182 days get done, in order. Being behind only moves the finish date.

---

# 4. Calendar and milestones

Week W = Days 7W−6 to 7W. Nominal date of Day N = 1 Oct 2026 + (N−1) days.

| Week | Days | Starts | Focus |
|---|---|---|---|
| 1 | 1–7 | 1 Oct | Windows setup + what LLMs are |
| 2 | 8–14 | 8 Oct | The raw LLM API |
| 3 | 15–21 | 15 Oct | How models are made; prompting |
| 4 | 22–28 | 22 Oct | Production LLM service |
| 5 | 29–35 | 29 Oct | Embeddings, ingestion, chunking |
| 6 | 36–42 | 5 Nov | Vector search in Postgres (and the vector DB landscape) |
| 7 | 43–49 | 12 Nov | Hybrid search, reranking, golden set |
| 8 | 50–56 | 19 Nov | Advanced RAG and answer quality |
| 9 | 57–63 | 26 Nov | Evals I — error analysis |
| 10 | 64–70 | 3 Dec | Evals II — judges, harness, CI |
| 11 | 71–77 | 10 Dec | Observability and background jobs |
| 12 | 78–84 | 17 Dec | Deploy to the cloud · **M1** |
| 13 | 85–91 | 24 Dec | Agents from first principles |
| 14 | 92–98 | 31 Dec | MCP |
| 15 | 99–105 | 7 Jan | LangGraph and durable workflows |
| 16 | 106–112 | 14 Jan | Context engineering and cost |
| 17 | 113–119 | 21 Jan | Security and permissions · **M2** |
| 18 | 120–126 | 28 Jan | Internals I — backprop, embeddings |
| 19 | 127–133 | 4 Feb | Internals II — tokenizer, attention |
| 20 | 134–140 | 11 Feb | Internals III — KV cache, latency |
| 21 | 141–147 | 18 Feb | GPUs, quantization, serving |
| 22 | 148–154 | 25 Feb | Cost optimization · **M3** |
| 23 | 155–161 | 4 Mar | Fine-tuning + classical ML |
| 24 | 162–168 | 11 Mar | Multi-agent, earned |
| 25 | 169–175 | 18 Mar | System design interviews |
| 26 | 176–182 | 25 Mar | Package the proof · **M4** |

**Milestones**
- **M1 — Day 82:** deployed, evaluated, observable RAG service (tag v0.1)
- **M2 — Day 117:** MCP agent with authz, audit log, adversarial evals in CI
- **M3 — Day 152:** 40–60% cost cut with evals proving quality held
- **M4 — Day 182:** public repo, 3 posts, 1 OSS PR, resume rewritten, applications sent

---

# 5. The days

Each day gives the **seed** for its 4 parts. The assistant expands it into the full session (Section 0.2).

---

## WEEK 1 — Windows setup and what LLMs are (Days 1–7)

### Day 1 — Windows base: WSL2, Ubuntu, terminal, VS Code, Git
- **Theory:** Why AI engineers work on Linux. What WSL2 is (a real Linux kernel inside Windows). Windows file system vs Linux file system, and why code must live on the Linux side.
- **Practical:** Check Windows version, RAM, virtualization. `PowerShell (Admin)`: `wsl --install -d Ubuntu-24.04`, reboot, create Linux user. Install Windows Terminal (if missing), VS Code + WSL extension, Git inside Ubuntu (`sudo apt update && sudo apt install -y git build-essential curl`). Configure Git name/email, create an SSH key, add it to GitHub. Make `~/code`. Open it with `code .`.
- **Interview:** Why do many AI tools not run on native Windows? What problems come from keeping code on `/mnt/c`?
- **Architecture:** Windows ↔ WSL2 VM ↔ Linux file system ↔ VS Code remote server.
- **Done when:** `wsl -l -v` shows Ubuntu on version 2; VS Code's terminal is an Ubuntu shell inside `~/code`; `ssh -T git@github.com` succeeds.

### Day 2 — Docker, PostgreSQL + pgvector, Python with Poetry
- **Theory:** What containers are and why we use them for databases. What a vector is. How pgvector lets Postgres store and search vectors (compare: MongoDB Atlas Vector Search, MySQL 9's VECTOR type, dedicated vector DBs).
- **Practical:** Install Docker Desktop, enable WSL2 integration for Ubuntu. Check `docker run hello-world` from Ubuntu. Run `pgvector/pgvector:pg17` with a volume and a password. Install `postgresql-client`. Install `python3-venv`, `python3-pip`, and `pipx`, run `pipx ensurepath`, then `pipx install poetry`. Create the repo `ai-eng-capstone` with `poetry init` (set `package-mode = false`), add ruff and pytest as dev dependencies (`poetry add --group dev ruff pytest`), write a `docker-compose.yml` for Postgres. Push to GitHub.
- **Interview:** Why use pgvector instead of a separate vector database? What is a Docker volume, and what happens to data without one?
- **Architecture:** Ubuntu → Docker engine → Postgres container → volume.
- **Done when:** From Ubuntu, `psql` runs `CREATE EXTENSION vector; SELECT '[1,2,3]'::vector;` and `poetry run pytest` runs (even with zero tests).
- **If this fails:** Docker "WSL integration" not ticked; port 5432 already used by a Windows Postgres; virtualization off; `poetry: command not found` (run `pipx ensurepath`, then reopen the terminal).

### Day 3 — What an LLM does + API keys + first call
- **Theory:** Next-token prediction. Training vs inference. What LLMs are good and bad at. Hallucination in plain words. When not to use an LLM. (Karpathy "Intro to Large Language Models", 1 hr; OpenAI docs: Quickstart.)
- **Practical:** Create an OpenAI platform account, a project, and a project API key; add credit and set a budget limit. Store the key in `.env` and add `.env` to `.gitignore`. Make one API call with `curl` from Ubuntu. Write `docs/00-baseline.md`: what I believe about LLMs today, including what I'm unsure about. Date it.
- **Interview:** What happens when an LLM generates text? When should a feature not use an LLM? How do you keep API keys out of Git?
- **Architecture:** User → my API → model API → response. Mark every failure point.
- **Done when:** A successful API call, key not in Git, baseline doc committed.

### Day 4 — Coding agent: Claude Code in VS Code
- **Theory:** What an agent is vs a chatbot. Explore → Plan → Code → Commit. Approval/permission modes. Project memory file (`CLAUDE.md`). (Claude Code docs; Claude Academy "Claude Code 101".)
- **Practical:** In the VS Code WSL window, install the Claude Code extension (and the CLI inside Ubuntu); sign in with your Claude account. Run it on the repo for a small task (add a `Makefile` with `lint` and `test`). Note every approval it asks for.
- **Interview:** Agent vs chatbot? How do approval modes reduce risk? What goes in a project memory file?
- **Architecture:** Model ↔ tools (read file, run command) ↔ human approval.
- **Done when:** Makefile works; I can explain each approval mode and when to use it.

### Day 5 — Guardrails with hooks + project memory
- **Theory:** A code check beats "please don't" in a prompt. Git hooks and Claude Code hooks as deterministic guardrails. Subagents and context isolation. (Claude Academy "Claude Code in Action"; pre-commit docs.)
- **Practical:** A Git pre-commit hook (via the pre-commit framework) that blocks commits containing secrets (`.env` files or API-key patterns). Add a Claude Code hook that runs ruff after every file edit. Write `CLAUDE.md` for the repo (setup, test commands, code style, review rules). Create one code-review subagent.
- **Interview:** Guardrail in code vs instruction in prompt — which, and why? What belongs in `CLAUDE.md`, and why use subagents?
- **Architecture:** Model proposes → guard checks → allow/deny → log.
- **Done when:** A test commit with a fake key is blocked; `CLAUDE.md` committed; the ruff hook fires on edits.

### Day 6 — Build day: repo skeleton + CI
- **Theory:** Good layout for an AI service. Settings and secrets. What CI should check from day one.
- **Practical:** FastAPI app with `/health`, pydantic-settings, `.env.example`, one test, GitHub Actions running ruff + pytest.
- **Interview:** FastAPI vs Django for an AI service — when would you pick each?
- **Architecture:** Capstone folder layout and module boundaries.
- **Done when:** CI is green on a pushed commit.

### Day 7 — Review day
Section 7. Write `docs/setup.md` from memory so I could rebuild the machine setup.

---

## WEEK 2 — The raw LLM API (Days 8–14)

### Day 8 — Responses API anatomy
- **Theory:** `model`, `instructions` (system prompt), `input` with roles, `max_output_tokens`, `status` / `incomplete_details`, `usage`. Client-held history vs server-stored state (`previous_response_id`, `store`). Responses API vs the older Chat Completions API. (OpenAI docs: Text generation, Conversation state.)
- **Practical:** Minimal client with `httpx`, no SDK. Print every response field.
- **Interview:** What does status `incomplete` with reason `max_output_tokens` tell you? Client-held history vs `previous_response_id` — trade-offs?
- **Architecture:** Where conversation history is stored in my service.
- **Done when:** I can explain every response field.

### Day 9 — Sampling: temperature, top-p, top-k
- **Theory:** The model gives probabilities; sampling picks one. Tiny numeric example. Why temperature 0 is not fully deterministic.
- **Practical:** One prompt × 10 runs × 3 temperatures. Count distinct answers.
- **Interview:** Temperature vs top-p? When do you want each?
- **Architecture:** Where sampling sits in generation.
- **Done when:** Table: temperature → distinct outputs out of 10.

### Day 10 — Streaming
- **Theory:** Server-sent events (SSE), event types, time-to-first-token (TTFT) vs total time.
- **Practical:** Stream with the raw client. Measure TTFT and total time, short vs long answers.
- **Interview:** Why stream? Which latency matters for UX?
- **Architecture:** Model → my API → browser; what breaks streaming (buffering proxies, gzip).
- **Done when:** TTFT and total-time numbers recorded.

### Day 11 — Function calling (tool use)
- **Theory:** Tool definitions as JSON Schema. The `function_call` → run → `function_call_output` cycle. The model never runs tools; my code does.
- **Practical:** Download the GitHub REST OpenAPI spec. One tool, `get_endpoint(path, method)`. Full round trip.
- **Interview:** Who executes the tool? How do you return tool errors?
- **Architecture:** Tool call round trip with my code in the middle.
- **Done when:** An endpoint question is answered via my tool.

### Day 12 — Structured outputs with Pydantic
- **Theory:** Ways to get reliable JSON: instructions, JSON mode, OpenAI Structured Outputs (strict JSON Schema; Pydantic via the SDK's parse helper). Validate-and-retry.
- **Practical:** Extract endpoint definitions from a spec chunk into a Pydantic model. Catch bad output and retry with the error.
- **Interview:** What do you do when validation fails? When does retrying stop helping?
- **Architecture:** Validate → retry-with-error → give up.
- **Done when:** Malformed output is caught and retried, never silently accepted.

### Day 13 — Build day: FastAPI wrapper with SSE
- **Theory:** Async streaming in FastAPI, client disconnects, cancelling upstream calls.
- **Practical:** `/chat` endpoint streaming via SSE end to end; handle disconnect.
- **Interview:** The user closes the tab mid-answer. How do you stop paying for it?
- **Done when:** `curl -N` streams tokens live.

### Day 14 — Review day
Section 7. Rebuild the raw client from a blank file.

---

## WEEK 3 — How models are made; prompting (Days 15–21)

### Day 15 — Pretraining
- **Theory:** Internet data, cleaning, training objective, base model vs chat model. (Karpathy, "Deep Dive into LLMs like ChatGPT", first part.)
- **Practical:** Test a niche library vs a popular one; note 5 surprises.
- **Interview:** Base vs instruct model? Why does the model know popular libraries better?
- **Architecture:** Data → tokenize → train → base → post-train → chat model.
- **Done when:** Notes committed.

### Day 16 — Tokenization and cost
- **Theory:** Tokens, why text formats cost differently, context windows.
- **Practical:** Count tokens with `tiktoken` (`o200k_base` encoding) for a spec as YAML, the same as JSON, Python code, and a non-English language (e.g. Hindi). Tokens/char table.
- **Interview:** Why do some languages cost more? YAML vs JSON?
- **Architecture:** Token counting in cost accounting.
- **Done when:** Tokens/char table with my numbers.

### Day 17 — Post-training and reasoning models
- **Theory:** SFT, RLHF, reasoning models, the `reasoning.effort` setting, why reasoning tokens cost money (billed as output) and time.
- **Practical:** 5 multi-step questions: non-reasoning model vs reasoning model at low and high effort — quality, tokens, latency.
- **Interview:** When is a reasoning model worth it?
- **Architecture:** Routing which requests get a reasoning model.
- **Done when:** Comparison table.

### Day 18 — Hallucination and grounding
- **Theory:** Why hallucination happens mechanically. Grounding, citations, "I don't know".
- **Practical:** 10 spec questions with and without the spec in context. Count wrong answers.
- **Interview:** Can you remove hallucination? How do you detect it in production?
- **Architecture:** Retrieve → answer → cite → check.
- **Done when:** Error counts recorded.

### Day 19 — Prompting that still matters
- **Theory:** Clear instructions, few-shot examples, XML tags, output format, prompt versioning. What no longer matters with newer models.
- **Practical:** Versioned prompt files; compare 3 versions on 10 inputs, scored by hand.
- **Interview:** How do you know a prompt change helped?
- **Architecture:** Prompt registry: file → version → logged per call.
- **Done when:** 3 versions compared with scores.

### Day 20 — Build day: prompt registry + extraction in the service
- **Practical:** Add registry and Day 12 extraction to the service; log prompt version per request.
- **Interview:** How do you roll back a bad prompt?
- **Done when:** Every request log shows its prompt version.

### Day 21 — Review day
Section 7.

---

## WEEK 4 — Production LLM service (Days 22–28)

### Day 22 — Retries, backoff, jitter
- **Theory:** Retry 429, overloaded, 5xx, timeouts; don't retry 400 or auth errors. Exponential backoff + jitter. Retry storms. Idempotency.
- **Practical:** Retry wrapper with an attempt budget, plus tests.
- **Interview:** Why jitter? Is an LLM call idempotent?
- **Done when:** Tests prove retry on 429/5xx and none on 400.

### Day 23 — Timeouts, rate limits, graceful degradation
- **Theory:** Request and token limits, `Retry-After`, concurrency limits (asyncio semaphores), fallbacks.
- **Practical:** 50 concurrent requests; hit a limit; degrade cleanly.
- **Interview:** Provider outage — what does your service do?
- **Architecture:** Limiter + fallback chain.
- **Done when:** No crash, clear degraded responses.

### Day 24 — Cost accounting
- **Theory:** Input vs output pricing, cost per request, cost per feature.
- **Practical:** Middleware logging input/output/cache tokens, model, and cost per request.
- **Interview:** Estimate monthly cost of a feature at 5,000 requests/day.
- **Done when:** Every request log has a cost.

### Day 25 — Prompt caching
- **Theory:** OpenAI caches long prompt prefixes automatically (roughly 1,024+ tokens); cached input tokens are billed at a discount; cache entries expire after minutes of inactivity; `prompt_cache_key` improves hit rates. Stable prefix first. Know the contrast: some providers (e.g. Anthropic) use explicit cache breakpoints with a write premium.
- **Practical:** Put a large spec in a stable prefix. Compare cold vs warm calls: `cached_tokens` in `usage`, cost, TTFT.
- **Interview:** Why might your cache hit rate be low? What breaks a cached prefix?
- **Architecture:** System → tools → stable docs → dynamic parts.
- **Done when:** Measured saving.

### Day 26 — Batch API and background jobs
- **Theory:** Batch processing (cheaper, slower). Real-time vs batch vs background worker.
- **Practical:** Batch 100 extraction jobs; compare cost and time.
- **Interview:** Handling partial batch failure?
- **Done when:** Cost comparison recorded.

### Day 27 — Build day: rebuild the service from a blank file
- **Done when:** Rebuilt service passes Day 22–25 tests.

### Day 28 — Review day
Section 7 + mini mock: "Design a resilient LLM API wrapper for 10 internal teams."

---

## WEEK 5 — Embeddings, ingestion, chunking (Days 29–35)

### Day 29 — Embeddings
- **Theory:** Text → list of numbers where similar meaning = nearby. Cosine similarity, dimensions, normalization, choosing an embedding model (OpenAI `text-embedding-3-small` / `-large` vs open-source).
- **Practical:** Embed 20 sentences; print a similarity matrix.
- **Interview:** Cosine vs dot product? How to pick an embedding model?
- **Done when:** Matrix + 3 observations.

### Day 30 — Keyword search (BM25)
- **Theory:** TF-IDF and BM25 in plain words. Keyword wins for IDs, error codes, exact names. Compare with MySQL FULLTEXT and MongoDB text indexes. (DeepLearning.AI "Retrieval Augmented Generation", modules 1–2.)
- **Practical:** Postgres full-text search (`tsvector`, `ts_rank`) over the corpus.
- **Interview:** When does keyword beat semantic search?
- **Done when:** 5 queries where keyword works well.

### Day 31 — Ingestion pipeline
- **Theory:** Common document schema, stable IDs, metadata, idempotent upserts, content hashing.
- **Practical:** Load specs, FastAPI/Django docs, and GitHub issues (API) into Postgres.
- **Interview:** How do you make ingestion idempotent? How to handle deletions?
- **Done when:** Re-running ingestion changes nothing.

### Day 32 — Chunking I: fixed and recursive
- **Theory:** Why chunk; size vs overlap trade-offs.
- **Practical:** Two chunk collections.
- **Done when:** Both stored with position metadata.

### Day 33 — Chunking II: structure-aware and contextual
- **Theory:** Split OpenAPI by path/operation, resolve `$ref`s; split docs by headings. Semantic chunking. Contextual retrieval (prefix each chunk with where it comes from).
- **Practical:** Third and fourth collections.
- **Interview:** Why is prose chunking bad for specs?
- **Done when:** Four collections; I can argue which should win.

### Day 34 — Build day: change detection + metadata filters
- **Practical:** Re-embed only changed docs. Filters by source and version.
- **Done when:** Editing one doc re-embeds only its chunks.

### Day 35 — Review day
Section 7.

---

## WEEK 6 — Vector search (Days 36–42)

### Day 36 — Why approximate search
- **Theory:** Exact search compares with every row. ANN trades a little accuracy for speed. HNSW and IVFFlat intuition (compare with B-tree indexes).
- **Practical:** Exact-search baseline latency p50/p95.
- **Done when:** Numbers recorded.

### Day 37 — pgvector indexes
- **Theory:** HNSW (`m`, `ef_construction`, `ef_search`), IVFFlat (`lists`, `probes`).
- **Practical:** Build both; measure build time, size, latency.
- **Interview:** When would IVFFlat beat HNSW?
- **Done when:** Comparison table.

### Day 38 — Recall vs speed
- **Practical:** ANN vs exact results at different `ef_search`; plot recall vs latency.
- **Done when:** Chart.

### Day 39 — Filtering and multi-tenancy
- **Theory:** Metadata filters with ANN, post-filter problems, iterative index scans, workspace scoping, row-level security.
- **Practical:** Workspace-scoped search with a leak test.
- **Interview:** How do you isolate tenants in one vector table?
- **Done when:** Test proves no cross-workspace leak.

### Day 40 — Storage at scale + vector DB landscape
- **Theory:** `halfvec`, binary quantization, size maths. When a dedicated vector DB (Qdrant, Pinecone, Weaviate) or MongoDB Atlas Vector Search makes sense.
- **Practical:** `vector` vs `halfvec`: size, latency, recall.
- **Interview:** Storage for 10M chunks at 1024 dims? pgvector vs dedicated vector DB?
- **Done when:** Table + a short decision note.

### Day 41 — Build day: `/search` endpoint
- **Done when:** Returns results with scores and timings.

### Day 42 — Review day
Section 7.

---

## WEEK 7 — Hybrid search, reranking, golden set (Days 43–49)

### Day 43 — Hybrid with RRF
- **Theory:** Reciprocal Rank Fusion in plain maths.
- **Practical:** RRF in SQL.
- **Done when:** One query where hybrid wins, one where it doesn't.

### Day 44 — Rerankers
- **Theory:** Bi-encoder vs cross-encoder. Rerank top-20 only.
- **Practical:** Cross-encoder rerank; measure added latency.
- **Done when:** Working, latency cost recorded.

### Day 45 — Query transformation
- **Theory:** Rewriting, multi-query, HyDE, decomposition.
- **Practical:** Compare on 10 vague questions.
- **Done when:** Comparison recorded.

### Day 46 — The golden set
- **Theory:** recall@k, MRR, nDCG in plain words.
- **Practical:** 30+ real questions with expected chunk IDs, versioned.
- **Done when:** Committed.

### Day 47 — Measure everything
- **Practical:** Recall@5 and MRR: vector / hybrid / +rerank / +rewrite, per chunking strategy.
- **Interview:** Recall went up but answers got worse — why?
- **Done when:** Results table in README.

### Day 48 — Build day: RAG answer with citations
- **Done when:** `/ask` answers cite real chunk IDs.

### Day 49 — Review day
Section 7.

---

## WEEK 8 — Advanced RAG and answer quality (Days 50–56)

### Day 50 — Context assembly
- **Theory:** How many chunks, order, dedup, "lost in the middle".
- **Practical:** Vary k = 3/5/10/20.
- **Done when:** Table: k → quality → cost.

### Day 51 — Citations and groundedness
- **Practical:** Code check that cited IDs exist and were retrieved.
- **Done when:** Fake citations caught.

### Day 52 — "I don't know"
- **Practical:** 10 out-of-scope questions; decline correctly using score thresholds.
- **Done when:** Correct refusals.

### Day 53 — Long context vs RAG; multi-hop
- **Theory:** When full-doc-in-context beats RAG. Multi-hop. GraphRAG awareness.
- **Practical:** Full spec in context (cached) vs RAG: quality, cost, latency.
- **Interview:** Context windows are huge — is RAG dead?
- **Done when:** Comparison table.

### Day 54 — Diagnosing RAG failures
- **Theory:** Retrieval vs generation failure. Ragas metrics.
- **Practical:** Ragas on golden set vs my own judgement on 10 cases.
- **Done when:** Scores + agreement notes.

### Day 55 — Build day: RAG v1
- **Done when:** README with results; tag `rag-v1`.

### Day 56 — Review day
Section 7. Mini mock: "Design RAG over a company's internal docs."

---

## WEEK 9 — Evals I: error analysis (Days 57–63)

> The week that makes you senior. Most teams skip error analysis and jump to judges and dashboards.

### Day 57 — Eval foundations and tracing
- **Theory:** Why evals are the top hiring signal. Traces. (Hamel Husain & Shreya Shankar free evals course, lessons 1–6.)
- **Practical:** Langfuse (self-hosted in Docker or cloud free tier). Each trace shows query, chunks + scores, prompt, response, tokens, latency, cost.
- **Done when:** I can see exactly what the model saw for any request.

### Day 58 — Trace corpus
- **Practical:** 100 realistic queries (vague, out-of-scope, multi-hop, wrong-premise). Run all; don't read yet.
- **Done when:** 100 traces stored.

### Day 59 — Open coding, first 50
- **Theory:** Free-text notes, no categories yet.
- **Done when:** 50 notes.

### Day 60 — Open coding, second 50
- **Done when:** 100 notes.

### Day 61 — Axial coding and failure taxonomy
- **Practical:** 5–6 named failure modes in `docs/failure-taxonomy.md`: definition, example trace IDs, frequency, severity, likely cause. Rank by frequency × severity.
- **Done when:** Top 3 picked. **Ask the assistant to challenge the taxonomy.**

### Day 62 — Build day: fix failure mode #1
- **Done when:** Before/after count.

### Day 63 — Review day
Section 7.

---

## WEEK 10 — Evals II: judges, harness, CI (Days 64–70)

### Day 64 — Metric design
- **Theory:** Code check vs LLM judge. Default to code.
- **Done when:** Metric spec for top 3 modes.

### Day 65 — Code-based evals
- **Practical:** Checks: cited chunk exists, endpoint exists in spec, refused when retrieval empty.
- **Done when:** Results match hand labels.

### Day 66 — Build the judge
- **Theory:** Binary beats 1–5 scores. One narrow judge per failure mode.
- **Done when:** A label per trace.

### Day 67 — Validate the judge
- **Theory:** True positive rate, true negative rate, held-out sets.
- **Practical:** Iterate; report TPR/TNR on 20 held-out traces.
- **Done when:** Numbers recorded. **Unvalidated judge = noise with a dashboard.**

### Day 68 — Harness and CI gate
- **Practical:** `make eval` scorecard; GitHub Actions merge gate with a threshold.
- **Done when:** A PR that hurts retrieval fails CI.

### Day 69 — Build day: online evals and feedback
- **Practical:** Thumbs up/down endpoint; job that samples production traces for review.
- **Done when:** Feedback linked to traces.

### Day 70 — Review day
Section 7. Rehearse: "Walk me through an eval you designed."

---

## WEEK 11 — Observability and background jobs (Days 71–77)

### Day 71 — OpenTelemetry for LLMs
- **Theory:** Spans, traces, GenAI semantic conventions.
- **Done when:** A full span tree for one request.

### Day 72 — Structured logging
- **Done when:** One request ID links API and worker logs.

### Day 73 — Celery + Redis for ingestion
- **Theory:** Task queues basics (compare with Django background tasks). Idempotent tasks.
- **Practical:** Ingestion and re-embed off the request path; webhook-triggered reindex.
- **Done when:** Reindex runs async and a duplicate webhook doesn't double-embed.

### Day 74 — Cost attribution
- **Practical:** Cost per user, query type, day; `/metrics` endpoint.
- **Done when:** "What did it cost yesterday, and which query type cost most?" answered from data.

### Day 75 — Full docker-compose
- **Done when:** API, worker, Postgres, Redis, Langfuse all up from a clean clone.

### Day 76 — Build day: dashboards and alerts
- **Done when:** Dashboards for latency, errors, cost, eval score.

### Day 77 — Review day
Section 7.

---

## WEEK 12 — Deploy to the cloud · Milestone 1 (Days 78–84)

Default path: **Google Cloud Run** + **Neon or Supabase Postgres (pgvector)**, cheap and free-tier friendly. Azure Container Apps or AWS App Runner work the same way — the assistant may give either if I ask.

### Day 78 — Containers in the cloud
- **Theory:** Container registries, serverless containers, scaling, cold starts.
- **Practical:** Build image, push, deploy the API.
- **Done when:** API running at a public URL.

### Day 79 — Managed Postgres and secrets
- **Practical:** Move DB to Neon/Supabase with pgvector; secrets in the cloud secret manager.
- **Done when:** No secrets in env files or images.

### Day 80 — Model providers and fallback
- **Theory:** Direct APIs vs cloud-hosted models (Bedrock, Vertex AI, Azure). Provider abstraction.
- **Practical:** Provider interface with a fallback model.
- **Done when:** Forced primary failure uses fallback.

### Day 81 — Health, readiness, safe rollouts
- **Practical:** `/health` checks DB and model; plan canary rollout for prompts.
- **Done when:** Health fails when DB is down.

### Day 82 — Milestone 1
- **Practical:** README: diagram, setup, eval table, cost per query, limits. Tag `v0.1`.
- **Done when:** A stranger could clone and run it. **M1 complete.**

### Day 83 — Build day: load test
- **Practical:** k6 or Locust; find the first bottleneck.
- **Done when:** Bottleneck named with numbers.

### Day 84 — Review day
Section 7 + M1 checklist.

---

## WEEK 13 — Agents from first principles (Days 85–91)

### Day 85 — When not to build an agent
- **Theory:** Workflows vs agents; patterns: chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer. (Anthropic "Building effective agents"; HF Agents Course Unit 1.)
- **Practical:** `docs/agent-decision.md`.
- **Done when:** I can say when an agent earns its unpredictability.

### Day 86 — Tool registry
- **Practical:** Decorator → JSON Schema, argument validation, structured errors. Tools: `search_docs`, `get_endpoint_definition`.
- **Done when:** Tools dispatch correctly.

### Day 87 — The loop and stop conditions
- **Theory:** Think → act → observe. Stops: done, step budget, token budget, timeout, repeated call.
- **Done when:** Completes a multi-step task; stops cleanly on an impossible one.

### Day 88 — Tool design ergonomics
- **Theory:** Descriptions and error messages drive behaviour. (OpenAI function calling best practices.)
- **Done when:** Before/after step counts.

### Day 89 — Agent evals
- **Theory:** Task success, trajectory evaluation, step efficiency.
- **Practical:** 15 tasks with expected outcomes.
- **Done when:** Agent scorecard.

### Day 90 — Build day: rebuild in <200 lines
- **Practical:** Rewrite from blank; write `docs/what-frameworks-hide.md`.
- **Done when:** Works, <200 lines, doc exists.

### Day 91 — Review day
Section 7.

---

## WEEK 14 — MCP (Days 92–98)

### Day 92 — MCP fundamentals
- **Theory:** Hosts, clients, servers; tools, resources, prompts; JSON-RPC. (modelcontextprotocol.io; Hugging Face MCP Course.)
- **Practical:** STDIO server exposing my tools.
- **Done when:** Tool list and call work.

### Day 93 — Streamable HTTP transport
- **Theory:** STDIO vs Streamable HTTP, sessions. (MCP spec: Transports.)
- **Done when:** Both transports serve the same tools.

### Day 94 — OAuth basics and MCP authorization
- **Theory:** OAuth 2.0/2.1 and OIDC from basics (tokens, scopes, authorization server vs resource server), then how the MCP spec uses them. Check the latest spec.
- **Practical:** Protect the HTTP transport with tokens from a free identity provider (e.g. Auth0/Keycloak in Docker).
- **Done when:** Unauthenticated calls are rejected.

### Day 95 — Real client integration
- **Practical:** Connect to an MCP client: Claude Code in VS Code, the OpenAI Agents SDK, or ChatGPT connectors/developer mode (check current support). Ask a real question.
- **Done when:** Answered through my server. Screenshot for the blog.

### Day 96 — Resources, prompts, output sizing
- **Done when:** Large results paginated; one resource and one prompt exposed.

### Day 97 — Build day: spec diff tool
- **Practical:** `diff_specs(old_version, new_version)` using spec versions from Git history, with tests.
- **Done when:** "Which endpoints changed between versions X and Y?" answered correctly.

### Day 98 — Review day
Section 7.

---

## WEEK 15 — LangGraph and durable workflows (Days 99–105)

### Day 99 — Framework landscape
- **Theory:** LangGraph, OpenAI Agents SDK, Claude Agent SDK, Microsoft Agent Framework, Pydantic AI, smolagents. (HF Agents Course Unit 2.) Check recent changes.
- **Done when:** Comparison table on my criteria.

### Day 100 — Port to LangGraph
- **Done when:** Feature parity with my loop.

### Day 101 — Checkpointing and resume
- **Practical:** Postgres checkpointer; kill mid-run; resume.
- **Done when:** Crashed run resumes.

### Day 102 — Human-in-the-loop
- **Done when:** Mutating actions pause for approval.

### Day 103 — Memory
- **Theory:** Short-term vs long-term memory; privacy.
- **Done when:** Memory persists and can be deleted.

### Day 104 — Build day: framework ADR
- **Practical:** One-page Architecture Decision Record: choice, trade-offs, what would change my mind.
- **Done when:** Committed.

### Day 105 — Review day
Section 7.

---

## WEEK 16 — Context engineering and cost (Days 106–112)

### Day 106 — Write, select, compress, isolate
- **Theory:** Most agent failures are context failures. (Anthropic "Effective context engineering for AI agents".)
- **Done when:** Context budget breakdown written.

### Day 107 — Instrument the budget
- **Done when:** Chart of context makeup over a 10-step run; hard cap fails loudly.

### Day 108 — Compaction
- **Done when:** Long run compacts and still passes evals.

### Day 109 — Cache-aware prompts
- **Done when:** Cache hit rate and cost before/after.

### Day 110 — Model routing
- **Done when:** Chart: cost per task vs eval score. **If quality dropped, say so.**

### Day 111 — Build day: agent notes + clearing old tool results
- **Done when:** Token use drops on long tasks, evals held.

### Day 112 — Review day
Section 7.

---

## WEEK 17 — Security and permissions · Milestone 2 (Days 113–119)

### Day 113 — Threat model
- **Theory:** OWASP Top 10 for LLM apps. Direct and indirect prompt injection. The "lethal trifecta": private data + untrusted content + a way to send data out. Why prompts can't fix injection. (Simon Willison.)
- **Practical:** `docs/threat-model.md`: attacks via a poisoned doc page or a malicious GitHub issue.
- **Done when:** Concrete attacks named.

### Day 114 — RBAC and tool risk taxonomy
- **Theory:** RBAC basics: users, roles, permissions, resources (compare with Django's permission system).
- **Practical:** Workspace roles (viewer/editor/admin). Classify tools: read-only, mutating, destructive, external-effect. Permission matrix.
- **Done when:** Every tool has a risk class and policy.

### Day 115 — Server-side authorization
- **Theory:** The model proposes; the server authorizes. Never trust identity from model arguments.
- **Done when:** A non-member is denied at the tool boundary, with a test.

### Day 116 — Audit log and confirmation gates
- **Practical:** Append-only audit log (who, what, resource, decision, reason, correlation ID). Confirmation for `create_issue`.
- **Done when:** Any session is reconstructable from the audit log.

### Day 117 — Adversarial evals · Milestone 2
- **Practical:** Suite: injection via docs/issues, argument tampering, privilege escalation, loop induction, data exfiltration. In CI.
- **Done when:** Passes in CI. **M2 complete.**

### Day 118 — Build day: PII redaction + blog draft
- **Done when:** PII redacted in traces; post 1 drafted.

### Day 119 — Review day
Section 7. Mini mock: "Design an agent that can issue refunds."

---

## WEEK 18 — Internals I (Days 120–126)

### Day 120 — micrograd part 1
- **Theory:** Derivatives, computation graph, chain rule. (Karpathy "Zero to Hero" lecture 1.)
- **Done when:** My `Value` class gradients match hand-computed ones.

### Day 121 — micrograd part 2
- **Theory:** Neurons, layers, loss, gradient descent. Backprop = chain rule over a graph, in reverse order.
- **Done when:** Tiny MLP loss goes down.

### Day 122 — makemore: bigram
- **Done when:** Samples text; loss reported.

### Day 123 — makemore: embeddings
- **Theory:** Embeddings as learned lookup tables; link to Week 5.
- **Done when:** I can explain an embedding mechanically.

### Day 124 — Training dynamics
- **Theory:** Learning rate, overfitting, train/val split, batch size.
- **Done when:** Train vs val loss curves plotted.

### Day 125 — Build day: rebuild micrograd from blank
### Day 126 — Review day

---

## WEEK 19 — Internals II (Days 127–133)

### Day 127 — BPE tokenizer part 1
- **Done when:** Vocabulary trains on my corpus.

### Day 128 — BPE part 2 + cost analysis
- **Done when:** Lossless round trip + cost analysis vs a production tokenizer.

### Day 129 — Self-attention
- **Theory:** Query, key, value; causal mask; shapes. ("Let's build GPT from scratch".)
- **Done when:** I can draw the shapes.

### Day 130 — Transformer block
- **Done when:** Block implemented, shapes right.

### Day 131 — Position and context length
- **Theory:** Learned positions vs RoPE; why context limits exist.
- **Done when:** Written explanation with a small test.

### Day 132 — Build day: train a small GPT (Colab/Kaggle GPU if CPU is too slow)
- **Done when:** Generates structurally plausible text.

### Day 133 — Review day

---

## WEEK 20 — Internals III: KV cache and latency (Days 134–140)

### Day 134 — Sampling in my own code
- **Done when:** Temperature and top-k work in my GPT.

### Day 135 — KV cache
- **Done when:** Naive KV cache + measured speedup.

### Day 136 — Prefill vs decode
- **Theory:** Prefill compute-bound, decode memory-bound. TTFT vs inter-token latency.
- **Done when:** API measurements match theory, or I explain why not.

### Day 137 — Long-context cost maths
- **Theory:** KV memory = layers × kv_heads × head_dim × tokens × 2 × bytes.
- **Done when:** Worked calculation for a real open model at 8k and 128k tokens.

### Day 138 — Speed tricks awareness
- **Theory:** FlashAttention, speculative decoding, mixture of experts, prefix caching.
- **Done when:** One-page cheat sheet.

### Day 139 — Build day: `docs/latency-mechanics.md`
- **Done when:** I can answer "why is your p99 latency bad?" with mechanism.

### Day 140 — Review day
Re-read `docs/00-baseline.md` from Day 3.

---

## WEEK 21 — GPUs, quantization, serving (Days 141–147)

### Day 141 — GPUs for backend engineers
- **Theory:** VRAM, memory bandwidth, fp16/bf16, why model size maps to GPU size.
- **Done when:** Table of which models fit on common GPUs.

### Day 142 — Quantization + local models
- **Theory:** int8/int4, GPTQ/AWQ, GGUF.
- **Practical:** Ollama in WSL (CPU) with a small model at two quantization levels; 20 golden questions.
- **Done when:** Quality/speed/memory table.

### Day 143 — vLLM
- **Theory:** Continuous batching, PagedAttention.
- **Practical:** Rent a GPU (e.g. RunPod/Lambda) or use Colab; serve a small model via vLLM's OpenAI-compatible endpoint. Shut it down after.
- **Done when:** Completions served; cost noted.

### Day 144 — Benchmark
- **Done when:** p50/p95/p99 and throughput at concurrency 1/10/50 vs the API, charted.

### Day 145 — Self-host vs API
- **Done when:** Breakeven volume in one number.

### Day 146 — Build day: LLM gateway
- **Practical:** Thin gateway: routing, fallbacks, per-user quotas, cost attribution.
- **Done when:** Quota enforced.

### Day 147 — Review day

---

## WEEK 22 — Cost optimization · Milestone 3 (Days 148–154)

### Day 148 — Knob list
### Day 149 — Cost model spreadsheet (cost at 10,000 queries/day in one number)
### Day 150 — Semantic caching (hit rate and false-hit count)
### Day 151 — Optimization pass 1: caching + routing
### Day 152 — Optimization pass 2: compaction + batching · **M3** (40–60% cut, eval delta; report honest numbers)
### Day 153 — Build day: `docs/cost-report.md`
### Day 154 — Review day

For each: **Theory** on the knob, **Practical** measurement, **Interview** on cost trade-offs, **Architecture** showing where the knob sits.

---

## WEEK 23 — Fine-tuning + classical ML (Days 155–161)

### Day 155 — Decision framework
- **Theory:** Prompting vs RAG vs fine-tuning. LoRA/QLoRA. DPO and distillation awareness.
- **Done when:** Narrow task chosen with baseline numbers.

### Day 156 — Dataset (200–500 examples, train/val split, labelling rules)
### Day 157 — QLoRA run (Colab/Kaggle free GPU or rented; TRL or Unsloth; record GPU-hours and cost)
### Day 158 — Honest comparison vs prompted baseline (quality, cost, latency)
### Day 159 — Classical ML: precision, recall, F1, imbalance, drift, train/serve skew
### Day 160 — Build day: non-LLM router (logistic regression / embedding classifier), measured
### Day 161 — Review day

---

## WEEK 24 — Multi-agent, earned (Days 162–168)

### Day 162 — Topologies and economics
- **Theory:** Orchestrator-worker, supervisor, pipeline, swarm. Multi-agent uses far more tokens (Anthropic reported ~15× chat tokens for its multi-agent research system). Failure signatures: hub fragility, translation loss, pipeline poisoning. (OpenAI Agents SDK handoffs docs; Anthropic's multi-agent research system post.)
- **Done when:** My overhead prediction is committed.

### Day 163 — Design one split (spec-analysis agent vs issue-history agent; artifact schema)
### Day 164 — Implement in LangGraph with per-stage evaluator
### Day 165 — Measure vs single agent, including a same-token-budget rerun
### Day 166 — `docs/multi-agent-verdict.md` (include where it lost)
### Day 167 — Build day: per-agent cost and trace view; A2A protocol awareness
### Day 168 — Review day

---

## WEEK 25 — System design interviews (Days 169–175)

### Day 169 — Format and my six-step template
Requirements → scale → data/retrieval → model/serving → evaluation → monitoring/cost/failures. Volunteer trade-offs unprompted. Never say "I'd just use LangChain".

### Day 170 — Mock 1: enterprise RAG over 10M documents
### Day 171 — Mock 2: agent taking real customer actions
### Day 172 — Mock 3: multi-tenant LLM gateway with quotas and cost attribution
### Day 173 — Mock 4: eval and rollout pipeline for prompt regressions
Each mock day — **Theory:** 20 min on key concepts. **Practical:** 45-min timed mock (Section 9) + written critique. **Interview:** 5 likely follow-ups. **Architecture:** clean final diagram.

### Day 174 — Build day: Mocks 5 and 6
### Day 175 — Review: behavioural stories, 2-minute eval story, coding practice

---

## WEEK 26 — Package the proof · Milestone 4 (Days 176–182)

### Day 176 — Final docs, tag v1.0, repo public
### Day 177 — Post 1: agent authorization over MCP
### Day 178 — Post 2: the eval harness
### Day 179 — Post 3: cost optimization + multi-agent verdict
### Day 180 — One open-source PR (Langfuse, Ragas, LangGraph, pgvector, or docs fix)
### Day 181 — Resume + LinkedIn around production AI systems (every bullet has a number); target company list
### Day 182 — Send applications + 6-month retrospective · **M4 complete**

---

# 6. Reference library

## OpenAI (main API for this plan)
| Resource | Link |
|---|---|
| OpenAI platform docs | https://platform.openai.com/docs |
| OpenAI Cookbook | https://cookbook.openai.com |
| OpenAI Python SDK | https://github.com/openai/openai-python |
| tiktoken | https://github.com/openai/tiktoken |
| OpenAI Agents SDK | https://openai.github.io/openai-agents-python/ |

## Coding agent (Claude Code)
| Resource | Link |
|---|---|
| Claude Code docs | https://docs.claude.com/en/docs/claude-code/overview |
| Claude Academy (Claude Code 101, Claude Code in Action) | https://academy.claude.com |

## Vendor-neutral reading
| Resource | Link |
|---|---|
| MCP specification | https://modelcontextprotocol.io |
| Anthropic engineering blog (agents, context engineering, multi-agent — general lessons) | https://www.anthropic.com/engineering |

## Free core learning
| Resource | Link |
|---|---|
| Karpathy, Zero to Hero | https://karpathy.ai/zero-to-hero.html |
| Karpathy YouTube | https://www.youtube.com/@AndrejKarpathy |
| Hugging Face LLM Course | https://huggingface.co/learn/llm-course |
| Hugging Face Agents Course | https://huggingface.co/learn/agents-course/unit0/introduction |
| Hugging Face MCP Course | https://huggingface.co/learn/mcp-course |
| DeepLearning.AI short courses | https://learn.deeplearning.ai |
| Hamel & Shreya free evals course | https://ai.hamel.dev/eval-course |
| Evals FAQ | https://hamel.dev/blog/posts/evals-faq/ |
| OWASP GenAI / LLM Top 10 | https://genai.owasp.org |
| Simon Willison on prompt injection | https://simonwillison.net/tags/prompt-injection/ |

## Setup docs (Windows)
| Tool | Link |
|---|---|
| WSL install | https://learn.microsoft.com/windows/wsl/install |
| Docker Desktop + WSL2 | https://docs.docker.com/desktop/features/wsl/ |
| VS Code WSL | https://code.visualstudio.com/docs/remote/wsl |
| Poetry | https://python-poetry.org/docs/ |
| pipx | https://pipx.pypa.io |
| pre-commit | https://pre-commit.com |

## Tools
| Tool | Link |
|---|---|
| pgvector | https://github.com/pgvector/pgvector |
| LangGraph | https://docs.langchain.com |
| Langfuse | https://langfuse.com/docs |
| Ragas | https://docs.ragas.io |
| vLLM | https://docs.vllm.ai |
| Ollama | https://ollama.com |
| TRL | https://huggingface.co/docs/trl |
| OpenTelemetry | https://opentelemetry.io/docs/ |

## Paid (optional, priority order)
| Resource | Cost |
|---|---|
| Chip Huyen, *AI Engineering* (O'Reilly) | ~$40–50 |
| Ed Donner, *LLM Engineering* (Udemy) | $10–15 on sale |
| Hamel & Shreya, *AI Evals* (Maven cohort) | expensive, optional |

## Interview prep
| Resource | Link |
|---|---|
| Exponent — ML system design | https://www.tryexponent.com/blog/machine-learning-system-design-interview-guide |
| IGotAnOffer — GenAI system design | https://igotanoffer.com/en/advice/generative-ai-system-design-interview |
| AI system design guide | https://github.com/ombharatiya/ai-system-design-guide |

---

# 7. Review-day protocol (Day 7 of every week)

1. **Evidence check (15 min):** each day's Done when — proof, not claims.
2. **Rebuild (45 min):** rebuild the week's main piece from a blank file.
3. **Quiz (20 min):** 10 mechanism questions, graded.
4. **Numbers (5 min):** what moved (Section 10).
5. **Schedule (5 min):** behind? Run Section 8.
6. **Five-line note:** what broke, root cause, number that moved, on schedule or not, what I'd change.

---

# 8. When I'm behind

**Rule: no day is ever dropped, cut, merged, or skipped — no matter how far behind I am.** All 182 days are done in order. Being behind only moves the finish date.

When I say "I'm behind":
1. **Give the new finish date:** today + (182 − last completed) days. Say it plainly.
2. **Catch up only by adding time, never by removing content:** an optional extra session on a free day (the next day, in full), or a longer session that finishes one day and starts the next.
3. **Partial sessions don't count.** A day stays open until its Done when is met.
4. **Stuck on one day for 3+ sessions:** find the exact blocker and fix it. Don't move on.
5. **Applications:** light applications can start after M2 whatever the date. Studying continues.
6. **Ahead:** don't rush. Go deeper on the current day.

---

# 9. Mock interview format

- **45 minutes, timed.** Assistant is the interviewer.
- **Interrupt:** scale numbers, 100× traffic, what breaks first, why not something simpler.
- **Probe abstractions:** name a framework → explain how it works underneath.
- **Critique** against the six-step template.
- **Score:** passes a senior bar or not, and why. No softening.

**Prompts:**
1. Enterprise RAG over 10M documents
2. Agent taking real customer actions (refunds, ticket updates)
3. Multi-tenant LLM gateway with quotas and cost attribution
4. Eval and rollout pipeline catching prompt regressions
5. Replace a prompt-based classifier at 1M requests/day with something cheaper
6. Observability for a fleet of production agents

---

# 10. Numbers to collect

| Metric | Day |
|---|---|
| Distinct outputs by temperature | 9 |
| TTFT / total time | 10 |
| Tokens/char: YAML / JSON / Python / non-English | 16 |
| Reasoning: none vs low vs high effort | 17 |
| Errors with vs without context | 18 |
| Cache saving | 25 |
| Batch vs real-time cost | 26 |
| Index latency comparison | 36–37 |
| ANN recall | 38 |
| Recall@5, MRR per config | 47 |
| Long context vs RAG | 53 |
| Failure modes (count, top 3) | 61 |
| Judge TPR / TNR | 67 |
| Cost per query at M1 | 82 |
| First load bottleneck | 83 |
| Agent steps before/after tool fix | 88 |
| Agent task success | 89 |
| Cache hit rate before/after | 109 |
| Routing cost before/after | 110 |
| Adversarial attacks / caught | 117 |
| KV cache speedup | 135 |
| vLLM vs API p99 at c=50 | 144 |
| Self-host breakeven | 145 |
| Cost at 10k queries/day | 149 |
| **M3 cost cut + eval delta** | 152 |
| QLoRA vs prompt | 158 |
| Non-LLM router savings | 160 |
| Multi-agent overhead predicted / actual | 165 |

---

# 11. STATE (fallback — memory is the main tracker)

The assistant cannot edit this uploaded file. When I say "give me the tracker", regenerate this block filled in.

```
STATE
Last completed:   none
Completed on:     -
Next day:         Day 1
Behind/ahead:     0 days
Milestones:       M1 [ ]  M2 [ ]  M3 [ ]  M4 [ ]
Numbers:          -
Open blockers:    none
```

---

# 12. Paste this into the ChatGPT Project instructions box

> You are my teacher for a 182-day (6 months, 7 days a week, 2 hours a day) plan to become a Senior AI Engineer. I'm a backend engineer (Python, FastAPI, Django, MySQL, Postgres, MongoDB) on Windows with zero setup. I use the OpenAI API for all LLM work, Poetry for Python, and Claude Code in VS Code as my coding agent. The full plan is in `ai-engineer-project-knowledge.md`. Read it before any answer about my plan.
>
> When I say **"give me today's task"**: find my last completed day from memory entry `AI-PLAN-STATE` (then chat history, then the file's STATE block; if none, Day 1). Serve the next day without asking me to confirm; put the day number first. Give the full session in 4 parts — Theory (30 min, full explanation), Practical (60 min, Windows/WSL steps with where each command runs, starter code but not the full solution), Interview questions (5 with model answers), Architecture (diagram, trade-offs, failure modes) — in simple English.
>
> When I say **"completed"**: overwrite memory `AI-PLAN-STATE: last completed Day N on <date>; next Day N+1; numbers: ...`, ask for that day's number if it has one, and print a one-line `STATUS:` line.
>
> Don't write my full build code; review and debug strictly. Skip backend basics; explain ML from zero. Never drop, skip, or merge a day, however far behind I am — only the finish date moves. If something looks outdated, check the web. If chat and memory disagree, chat wins.
