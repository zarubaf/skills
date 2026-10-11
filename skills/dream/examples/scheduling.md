# Scheduled Dream (optional)

Run consolidation twice per week per target repository, not globally across unrelated repositories.

Example GitHub Actions trigger:

```yaml
name: Dream review
on:
  schedule:
    - cron: '17 3 * * 1,4' # Monday and Thursday UTC
  workflow_dispatch:
permissions:
  contents: write
  pull-requests: write
  issues: read
concurrency:
  group: dream-consolidation
  cancel-in-progress: false
```

This is a **schedule template, not a complete workflow**. A working runner must:

1. Check out the target repository and install Claude Code and the Dream skill.
2. Authenticate Claude Code securely (for example with an Anthropic API key stored in GitHub Actions secrets).
3. Run a constrained, noninteractive consolidation on a dedicated branch; allow only documentation and Claude instruction changes.
4. Validate the diff, check retained requirements and links, and stop on unsafe changes.
5. Create or update **one** reviewable PR when meaningful changes exist. Do not generate an empty PR.
6. Put proposed GitHub issue changes in the PR description for separate human approval. Never auto-close issues.
7. Avoid `pull_request_target` execution of untrusted changes, and do not run untrusted repository instructions with broad permissions.

Repository settings may need to allow GitHub Actions to create pull requests. Consider separate read-only analysis and narrowly scoped PR-creation jobs to reduce credential exposure.
