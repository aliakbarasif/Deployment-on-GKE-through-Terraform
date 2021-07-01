resource "google_compute_global_address" "global-static-ip" {
  project       = var.project
  name          = var.static_ip_name
  address_type  = var.static_address_type
  ip_version    = var.static_ip_version
}