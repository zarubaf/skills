# Skills by zarubaf

An extensible [Claude Code plugin marketplace](https://code.claude.com/docs/en/plugin-marketplaces) for independently installable skills.

## Install with `/plugin`

Inside an interactive Claude Code session:

```text
/plugin marketplace add zarubaf/skills
/plugin install dream@zarubaf-skills
```

Invoke Dream with `/dream:dream` (or `/dream:dream apply` / `/dream:dream verify`).

From the terminal instead:

```bash
claude plugin marketplace add zarubaf/skills
claude plugin install dream@zarubaf-skills
```

User-level installation makes Dream available across repositories. It operates only on the repository in which you invoke it. GitHub issue reconciliation requires an authenticated GitHub CLI (`gh`).

## Keeping skills updated

Custom Claude Code marketplaces have auto-update disabled by default. To turn it on, open `/plugin`, go to **Marketplaces**, select `zarubaf-skills`, and choose **Enable auto-update**.

For manual updates:

```text
/plugin marketplace update zarubaf-skills
```

Or in a shell:

```bash
claude plugin update dream@zarubaf-skills
```

Dream deliberately omits a fixed plugin version so new Git commits can be picked up when auto-update is enabled. Reload plugins or begin a new Claude Code session after an update if needed.

## Available plugins

| Install ID | Skill | Purpose |
| --- | --- | --- |
| `dream@zarubaf-skills` | [Dream](skills/dream/SKILL.md) | Consolidate repository plans, documentation, Claude instructions, memory and GitHub issue state. |

## Dream — let repositories forget

Coding agents accumulate numbered plans, dated notes, duplicate issues and contradictory instructions. Dream **consolidates instead of summarizing**: promote durable information into canonical locations, preserve unfinished work in GitHub, remove redundant artifacts, and aim for **net-negative maintained documentation LOC**, without losing unique decisions or requirements.

- `/dream:dream` — read-only audit and proposal.
- `/dream:dream apply` — reviewed local-file consolidation; no automatic GitHub issue changes.
- `/dream:dream verify` — check information preservation, links, instruction placement and LOC delta.

Dream is repository-local. It does not close GitHub issues without separate approval.

### Scheduled dreaming

Twice weekly (Monday and Thursday) is a sensible cadence for active repositories. [Scheduling guidance](skills/dream/examples/scheduling.md) outlines a safe GitHub Actions approach: a reviewable PR, separate approval for issue changes, and no log file generated after every run. The complete workflow is **not yet implemented**.

## Adding more skills

Add `skills/<name>/SKILL.md`, reference files and `skills/<name>/.claude-plugin/plugin.json`; then add an entry for that plugin to [`.claude-plugin/marketplace.json`](.claude-plugin/marketplace.json). Each plugin is installed separately as `<name>@zarubaf-skills`.

A legacy [manual installer](install.sh) is available, but **the plugin marketplace is the recommended installation method**.

## Validate before release

```bash
claude plugin validate .
claude plugin validate ./skills/dream
```

## License

[MIT](LICENSE).
