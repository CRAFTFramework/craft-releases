<!--
SPDX-License-Identifier: LicenseRef-CRAFT-Demo
(C) 2025-2026 Ketelsen Digital Solutions LLC. — Free under the CRAFT Demo license (craftframework.ai/terms)
-->

# Contributing

This repository **distributes** CRAFT releases — it isn't where the framework source is
developed, so the most valuable contribution is **feedback**, not code.

## The best way to help: tell us how it went

CRAFT for Claude Cowork is an early **free public beta**, and your experience shapes where it goes
next. The fastest, most reliable way to reach the maintainer is through **[CRAFTFramework.ai](https://craftframework.ai)**:

- **Feedback or a problem** (a download that won't verify, a broken link, something that behaved
  unexpectedly) → use the feedback link on craftframework.ai.
- **Questions & how-to** → the guides and tutorial series on craftframework.ai.
- **What's new** → [craftframework.ai/craft-whats-new](https://craftframework.ai/craft-whats-new/) and the changelog.

Beginner feedback is especially welcome — if something confused you in the first ten minutes, that's
exactly what we want to hear.

## Security & verification

Always verify a release with [VERIFY.md](VERIFY.md) — one `sha256sum -c` and one `gpg --verify`. If
verification fails, **do not use the download** and **report it privately** — see [`SECURITY.md`](SECURITY.md),
not a public thread.

## What not to send here

Please don't open pull requests against this distribution repo — release contents are built and
**signed** upstream, which is what lets you verify every byte came from us. If you'd like to suggest a
framework change, send it through the feedback link on craftframework.ai and we'll route it.
