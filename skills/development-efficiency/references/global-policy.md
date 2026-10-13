# Optional global policy

Merge the following into `~/.claude/CLAUDE.md` only after inspecting existing rules, showing a minimal diff and receiving approval. Consolidate with Engineering Discipline rather than duplicating overlapping instructions.

```markdown
## Development feedback

Treat development infrastructure as maintainable code. Challenge unexpected delays, duplicated CI checks, excessive setup time and unnecessary resource use. Measure before optimizing. Prefer targeted fast feedback during implementation and complete required verification before merging.

Before expensive operations, establish a reasonable expected duration and progress signal. If a command or CI job stalls or runs unexpectedly long, inspect logs, process status and bottlenecks. Do not repeatedly wait, retry or increase timeouts without a diagnosis.

Keep draft PR checks proportionate where repository rules permit, but preserve required merge-time gates, security controls and meaningful test coverage. Propose CI or tooling changes with evidence, cost/benefit and rollback; do not silently weaken verification.
```
