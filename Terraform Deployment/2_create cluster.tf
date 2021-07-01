resource "google_container_cluster" "signup-cluster" {
  name        = var.cluster
  project     = var.project
  description = var.cluster_des
  location    = var.region

  remove_default_node_pool = true
  initial_node_count       = var.initial_nodes

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "signup-cluster_preemptible_nodes" {
  name       = "${var.cluster}-node-pool"
  project    = var.project
  location   = var.region
  node_locations= ["us-east1-b"]
  cluster    = google_container_cluster.signup-cluster.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    service_account = var.service_account
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
    
  }
}