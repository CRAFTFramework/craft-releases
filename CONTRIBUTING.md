# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# Contributing to CRAFT Releases

Thanks for your interest in CRAFT. **craft-releases** is the public *distribution*
repository for the CRAFT product line — it holds signed, versioned release indexes,
the public signing key, and verification docs. It is **not** a source-code repository.

Because every published artifact must be **cryptographically signed by the CRAFT
maintainer** and the release history must stay permanent and tamper-evident
(see [`PERMANENCE-POLICY.md`](PERMANENCE-POLICY.md) and
[`VERIFY.md`](VERIFY.md)), this repo accepts changes **only** from the maintainer
via signed commits. **We do not accept pull requests.** That is a deliberate trust
property, not an oversight — it is what lets you verify that every byte you download
came from us.

So how do you contribute? **By telling us things.** Community input is genuinely
how release candidates become solid stable releases. Here is the map.

## Where to go

| You want to… | Use | Link |
|---|---|---|
| Try a release candidate and report how it went | **RC Feedback** issue | [New RC feedback](../../issues/new?template=rc_feedback.yml) |
| Report something broken in a published release | **Bug Report** issue | [New bug report](../../issues/new?template=bug_report.yml) |
| Ask how something works, or whether it's expected | **Q&A** discussion | [Ask in Discussions](../../discussions/categories/q-a) |
| Suggest an idea or improvement | **Ideas** discussion | [Share an idea](../../discussions/categories/ideas) |
| See what's new | **Announcements** + the website | [Announcements](../../discussions/categories/announcements) · craftframework.ai |
| Report a security/signing problem | **Privately** | see [`SECURITY.md`](SECURITY.md) — do **not** open a public issue |

When in doubt: **Issues are for things that need an action from us** (a bug, RC
feedback we should act on). **Discussions are for conversation** (questions, ideas,
showing what you built).

## What makes feedback useful

The more of this you can give, the faster it helps:

- **Which release** — the exact release-version, e.g. `cowork/v1.1.0-rc1`. It's in
  the release title and in the `LATEST` pointer for the channel.
- **Channel** — stable, rc, or demo.
- **What you did**, **what you expected**, **what happened** — in that order.
- **Environment** — OS, app version, anything relevant to reproducing it.
- **Whether you verified the download** (`VERIFY.md`) — if a signature or checksum
  did **not** match, say so immediately and stop using the file.

## What happens to your feedback

Public feedback here is read, triaged, and — when it's actionable — turned into work
that is rehearsed privately in our staging repo before any new release ships. The
full path is documented in [`COMMUNITY.md`](COMMUNITY.md). Nothing you report
disappears into a void: RC feedback directly shapes whether an `rc` is promoted to
`stable`, iterated (`rc2`, `rc3`…), or pulled.

## Code of conduct

Participation is covered by our [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md). Be kind,
be specific, assume good faith.

## A note on the demo channel

The **demo** channel is meant to be runnable **without a CRAFT membership** so you
can evaluate a product before committing. See
[`products/<product>/demo/default/DEMO-TERMS.md`](products/cowork/demo/default/DEMO-TERMS.md)
for exactly what a demo build does and does not include. Feedback on demos is very
welcome — file it as RC Feedback and note the channel is `demo`.
