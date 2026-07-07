# consumers/dev/main.tf
terraform {
  required_version = ">= 1.6"
  required_providers {
    google = { source = "hashicorp/google", version = "~> 5.0" }
  }
}

provider "google" {
  project = "project-47caaef7-3623-4070-b93"
  region  = "us-central1"
}

module "data_bucket" {
  source = "../../modules/compliant-gcs-bucket"

  gcp_project        = "project-47caaef7-3623-4070-b93"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention_days     = 30
  bucket_name_suffix = "should-never-exist"
}

output "attestation" { value = module.data_bucket.compliance_attestation }
output "bucket_url"  { value = module.data_bucket.bucket_url }