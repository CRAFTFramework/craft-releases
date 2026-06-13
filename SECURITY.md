<!--
SPDX-License-Identifier: LicenseRef-CRAFT-Demo
(C) 2025-2026 Ketelsen Digital Solutions LLC. — Free under the CRAFT Demo license (craftframework.ai/terms)
-->

# Security

## Verify every download

Every release ships a `SHA256SUMS` and a detached `SHA256SUMS.asc` signed by
**Richard Ketelsen <richard@craftframework.ai>**. Before trusting a download, run the two checks
in [VERIFY.md](VERIFY.md):

```
sha256sum -c SHA256SUMS
gpg --verify SHA256SUMS.asc SHA256SUMS
```

The public signing key and its fingerprint are in [KEYS/](KEYS/). If either check fails, **do not
use the download** — re-download, and if it still fails, report it.

## Reporting a vulnerability

Found a security problem with a release, the signing setup, or this repo? Email
**security@craftframework.ai** with details and steps to reproduce. Please report privately first
rather than opening a public Issue, and give us a reasonable window to respond before disclosure.

## What's in scope

The integrity/authenticity of published releases, the signing key handling, and this repository's
configuration. The CRAFT framework's internal development tooling is out of scope for this repo.
