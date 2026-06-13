<!--
SPDX-License-Identifier: LicenseRef-CRAFT-Demo
(C) 2025-2026 Ketelsen Digital Solutions LLC. — Free under the CRAFT Demo license (craftframework.ai/terms)
-->

# Format Spec — craft-releases layout (machine-readable)

Deterministic description of this repository's structure. CRAFT CI uses it for the
**layout-assertion** gate (CD-042 §7.4): a publish dry-run FAILS if the structure
drifts from this spec.

## Required top-level entries
- `README.md`
- `LICENSE`
- `VERIFY.md`
- `PERMANENCE-POLICY.md`
- `FORMAT-SPEC.md`
- `KEYS/` (contains the public signing key + `README.md`)
- `products/`

## products/ tree (regex-style)
```
products/<product>/<channel>/<variant>/
  product  := [a-z][a-z0-9-]*            # e.g. craft-for-claude-cowork
  channel  := (stable|rc|demo)           # closed set (CD-042 §3.2)
  variant  := [a-z][a-z0-9-]*            # default when unspecified
```
This tree is an OPTIONAL human index — the signed bytes ship as GitHub Release assets, not as
files here. Within a `<variant>/` directory:
- `README.md`          — pointer to the channel's releases on the Releases page.
- `LATEST` (optional)  — text pointer to the current release-version for the channel.
- release-version (the Release tag minus the product prefix) is the canonical CRAFT version:
  `v.bNNNN.eYYYYMM.LLx` (beta) or `vM.NNNN.eYYYYMM.LLx` (release) — never plain semver.

## Invariants asserted by CI
- Every `<channel>` is one of {stable, rc, demo}.
- No INTERNAL-tier markers anywhere (leak-guard; CD-042 §8.4).
- Every release directory name parses as a valid release-version.
- KEYS/ exists and is non-empty before any signed release is indexed.

_Format Spec v1.0 — governed by CD-042 Distribution Architecture._
