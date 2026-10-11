# Working with Superpowers

Superpowers is allowed to **think in detail**. GitHub Native prevents its internal sequence names and planning files from becoming a second project manager.

Superpowers writing-plans may default to `docs/superpowers/plans/YYYY-MM-DD-<feature-name>.md`; user preferences can override that convention. Do not weaken its testing, review, or task-granularity discipline just to avoid files.

## Recommended sequence

1. Brainstorm with Superpowers and retain useful design reasoning.
2. Find or create the **canonical GitHub issue** representing the outcome.
3. Map meaningful independently deliverable chunks to existing issues or sub-issues; map real blockers to dependencies; use existing milestone/labels if appropriate.
4. Keep exact code/test steps in the active execution context or temporary plan while Superpowers executes. A short-lived local artifact is acceptable if required for handoff or review. It is **not** a permanent parallel backlog.
5. On implementation, use a linked PR and update/close issues only when acceptance criteria have been verified.
6. After work is complete, retain settled decisions in canonical docs or ADRs and remove redundant committed plans via review. Dream handles later cleanup.

Do not blindly convert every Superpowers 2–5-minute coding step into a GitHub issue. Such micro-steps belong in the execution plan, not the persistent tracker.

## Optional repo-wide instruction (opt in)

If the user wants this behavior enforced more consistently, propose inserting a SHORT statement into the repo's existing root `CLAUDE.md`:

> Track durable work in GitHub issues, sub-issues, dependencies, milestones and PRs using `gh`. Before adding persistent plans, TODO lists, or custom lane/slice/spike identifiers, check for existing GitHub issues and reuse them. Superpowers may use temporary detailed execution plans, but they are not the canonical backlog. Link settled design decisions from issues to canonical docs. Never create/edit/close GitHub issues without authorization.

Do not auto-insert this text: Claude instructions affect all subsequent sessions. If `CLAUDE.md` already has an equivalent rule, consolidate rather than duplicate.
