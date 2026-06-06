# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# How to verify a CRAFT release

Every CRAFT release ships two integrity files alongside the payload zip:
- `SHA256SUMS` — checksums of every file in the release.
- `SHA256SUMS.asc` — a detached GPG signature of `SHA256SUMS`, signed by
  **Richard Ketelsen <richard@craftframework.ai>**.

Verify in two steps after downloading all three from the GitHub Release:

```bash
# 1. Check the files match the checksums
sha256sum -c SHA256SUMS

# 2. Check the checksum file is authentically signed by CRAFT
gpg --verify SHA256SUMS.asc SHA256SUMS
```

First time only — import the CRAFT public key (published in this repo's `KEYS/`):
```bash
gpg --import KEYS/craft-release-signing.pub.asc
```
A good result shows `SHA256SUMS: OK` for every file and a
`Good signature from "Richard Ketelsen <richard@craftframework.ai>"`.

> Phase status: the live public key is wired at SP25 Phase 4. Until then this page
> documents the verification flow; the key file lands with the first signed release.
