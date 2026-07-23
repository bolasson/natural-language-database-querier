# Disclaimers, Feedback, and Continuous Monitoring

## User Feedback Capture Approach (Current Repository State)

- Project is CLI-only and does not expose an in-app feedback widget/form.
- Feedback currently occurs through manual review of generated artifacts and source-controlled updates.

## AI Disclaimer Placement (Current Repository State)

- No application UI exists where a visual disclaimer can be displayed.
- AI usage context and behavior are documented in `README.md` and script behavior in `db_bot.py`.

## Continuous Monitoring Approach (Current Repository State)

- No deployed monitoring dashboard or alert framework is configured in-repo.
- Practical monitoring mechanism is manual periodic review of:
  - JSON run outputs (`response_*.json`)
  - markdown run summaries (`questions_and_answers.md`)
  - prompt strategy behavior (`db_bot.py`)

## Ground Truth, Drift, and Long-Term Evaluation

- Ground truth is implicitly represented by known expected behavior across the fixed question set.
- No automated drift monitoring service or scheduled long-term comparison job is defined.
- The repository supports incremental benchmark extension by adding questions and comparing regenerated artifacts over time.
