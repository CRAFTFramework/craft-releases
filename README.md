<!--
SPDX-License-Identifier: LicenseRef-CRAFT-Demo
(C) 2025-2026 Ketelsen Digital Solutions LLC. — Free under the CRAFT Demo license (craftframework.ai/terms)
-->

# CRAFT Releases

Public distribution for the **CRAFT product line** — signed, versioned, verifiable releases
across products and channels.

## Where the downloads are

The signed bytes ship as **GitHub Release assets**, on the
[Releases page](https://github.com/CRAFTFramework/craft-releases/releases) — **not** as files in
this repo tree. Each release is one Git **tag** with its payload zip, `SHA256SUMS`, and a detached
`SHA256SUMS.asc` signature attached.

- **Always-current stable download** (the one release flagged *Latest*):
  `…/releases/latest/download/craft-for-claude-cowork.zip`
- **A specific version** (immutable, pinnable): open its entry on the Releases page.

The `products/…` folders in this repo are just an **optional human index** — pointer READMEs,
never the downloads.

## How a release is named

The Release **tag** is the canonical CRAFT version, product-prefixed:

```
<product>[-<variant>]-v.bNNNN.eYYYYMM.LLx   (beta / release candidate → marked Pre-release)
<product>[-<variant>]-vM.NNNN.eYYYYMM.LLx   (release / GA → flagged Latest)
```

e.g. `craft-for-claude-cowork-v.b0001.p202606.01b` (a release candidate) ·
`craft-for-claude-cowork-v1.0001.p202612.01a` (a GA). The human-readable **release title** (e.g.
"CRAFT for Claude Cowork — Release Candidate · June 2026") is what you read on the page; the tag is
the precise machine label underneath.

## Channels

- **stable** — general-availability releases (signed, fully gated; the *Latest* download).
- **rc** — release candidates for community testing (signed; marked Pre-release).
- **demo** — free, runnable showcase builds, usable with no membership wall.

## Products

- **CRAFT for Claude Cowork** (`craft-for-claude-cowork`) — the first product.
- New products slot in additively under `products/` — see `products/_TEMPLATE-product/`.

## Verify before you trust

Always verify a download — see **[VERIFY.md](VERIFY.md)** (one `sha256sum -c` + one `gpg --verify`).

## Stay current

Announcements: CRAFTFramework.ai blog · /craft-whats-new/ · /craft-changelog/. The website names
which version is current per stream; GitHub holds the files.
