# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# How to verify a CRAFT release

Every CRAFT release ships two integrity files alongside the payload zip(s):

- `SHA256SUMS` — checksums of every file in the release.
- `SHA256SUMS.asc` — a detached GPG signature of `SHA256SUMS`, made by
  **Richard Ketelsen <richard@craftframework.ai>**.

## First time only — import the CRAFT public key

```bash
gpg --import KEYS/craft-release-signing.pub.asc
```

Confirm the fingerprint matches:

```
F33B 001E DDAA 0061 0CF4  D6AF 90E8 EC93 25E1 5218
```

## Every download — verify in two commands

Download the payload, `SHA256SUMS`, and `SHA256SUMS.asc` from the GitHub
Release into the same folder, then:

```bash
# 1. the files match the checksums
sha256sum -c SHA256SUMS

# 2. the checksum file is authentically signed by CRAFT
gpg --verify SHA256SUMS.asc SHA256SUMS
```

A good result shows `OK` for every file, and:

```
Good signature from "Richard Ketelsen <richard@craftframework.ai>"
```

If either command reports `FAILED` or `BAD signature`, **do not use the
download** — re-download, and if it still fails, report it via the repo's
Issues.

> This is consumer-side release verification (artifact trust). It is separate
> from how CRAFT's agent authenticates to git (CD-039) — different purpose,
> different audience.
