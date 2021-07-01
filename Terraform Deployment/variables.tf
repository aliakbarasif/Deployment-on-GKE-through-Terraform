######################### Cluster Variables ############################
variable "service_account" {
  default = ""
}

variable "credentials" {
  default = "gcp_credential.json"
}

variable "project" {
  default = "altrunic-meta"
}

variable "cluster" {
  default = "signup"
}

variable "cluster_des" {
  default = "GKE Cluster"
}

variable "region" {
  default = "us-east1"
}

variable "initial_nodes" {
  default = 1
}

variable "machine_type" {
  default = "e2-medium"
}
########################################################################
######################### Static IP ####################################
variable "static_ip_name" {
  default = "global-static-ip-1"
}

variable "static_address_type" {
  default = "EXTERNAL"
}

variable "static_ip_version" {
  default = "IPV4"
}
########################################################################
######################### Helm Release #################################
variable "helm_version" {
  default = "v2.13.1"
}
########################################################################