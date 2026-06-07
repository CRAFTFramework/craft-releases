# SPDX-License-Identifier: LicenseRef-CRAFT-Demo
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Demo build. Full product licensed via membership: craftframework.ai/terms

# Demo terms — CRAFT for Claude Cowork

The **demo** channel exists so you can try CRAFT **without a membership**. This file
states, plainly, what that grants you and what it doesn't. (CD-042 §3.2 / anchor-goal-1:
a demo MUST be runnable without a membership wall.)

## You may, without a membership

- **Download, run, and evaluate** the demo build for your own assessment.
- Do so for a reasonable evaluation period, for personal or internal evaluation use.
- Verify it the same way as any release — demos are signed too (see [`/VERIFY.md`](../../../../VERIFY.md)).

No login, no membership, no paywall stands between you and running the demo. That is
the point of the channel.

## You may not

- Use the demo build for **production** or commercial delivery — that's what a
  membership/stable release is for.
- **Redistribute, repackage, resell, or host** the demo build, or remove these terms,
  notices, or signatures.
- **Reverse-engineer** beyond what applicable law permits, or use the demo to
  reconstruct the full product.

## What a demo build is

- A **runnable showcase** of the product. It may carry a **reduced, time-limited, or
  feature-limited** payload — enough to demonstrate value, not the full membership
  product.
- **Signed and verifiable** exactly like stable/rc releases. Always
  [verify your download](../../../../VERIFY.md); a demo that fails verification is not ours.
- Addressed as `cowork/v<major>.<minor>.<patch>-demoN/` with a `LATEST` pointer.

## Want the full product?

Demos are the front door, not the house. Memberships and full **stable** releases are
at **craftframework.ai** (terms: craftframework.ai/terms). Liked the demo? Tell us —
file [RC Feedback](../../../../issues/new?template=rc_feedback.yml) and note the channel
is `demo`.

---

> **License note (proposed, pending maintainer ratification):** this demo channel uses a
> distinct `LicenseRef-CRAFT-Demo` identifier — a limited, no-membership evaluation grant
> — *separate from* the repo-wide `LicenseRef-CRAFT-Proprietary` (membership) license, so
> the "no membership wall" guarantee is explicit in the license layer, not just in prose.
> The full text of `LicenseRef-CRAFT-Demo` is to be finalized and added at repo root
> (`LICENSE-DEMO`) when ratified.
