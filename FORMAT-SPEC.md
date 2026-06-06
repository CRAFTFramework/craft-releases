# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

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
  product  := [a-z][a-z0-9-]*            # e.g. cowork
  channel  := (stable|rc|demo)           # closed set (CD-042 §3.2)
  variant  := [a-z][a-z0-9-]*            # default when unspecified
```
Within a `<variant>/` directory:
- `LATEST`            — pointer to the current release-version (text).
- `<release-version>/` — one immutable directory per release, OR a pointer file to
  the GitHub Release assets. release-version := `v<major>.<minor>.<patch>[-<channel>N]`.

## Invariants asserted by CI
- Every `<channel>` is one of {stable, rc, demo}.
- No INTERNAL-tier markers anywhere (leak-guard; CD-042 §8.4).
- Every release directory name parses as a valid release-version.
- KEYS/ exists and is non-empty before any signed release is indexed.

_Format Spec v1.0 — SP25 Phase 3 (P061-H137); finalized with the signing recipes at Phase 4._
