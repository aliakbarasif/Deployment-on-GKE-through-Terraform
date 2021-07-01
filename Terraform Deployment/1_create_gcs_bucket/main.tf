resource "google_storage_bucket" "default" {
  name = var.bucket_name
  project = var.project
  storage_class = var.bucket_storage_class
  location = var.region
  force_destroy = true
}