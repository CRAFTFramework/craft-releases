# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# CRAFT Releases

Public distribution for the **CRAFT product line** — signed, versioned releases
across products and channels. Governed by **CD-042 Distribution Architecture**
(CRAFT MASTER, project CP-061).

## How releases are addressed
Every release is a triple — **(product, channel, variant)** — at a public
**release-version**: `<product>/v<MAJOR>.<MINOR>.<PATCH>[-<channel>N]`
(e.g. `cowork/v1.0.0`, `cowork/v1.1.0-rc1`, `cowork/v1.0.0-demo`).

## Layout
```
products/<product>/<channel>/<variant>/   stable | rc | demo  (variant: default)
KEYS/        public signing key + metadata
VERIFY.md    how to verify a release (one step)
PERMANENCE-POLICY.md   URL / name-stability commitments
FORMAT-SPEC.md         machine-readable layout (auto-organization source)
```
The browsable tree here is the durable, permalink-stable **index**; the actual
signed bytes (payload zip + `SHA256SUMS` + `SHA256SUMS.asc`) ship as **GitHub
Release assets**.

## Channels
- **stable** — general-availability production releases (signed, fully gated).
- **rc** — release candidates for community testing (signed; may iterate rc1, rc2…).
- **demo** — runnable showcase builds, usable without a membership wall.

## Products
- **cowork** — CRAFT for Claude Cowork (first product).
- New products slot in additively under `products/` — see `products/_TEMPLATE-product/`.

## Verify before you trust
Always verify a download — see **[VERIFY.md](VERIFY.md)**.

## Stay current
Announcements: CRAFTFramework.ai blog · /craft-whats-new/ · /craft-changelog/.

> Status: scaffold (SP25 Phase 3). No public release published yet.
