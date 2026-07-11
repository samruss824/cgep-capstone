# Lab 5.2 AWS Security Services Baseline

This baseline provisions:
- CloudTrail for AU-2, AU-12, and AU-10
- Security Hub for RA-5 and SI-4
- AWS Config for CM-2, CM-6, and CM-8

## Files
- main.tf: shared provider, locals, and common Terraform configuration
- cloudtrail.tf: CloudTrail bucket, policy, and trail resources
- security_hub.tf: Security Hub account and standards subscriptions
- config.tf: AWS Config recorder, delivery channel, and supporting IAM/S3 resources
- variables.tf: configurable input variables
- outputs.tf: useful outputs for the deployed baseline

## Control coverage
- CloudTrail satisfies AU-2, AU-12, and AU-10 by enabling multi-region logging, global service events, and log file validation.
- Security Hub satisfies RA-5 and SI-4 by enabling the AWS Security Hub account and standards subscriptions.
- AWS Config satisfies CM-2, CM-6, and CM-8 by recording configuration changes and delivering them to an S3 bucket.

## Evidence
- Security Hub findings were captured to evidence/lab-5-2/security-hub-findings.json.
- If this evidence was signed with the Lab 2.5 capture-evidence script, record the resulting S3 VersionId here once available.
