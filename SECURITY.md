# Security policy

CRAFT for Claude Cowork is distributed as a **signed** release. The most important security property
here is that you can verify a download came from us and wasn't tampered with. If that property ever
looks broken, we want to know **privately and fast**.

## Report privately — never in a public thread

Email **security@craftframework.ai**. Please do **not** post any of the following in a public
Discussion (or anywhere public), because public disclosure could put other users at risk:

- A release whose **signature or checksum does not verify**.
- Anything suggesting the **signing key** is compromised, or that a release was published that we
  didn't author.
- A **vulnerability** in a distributed CRAFT product.
- Any way to make a malicious file appear as a legitimate CRAFT release.

Include: the exact **release tag** (e.g. `craft-for-claude-cowork-v.b0001.p202606.01b`), what you
observed (the signature/checksum output, the hashes you got), and how to reproduce it. If you can't
reach email, contact us through any official channel on **craftframework.ai** and ask for a private
security contact.

## What happens next

- We aim to **acknowledge** your report quickly and keep you updated as we investigate.
- We won't take public action that exposes the issue before users can protect themselves. Coordinated
  disclosure is appreciated.
- If a key or release is affected, we'll publish a signed advisory, rotate keys if needed, and note it
  in the changelog on craftframework.ai.

## If a download fails verification

**Stop using the file immediately.** Do not run it. Re-download from the official **GitHub Releases**
page for this repository, verify it again, and if it still fails, report it privately as above. A
failed verification means the bytes are not what we signed — treat them as untrusted.

## How we distribute (so you can spot a fake)

- The **only** official place to download CRAFT for Claude Cowork is this repository's **GitHub
  Releases** page and the download link on **craftframework.ai**. We do **not** distribute builds by
  direct message, email attachment, or any third-party mirror.
- Every release is **signed**, and each release lists its checksums so you can verify it.
- We will **never** ask you to run a script, paste a command, or install a build from somewhere other
  than the official Releases page. Anyone who does is not us — please report it.

## This is a free public beta

CRAFT for Claude Cowork is currently a **free public beta** — no membership or payment is required to
download or run it. Terms: **craftframework.ai/terms**.
