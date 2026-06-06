# SPDX-License-Identifier: LicenseRef-CRAFT-Proprietary
# (C) 2025-2026 Ketelsen Digital Solutions LLC. All Rights Reserved.
# CRAFTFramework.ai — Licensed via membership. Terms: craftframework.ai/terms

# _TEMPLATE-product (not a release)

Demonstrates that the distribution layout scales to **multiple products with zero
structural change** (CD-042 §3.4 measurement). To add a new CRAFT product:

1. Copy this folder to `products/<new-product>/`.
2. Create the three channel dirs: `stable/default/`, `rc/default/`, `demo/default/`.
3. Nothing else in the scheme changes — naming, signing, and website emit all reuse
   the same (product, channel, variant) address.

This folder ships no release artifacts and is ignored by the release pipeline.
