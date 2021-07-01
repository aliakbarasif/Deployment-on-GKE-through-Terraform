provider "google" {
  # version     = "2.7.0"
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}
data "google_client_config" "current" {}

provider "helm" {
  kubernetes {
    host                   = "${google_container_cluster.signup-cluster.endpoint}"
    token                  = "${data.google_client_config.current.access_token}"

    client_certificate     = "${base64decode(google_container_cluster.signup-cluster.master_auth.0.client_certificate)}"
    client_key             = "${base64decode(google_container_cluster.signup-cluster.master_auth.0.client_key)}"
    cluster_ca_certificate = "${base64decode(google_container_cluster.signup-cluster.master_auth.0.cluster_ca_certificate)}"
  }
}