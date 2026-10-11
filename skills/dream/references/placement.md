# Where knowledge belongs

Choose the narrowest durable home. Prefer updating an existing canonical location.

| Knowledge | Destination |
| --- | --- |
| Universal instructions and essential commands | Root `CLAUDE.md` |
| File-type or directory-specific rules | `.claude/rules/*.md` with verified `paths` globs |
| Subtree-owned guidance | Nested `CLAUDE.md` |
| Repeatable specialized procedures | `.claude/skills/<name>/SKILL.md` |
| Architecture facts and settled decisions | Existing `docs/` or ADR |
| Unfinished actionable work | GitHub issue |
| Implementation evidence and discussion | PR, commits, tests |
| Transient observations | Project-scoped Claude memory, if accessible |

Do not mistake references for instructions. Avoid loading large documents through `@path` imports. Verify path-scoped globs against actual files. Do not duplicate a requirement across root instructions, nested rules and docs unless each occurrence serves a distinct purpose.
