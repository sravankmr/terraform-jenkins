terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket"
    prefix  = "staging/terraform.tfstate"
  }
}
