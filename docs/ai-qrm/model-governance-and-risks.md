# Model Governance, Risks, Reliability, Robustness, Fairness, Explainability, and Data Quality

## Model Management

- **Model name**: `gpt-4o` (configured in `db_bot.py` Chat Completions call)
- **Model type**: Hosted, pre-trained, general-purpose foundation model accessed via external API
- **Model creation date**: Not stored in this repository; model lifecycle/version history is managed by provider

## AI Model-Driven Risks and Mitigations (Current-State Controls)

| Risk | Current mitigation in repository |
|---|---|
| Invalid/non-SQL LLM output | `sanitizeForJustSql` strips fenced SQL blocks; execution wrapped in try/except. |
| SQL execution failure from malformed queries | Error capture per question in generated artifacts (`error` field). |
| Hallucinated or semantically wrong query logic | Structured evaluation set in code and archived run outputs for manual review. |
| Prompt fragility across question styles | Side-by-side zero-shot and few-shot strategy comparison. |
| Sensitive key leakage risk | API key is read from local `config.json` and not hard-coded in tracked source. |

## Disaster Recovery / Contingency (Repository State)

- No dedicated DR/BCP runbook or automated backup/restore pipeline is defined in this repository.
- Current contingency mechanism is script re-runnability from source-of-truth SQL setup files.

## Model Reliability and Testing Coverage

- Reliability evidence currently comes from:
  - controlled question list in `db_bot.py`
  - run artifacts (`response_*.json`)
  - curated summary (`questions_and_answers.md`)
- Existing tests are scenario-based script outputs; no separate automated unit/integration test framework is present in-repo.
- Out-of-distribution, adversarial, jailbreak, and perturbation testing suites are not separately implemented in code.

## Scalability and OOD Handling (Repository State)

- Execution is synchronous and single-process in local CLI.
- No autoscaling, queueing, load balancing, or distributed workers are defined.
- Input handling is bounded by predefined question lists and SQLite execution behavior.
- No dedicated drift or high-volume throughput pipeline exists in current repository scope.

## Security / Vulnerability Identification and Mitigation (Repository State)

- No CI-based SAST/DAST/dependency scanner configuration exists in this repository.
- Vulnerability reduction mechanisms present in code are limited to:
  - local execution context
  - explicit SQL schema scope
  - exception handling and logged outputs

## Fairness/Bias Applicability Notes

- System purpose is technical NL-to-SQL conversion over synthetic project data.
- Repository does not implement individual-impact decisioning workflows.
- No protected-attribute feature engineering or subgroup decision policies are implemented.
- No fairness metric pipeline is currently defined in code.

## Explainability Coverage

- Explainability evidence is provided through artifact transparency:
  - natural-language input question
  - generated SQL text
  - raw SQL result tuples
  - generated friendly response
  - per-question error field
- These are preserved in `response_*.json` and summarized in `questions_and_answers.md`.

## Data Quality and Governance Coverage

- Data quality controls currently present:
  - explicit schema and relational constraints (`setup.sql`)
  - fixed seed dataset (`setupData.sql`)
  - deterministic DB rebuild on each run (`db_bot.py`)
- No standalone EDA, profiling, correlation, or label-governance workflow is present.
- No class-imbalance or supervised label management process is applicable in current repository design.
