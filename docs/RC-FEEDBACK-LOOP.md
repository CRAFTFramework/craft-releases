# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# RC feedback → staging: maintainer runbook

Maintainer-facing companion to [`../COMMUNITY.md`](../COMMUNITY.md). It documents how
community input received in the **public** craft-releases repo is triaged and routed
into the **private** craft-staging repo where the next release is rehearsed. It honors
the CD-042 §8.6 boundary: **craft-releases is human-only; the agent never writes here.**

## Roles (CD-042 §7 CI / agent / human split)

| Actor | May do here (craft-releases) | May do in craft-staging |
|---|---|---|
| **Community** | File Issues / post in Discussions | — |
| **Agent (Cowork)** | **Read-only** — read Issues/Discussions, summarize, draft triage | **Write** (CD-039 staging token) — open tracking notes, rehearse fixes |
| **Maintainer (Richard)** | Triage, label, reply, sign + publish releases | Review, approve, drive promotion |

The agent **cannot** comment on, label, or close anything in craft-releases. It reads,
proposes a triage, and stages the actual work privately. The maintainer is the only
writer on the public side.

## The loop, step by step

1. **Intake.** A community member files an RC-feedback or bug Issue (or a Discussion).
   GitHub auto-applies the template's labels (`rc-feedback` / `bug`, plus `needs-triage`).
2. **Read & summarize (agent, read-only).** The agent reads new items, deduplicates
   against known reports, and produces a triage digest: severity, affected
   release-version + channel, reproducibility, suggested disposition.
3. **Triage decision (maintainer).** For each item, choose one:
   - **act-now** — fold into the current rc; will trigger an `rc(N+1)` iteration.
   - **defer** — valid, but not for this rc; logged for a later release.
   - **as-intended** — reply explaining; close with `wontfix`/`by-design`.
   - **needs-info** — ask the reporter for specifics; label `needs-info`.
4. **Stage the work (agent → craft-staging, private).** For every **act-now** item,
   the agent opens a corresponding tracking note in craft-staging and rehearses the
   fix there (the full publish pipeline is dry-runnable on staging with zero public
   writes — CD-042 §7.2 / anchor-goal-3). Nothing touches the public channel yet.
5. **Rehearse & verify.** Run the staging dry-run harness (`craft-dryrun.sh`); confirm
   the fix, the deterministic package, the manifest leak-guard, and the layout
   assertion all pass.
6. **Decide the rc's fate (maintainer).**
   - enough act-now items resolved & verified → **iterate**: publish `rcN+1`, or
   - the rc is solid → **promote**: sign + publish the **stable** GA release (§7.3,
     human-only signing step).
7. **Announce (automation).** The release event auto-emits the website artifacts —
   blog + /craft-whats-new/ + /craft-changelog/ (CD-042 §9, ADM-067 chain). Credit the
   reports that drove changes in the changelog/announcement where appropriate.
8. **Close the public loop (maintainer).** Reply to and close the originating Issues
   with a pointer to the release that addressed them. Post in **Announcements**.

## Boundary & secret hygiene (do not regress)

- The agent uses the **craft-staging-only** fine-grained token
  (`.craft-secrets/gh-staging.token`) for staging writes — never the project token,
  and **never** any write to craft-releases (no such credential exists by design).
- Public-side writes (labels, replies, closes, signed releases) are **all** the
  maintainer, in GitKraken / GitHub web.
- Internal-tier content never crosses into a public reply or a staged-then-published
  artifact — the manifest **leak-guard** (§8.4) hard-fails on INTERNAL markers.

## Labels (apply via Issue templates + manual triage)

`rc-feedback` · `bug` · `question` · `needs-triage` · `needs-info` · `act-now` ·
`deferred` · `by-design` · `wontfix` · `channel:stable` · `channel:rc` · `channel:demo`.

> This runbook is internal process documentation kept in the public repo for
> transparency. The *mechanics* live here; the *promise* to the community lives in
> `COMMUNITY.md`.
