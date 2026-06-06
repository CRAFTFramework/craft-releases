#!/usr/bin/env bash
# craft-sign-release.sh — CRAFT release signing engine (CD-042 §8.3)
# Produces SHA256SUMS + detached SHA256SUMS.asc over a release directory.
#
# Usage:  scripts/craft-sign-release.sh <release-dir> [signing-key-email]
#   <release-dir>        directory whose contents are the release payload
#   [signing-key-email]  GPG signing identity (default: canonical CRAFT key)
#
# The detached-signature step is the HUMAN release step (CD-042 §7.3): it runs
# on Richard's machine with his private key. The agent/CI never holds the key.
set -euo pipefail
REL_DIR="${1:?usage: craft-sign-release.sh <release-dir> [key-email]}"
KEY_EMAIL="${2:-richard@craftframework.ai}"
cd "$REL_DIR"

# 1. Manifest — hash every file EXCEPT the signing artifacts, sorted (deterministic).
find . -type f ! -name 'SHA256SUMS' ! -name 'SHA256SUMS.asc' -print0 \
  | LC_ALL=C sort -z \
  | xargs -0 sha256sum > SHA256SUMS

# 2. Detached, armored signature over the manifest.
gpg --local-user "$KEY_EMAIL" --armor --detach-sign --output SHA256SUMS.asc SHA256SUMS

echo "Signed $(wc -l < SHA256SUMS) files in $REL_DIR with <$KEY_EMAIL>"
echo "  -> SHA256SUMS, SHA256SUMS.asc  (attach both as GitHub Release assets)"
