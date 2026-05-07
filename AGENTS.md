# AGENTS.md

> Operational context for AI coding agents (Claude, Copilot, Cursor, etc.) working in **`nosportugal/.github`**.

## Project Overview

**github workflow templates**

This document contains information about the workflow templates used at the org level

Owner team: **DAII** (org: nosportugal).

## Tech Stack

- CI: GitHub Actions

## Local Development

Common commands you should know before changing this codebase:

```bash
# No standard build tooling detected.
# Check the README for build/run/test instructions.
```

## Project Structure

- `src/` — main source code

## Conventions

- Default branch is `main`.
- Use [Conventional Commits](https://www.conventionalcommits.org/) for messages: `feat:`, `fix:`, `chore:`, `docs:`, `refactor:`, `test:`.
- Open a Pull Request for review; do not push to the default branch directly when possible.
- Run linters/formatters before committing.
- Keep PRs small and focused.

## CI/CD

- CI is configured under `.github/workflows/`.
- Make sure your changes don't break existing workflow files.

## Security & Secrets

- **Never** commit secrets, tokens, API keys, certificates or credentials.
- Use environment variables, GCP/Azure Secret Manager, or the org's vault.
- If you spot a leaked secret, rotate it immediately and notify the security team.
- Avoid logging PII or customer data in plaintext.

## Guidance for AI Agents

When working in this repository, agents should:

- Read the README and any docs under `docs/` before making non-trivial changes.
- Prefer minimal, surgical edits over rewrites.
- Match the existing code style — do not reformat unrelated code.
- After changes, run the build/test/lint commands listed above and report the result.
- Open a draft PR for any change touching more than one module or > 100 LOC, and let a human review.
- Do not invent commands or dependencies — verify they exist in the repo before suggesting them.
- If unsure about business logic, **ask** rather than guess.

---

_This AGENTS.md was bootstrapped automatically from the repo contents on first creation. Refine it with project-specific details._