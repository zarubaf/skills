# GitHub-first routing

Use the repository's existing conventions. Choose a single canonical home per kind of information.

| Information | Preferred home |
| --- | --- |
| Bug, feature, research question, actionable TODO | GitHub issue (one stable number) |
| Independent deliverables under a larger outcome | Sub-issues when helpful |
| Blocking/order constraints | Native issue dependency relationship |
| Delivery/release grouping | Existing milestone; create only for real coordinated delivery goals |
| Type, area or priority classification | Existing labels or issue types; avoid taxonomy proliferation |
| Work ownership or status at scale | Existing GitHub Project when the repo already uses one |
| Proposed/ongoing implementation | Branch + linked PR |
| Review feedback | PR reviews / comments |
| Settled architecture | Canonical docs / ADRs, referenced from issue or PR |
| Short-lived implementation scratch work | Ephemeral workspace; do not automatically commit |
| Session recap or completed-task list | Existing issue / PR history, not new Markdown |

## Decomposition heuristics

- **Issue:** one coherent outcome with verifiable acceptance criteria. Avoid an issue per individual coding step.
- **Sub-issue:** distinct testable deliverable, independently ownable/reviewable, or substantial enough to track.
- **Dependency:** actual blocking relationship, not a list of everything that happens in order.
- **Milestone:** meaningful target spanning multiple issues; not a renamed phase or a substitute for an implementation plan.
- **Label:** stable classification, not one per feature, issue, sequence, or session.
- **PR:** implementation and discussion; link with `Closes #N` only when all acceptance criteria are met.

Before new creation, search title, synonyms, old issues, PRs and parent issues for duplicates. If another issue covers most of the same work, update it or suggest sub-issues instead.

## Issue quality

A good issue has: outcome/problem, relevant context and links, acceptance criteria, constraints/non-goals where needed, and optionally test approach. Short is fine if work is clear.

For research (“spike”), articulate the decision or question, evidence required, and exit criteria; it is still **issue #N**, not `spike-07.md`.

For narrow engineering tasks, avoid inventing elaborate templates. For large design work, create or update a canonical technical document and link it from the issue.
