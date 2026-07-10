# GRC Evidence Chain Writeup

## Chain properties and proving artifacts

- Integrity: The bundle file and its SHA-256 sidecar prove integrity. The verification script recomputes the SHA-256 of the downloaded archive and compares it to the sidecar value stored alongside the object in S3.
- Authenticity: The Cosign signature bundle proves authenticity. The workflow generates an evidence bundle, signs it with Cosign, and stores the `.sig.bundle` artifact in the same S3 run prefix. The verification script validates that signature against Sigstore Rekor.
- Timeliness: The receipt JSON proves timeliness. It records the run ID, commit SHA, bundle key, and the capture timestamp, which anchors the evidence to a specific workflow execution.
- Preservation: The S3 Object Lock retention metadata proves preservation. The verification script reads the object retention on the uploaded bundle and confirms that it remains protected until a future retention date.

## Evidence artifacts in the vault

For a successful run, the following objects are expected under the run prefix in the evidence vault:

- `evidence-<RUN_ID>-<SHA>.tar.gz`
- `evidence-<RUN_ID>-<SHA>.tar.gz.sha256`
- `evidence-<RUN_ID>-<SHA>.tar.gz.sig.bundle`
- `receipt.json`
