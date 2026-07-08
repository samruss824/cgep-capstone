# Policy Catalog

This directory contains the OPA policies for Lab 3-4, covering both GCP and AWS Terraform examples.

## Policy Files by Cloud

| Control | GCP Policy | AWS Policy | Purpose |
| --- | --- | --- | --- |
| AC-3 | [ac3_no_public.rego](ac3_no_public.rego) | [ac3_no_public_aws.rego](ac3_no_public_aws.rego) | Ensures buckets are not publicly exposed and public access blocks are enforced. |
| CM-6 | [cm6_required_tags.rego](cm6_required_tags.rego) | [cm6_required_tags_aws.rego](cm6_required_tags_aws.rego) | Ensures required compliance tags are present. |
| SC-28 | [sc28_encryption.rego](sc28_encryption.rego) | [sc28_encryption_aws.rego](sc28_encryption_aws.rego) | Ensures buckets use encryption at rest. |

## Verification Flow

The policy gate script at [scripts/policy-gate.sh](../scripts/policy-gate.sh) evaluates the generated Terraform plan against all four namespaces and writes the results to [evidence/lab-3-4/conftest-pass.json](../evidence/lab-3-4/conftest-pass.json) and [evidence/lab-3-4/conftest-fail.json](../evidence/lab-3-4/conftest-fail.json).

## Evidence

The pass and fail runs are captured in the evidence folder for the compliant and broken workspaces.
