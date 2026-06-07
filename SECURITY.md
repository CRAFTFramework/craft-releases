# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# Security policy

This repo distributes **signed** software. The most important security property here
is that you can verify a release came from us and wasn't tampered with. If that
property ever looks broken, we want to know **privately and fast**.

## Report privately — never in a public issue

Email **security@craftframework.ai**. Please do **not** open a public Issue or
Discussion for any of the following, because public disclosure could put other users
at risk:

- A release whose **signature or checksum does not verify** (see [`VERIFY.md`](VERIFY.md)).
- Anything suggesting the **signing key** is compromised, or a release was published
  that we didn't author.
- A **vulnerability** in a distributed CRAFT product.
- Any way to make a malicious file appear as a legitimate CRAFT release.

Include: the exact release-version + channel, what you observed (signature output,
hashes), and how to reproduce it. If you can't reach email, contact the maintainer
through any official CRAFTFramework.ai channel and ask for a private security contact.

## What happens next

- We aim to **acknowledge** your report quickly and keep you updated as we investigate.
- We will not take public action that exposes the issue before users can protect
  themselves. Coordinated disclosure is appreciated.
- If a key or release is affected, we will publish a signed advisory, rotate keys if
  needed (the new public key lands in [`KEYS/`](KEYS/)), and note it in the changelog.

## If a download fails verification

**Stop using the file immediately.** Do not run it. Re-download from this repo's
official Releases, re-verify per [`VERIFY.md`](VERIFY.md), and if it still fails,
report it privately as above. A failed verification means the bytes are not what we
signed — treat them as untrusted.

## Signing & trust

Releases are signed with the CRAFT release key published in [`KEYS/`](KEYS/) (fingerprint
in `KEYS/README.md`). Verification is a single documented step in `VERIFY.md`. Commits
to this repo are GPG-signed by the canonical maintainer identity and gated in CI — see
[`CONTRIBUTING.md`](CONTRIBUTING.md) and `PERMANENCE-POLICY.md`.
