<!--
SPDX-License-Identifier: LicenseRef-CRAFT-Demo
(C) 2025-2026 Ketelsen Digital Solutions LLC. — Free under the CRAFT Demo license (craftframework.ai/terms)
-->

# _TEMPLATE-product (not a release)

Shows that the distribution layout scales to **multiple products with zero structural change**
(CD-042 §3). To add a new CRAFT product:

1. Copy this folder to `products/<new-product>/` — use the full product slug (e.g.
   `craft-for-claude-cowork`), never the bare platform name.
2. Create the three channel index dirs: `stable/default/`, `rc/default/`, `demo/default/`.
3. Nothing else changes — release tags, signing, and website emit all reuse the same
   (product, channel, variant) address. Downloads ship as **GitHub Release assets**, not files in
   these folders; release tags use the canonical CRAFT version
   (`<product>-v.bNNNN.pYYYYMM.LLx` beta / `<product>-vM.NNNN.pYYYYMM.LLx` release).

This folder ships no release artifacts and is ignored by the release pipeline.
