# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# Community & the release-candidate loop

This page explains, in plain terms, **how community feedback becomes a better
release** — so you can see that reporting something here actually goes somewhere.

## The short version

```
   You try an rc  ──▶  you file RC feedback (Issue/Discussion here in craft-releases)
                                   │
                                   ▼
        maintainer triages it  ──▶  actionable work is rehearsed PRIVATELY
                                   │            in craft-staging (test the fix)
                                   ▼
        the rc is iterated (rc2…) OR promoted to a signed stable release
                                   │
                                   ▼
        the change is announced  ──▶  blog · /craft-whats-new/ · /craft-changelog/
```

## Why there are two repos

- **craft-releases** (this repo, **public**) — where releases live and where you
  talk to us. Everything here is signed and permanent.
- **craft-staging** (**private**) — where the maintainer rehearses the next release
  and where your actionable feedback gets worked. You don't need access to it; it
  exists so that nothing reaches the public, signed channel until it has been tested
  end-to-end. This is what lets us publish often without it being "a huge commitment."

You never have to think about staging. You interact with **craft-releases only**.
The maintainer carries feedback across the boundary.

## How to take part

1. **Run a release candidate.** RC builds live in each product's `rc` channel —
   e.g. `products/cowork/rc/default/`. The `LATEST` pointer names the current one.
   Always [verify the download](VERIFY.md) first.
2. **Tell us what happened.** File [RC Feedback](../../issues/new?template=rc_feedback.yml)
   for anything we should act on, or start a [Discussion](../../discussions) to talk
   it through. See [`CONTRIBUTING.md`](CONTRIBUTING.md) for what makes feedback useful.
3. **Watch it land.** When your feedback ships, you'll see it in the
   [Announcements](../../discussions/categories/announcements) and on the
   CRAFTFramework.ai changelog. We try to credit the reports that moved a release.

## What we promise

- **Every RC feedback item is read and triaged** — even if the answer is "working as
  intended," you'll get a reply.
- **Actionable feedback is rehearsed before it ships** — we don't hot-patch the public
  channel; fixes go through staging first.
- **The history stays honest** — releases are append-only and signed; we don't quietly
  rewrite what was published (see [`PERMANENCE-POLICY.md`](PERMANENCE-POLICY.md)).

## What we ask

- Keep it **specific and reproducible** — vague reports are hard to act on.
- Use the **right surface** — Issues for actionable things, Discussions for conversation.
- Report **security or signature problems privately** — [`SECURITY.md`](SECURITY.md),
  never a public issue.
- Follow the [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md).

> The maintainer-side mechanics (how an item is labeled, moved into staging, and closed
> out) are documented for the project in [`docs/RC-FEEDBACK-LOOP.md`](docs/RC-FEEDBACK-LOOP.md).
