# Project Context

This file captures project context that is not directly encoded in source files.

## Intended Usage

- Prototype natural-language-to-SQL translation against a local SQLite dataset.
- Compare prompt styles (zero-shot vs few-shot) for generated SQL quality.
- Produce reviewable run artifacts (`response_*.json`, `questions_and_answers.md`) for iteration.

## Intended Users

- Developers experimenting with NL-to-SQL prompt behavior.
- Reviewers validating generated SQL/output quality from run artifacts.

## Non-Goals

- Production database automation.
- End-user web/mobile product features.
- Model training or fine-tuning workflows.
- High-scale or multi-tenant deployment scenarios.

## Operational Notes

- The project is maintained as a local CLI workflow.
- Feedback is currently gathered through manual review of generated artifacts and repository changes.
- Monitoring is manual and artifact-driven rather than dashboard-driven.
