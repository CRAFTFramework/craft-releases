<!--
(C) 2025-2026 Ketelsen Digital Solutions LLC.
Free public beta release — no membership required. Terms: craftframework.ai/terms
-->

# CRAFT Releases

Public distribution for the CRAFT product line — signed, versioned, verifiable releases across products and channels.

These releases are **free to download and use, with no membership required**, during the beta period. See the beta terms at [craftframework.ai/terms](https://craftframework.ai/terms).

## Where the downloads are

The signed bytes ship as GitHub Release assets, on the [Releases page](https://github.com/CRAFTFramework/craft-releases/releases) — not as files in this repo tree. Each release is one Git tag with its payload zip, `SHA256SUMS`, and a detached `SHA256SUMS.asc` signature attached.

* **A specific version (immutable, pinnable):** open its entry on the [Releases page](https://github.com/CRAFTFramework/craft-releases/releases). This is how you get the current release candidate today.
* **Always-current stable download** (the one release flagged *Latest*): `…/releases/latest/download/craft-for-claude-cowork.zip`. This link activates once a general-availability (GA) release is flagged *Latest*. During the pre-release / beta period there is no *Latest* — the website names the current build.

The `products/…` folders in this repo are just an optional human index — pointer READMEs, never the downloads.

## How a release is named

The Release tag is the canonical CRAFT version, product-prefixed:

```
<product>[-<variant>]-v.bNNNN.eYYYYMM.LLx   (beta / release candidate → marked Pre-release)
<product>[-<variant>]-vM.NNNN.eYYYYMM.LLx   (release / GA → flagged Latest)
```

e.g. `craft-for-claude-cowork-v.b0001.p202606.01b` (a release candidate) · `craft-for-claude-cowork-v1.0001.p202612.01a` (a GA). The human-readable release title (e.g. "CRAFT for Claude Cowork — Release Candidate · June 2026") is what you read on the page; the tag is the precise machine label underneath.

## Channels

* **stable** — general-availability releases (signed, fully gated; the *Latest* download).
* **rc** — release candidates for community testing (signed; marked *Pre-release*).

## Products

* **CRAFT for Claude Cowork** (`craft-for-claude-cowork`) — the first product.
* New products slot in additively under `products/` — see `products/_TEMPLATE-product/`.

## Verify before you trust

Always verify a download — see VERIFY.md (one `sha256sum -c` + one `gpg --verify`).

## Stay current

Announcements: CRAFTFramework.ai blog · /craft-whats-new/ · /craft-changelog/. The website names which version is current per stream; GitHub holds the files.

## Feedback & support

Have feedback, a question, or hit a problem? **The best place to reach us is [CRAFTFramework.ai](https://craftframework.ai).**

- **Questions & how-to** → the guides and tutorial series on craftframework.ai.
- **Feedback or a bug** → use the feedback link on craftframework.ai. We read everything and it directly shapes the next release.
- **Announcements & what's new** → [craftframework.ai/craft-whats-new](https://craftframework.ai/craft-whats-new/) and the changelog.

> This is an early **free public beta** and a small project. The fastest, most reliable way to reach the maintainer is through **craftframework.ai**.

## Security & verifying your download

- Only download CRAFT for Claude Cowork from this repo's **[Releases](../../releases)** page or the link on craftframework.ai. We never distribute builds by DM, email attachment, or third-party mirror.
- Every release is **signed** and lists checksums — please verify before you run it (see VERIFY.md).
- Found a signature/checksum problem or a vulnerability? **Report it privately** — see [`SECURITY.md`](SECURITY.md), not a public thread.
- We will **never** ask you to run a script or install a build from anywhere other than the official Releases page. If someone does, it isn't us — please report it.
