# Policy Catalog

This directory contains OPA policies and tests for the lab-3-3 Terraform compliance checks.

## Policies

| Policy | Control | Severity | Remediation |
| --- | --- | --- | --- |
| AC-3 Access Enforcement | AC-3 | critical | Set `uniform_bucket_level_access = true` and `public_access_prevention = "enforced"` for buckets. Remove or narrow open firewall rules that allow management ports from `0.0.0.0/0`. |
| CM-6 Required Labels | CM-6 | medium | Add the required labels `project`, `environment`, `managed_by`, and `compliance_scope` to taggable resources. |
| SC-28 Encryption at Rest | SC-28 | high | Add an encryption block with `default_kms_key_name` referencing a customer-managed KMS key for each GCS bucket. |

## Test Coverage

Each policy has accompanying regression tests under the `tests/` directory with at least one passing and one failing fixture.

## Evidence

Policy test results are captured in `evidence/lab-3-3/opa-test-results.json`.
