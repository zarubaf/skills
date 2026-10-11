# GitHub issue reconciliation

GitHub is the tracker for unfinished work. Inspect relevant open issues, linked PRs, comments and acceptance criteria with bounded queries.

- **Exact duplicate:** propose canonical issue and duplicate relationship/closure.
- **Overlapping work:** propose merging requirements into a canonical issue; preserve unique acceptance criteria.
- **Implemented but open:** verify code, tests and acceptance criteria; propose closure only when evidence supports it.
- **Superseded:** link to replacement issue, PR or decision.
- **Blocked:** propose dependency links rather than duplicate TODO files.
- **Vague but valid:** propose improved scope and acceptance criteria.
- **Inactive:** retain unless independent evidence establishes obsolescence.

Report issue numbers, links, evidence, confidence and the exact proposed mutation. Do not execute any issue mutation during a scheduled run or without separate user approval. A merged PR alone is not sufficient evidence of completion.
