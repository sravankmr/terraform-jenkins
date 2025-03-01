module "iam" {
  source    = "../../modules/iam"
  project_id = "my-gcp-project-prod"
  iam_roles = {
    "roles/editor" = "user:prod-user@example.com"
  }
}

module "service_accounts" {
  source             = "../../modules/service-accounts"
  service_account_id = "prod-sa"
  display_name       = "Production Service Account"
}
