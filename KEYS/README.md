<!--
SPDX-License-Identifier: LicenseRef-CRAFT-Demo
(C) 2025-2026 Ketelsen Digital Solutions LLC. — Free under the CRAFT Demo license (craftframework.ai/terms)
-->

# CRAFT release signing keys

This directory holds the public key used to sign every CRAFT release.

**File:** `craft-release-signing.pub.asc`
**Signer:** Richard Ketelsen <richard@craftframework.ai>
**Key type:** RSA 4096
**Created:** 2026-04-18  ·  **Expires:** 2028-04-17
**Fingerprint:**

```
F33B 001E DDAA 0061 0CF4  D6AF 90E8 EC93 25E1 5218
```

Releases ship a `SHA256SUMS` manifest and a detached `SHA256SUMS.asc`
signature made with this key. To verify a download, see
[../VERIFY.md](../VERIFY.md).

Always confirm the fingerprint above matches the key you import. The same
fingerprint is published on craftframework.ai.
