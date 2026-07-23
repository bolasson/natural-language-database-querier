# Evaluation Notes

This project evaluates NL-to-SQL behavior using repository-contained artifacts and scripts.

## Evaluation Inputs

- Prompt strategies and question set in `db_bot.py`.
- SQLite schema in `setup.sql` and seed data in `setupData.sql`.

## Evaluation Outputs

- Timestamped run artifacts (`response_*.json`) with generated SQL, raw query results, and rewritten responses.
- Human-readable run summary in `questions_and_answers.md`.

## Current Limits

- No automated benchmark pipeline or scheduled drift checks are configured.
- No UI-level screenshot artifacts are applicable because the project is CLI-only.
- Security/reliability checks are currently based on manual review of outputs and code changes.
