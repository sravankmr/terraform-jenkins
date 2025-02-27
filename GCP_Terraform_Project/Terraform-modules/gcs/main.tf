resource "google_storage_bucket" "gcs_bucket" {
  name     = var.bucket_name
  location = var.location
  project  = var.project_id
}
