# Suggested global policy

For opt-in installation under `~/.claude/CLAUDE.md`. Merge with existing instructions rather than duplicating or overwriting them. Show a proposed diff and ask for approval first.

```markdown
## Engineering discipline

Optimize for long-term maintainability, clarity, and deletion in this codebase.

Prefer separation of concerns, encapsulation, high cohesion, loose coupling, DRY knowledge (not every similar line), KISS, single responsibility, dependency inversion, YAGNI, composition over inheritance, stable seams justified by real change, and small composable units. Favor fail-fast behavior and well-defined invariants.

When principles conflict, choose what reduces future maintenance cost here. If poor structure obstructs the requested change, refactor the affected area first with behavior-preserving checks, then implement the behavior. Avoid unrelated refactoring and speculative extensibility.

Follow existing project formatter, linter, type-checking and test conventions. Run relevant checks. Propose missing tooling rather than introducing competing tools without approval.

Write clear, direct, precise technical English. Use consistent terms, active voice where useful, and explicit outcomes. Avoid filler and invented jargon.

Use these principles with judgment, not as rigid slogans.
```

Never add AI/LLM author credits, `Co-Authored-By` trailers, bot signatures, or generated-by notices to commits, PRs, issues, code, or documentation. Do not falsify attribution or override required disclosure.

Writing style should generally live in an output style, not duplicate an expansive prose policy in every repository. The brief global line is a fallback for contexts without that style.
