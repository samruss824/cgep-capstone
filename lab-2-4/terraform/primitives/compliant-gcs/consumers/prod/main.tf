# consumers/prod/main.tf
module "data_bucket" {
  source = "../../modules/compliant-gcs-bucket"

  gcp_project        = "project-47caaef7-3623-4070-b93"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention_days     = 365
  bucket_name_suffix = "prod-data-001"
}