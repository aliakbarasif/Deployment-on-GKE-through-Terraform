terraform {
  required_version = ">=0.12"
  # backend "remote" {
  #   organization = "Amroz"
  #   workspaces {
  #     name = "gke-with-terraform"
  #   }
  # }
  backend "gcs" {
    bucket  = "altrunic-meta-terraform-state"
    prefix  = "signup"
    credentials = "gcp_credential.json"
  }
}