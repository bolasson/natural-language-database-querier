# Use Cases and Scope

## Primary Intended Uses

| Intended use | Description |
|---|---|
| NL-to-SQL prototyping | Evaluate whether a managed LLM can translate natural-language questions into valid SQLite SELECT queries. |
| Prompt strategy comparison | Compare zero-shot vs few-shot prompting outcomes for SQL generation quality. |
| Query-result summarization | Convert raw SQL tuple output into concise user-friendly language for readability. |
| Demo/evaluation artifact generation | Produce repeatable JSON and markdown evidence of generated SQL and outcomes. |

## Primary Intended Users

| User type | Description |
|---|---|
| Developer/Experiment owner | Runs the script, configures API key, inspects generated SQL and outputs. |
| Reviewer/Assessor | Reviews output artifacts (`response_*.json`, `questions_and_answers.md`) to assess behavior. |

## Downstream Systems Consuming AI Outputs

| API/module | Consuming app/system | Contact | Alerts/monitoring tools | Information sharing method |
|---|---|---|---|---|
| `db_bot.py` local artifact writer | None (local files only) | Repository maintainer | None in-repo | Files written to repository working directory (`response_*.json`, markdown) |

## Explicit Out-of-Scope Uses

| Out-of-scope use case | Description |
|---|---|
| Autonomous production database operations | Project targets local experimental SQLite usage, not production DB control. |
| Decision automation affecting individuals | Tool does not make eligibility, ranking, hiring, lending, or similar decisions. |
| Model training/fine-tuning pipeline | Repository consumes hosted model APIs and contains no model training workflow. |
| Public end-user web/mobile experience | Implementation is CLI-based and has no end-user application UI surface. |
