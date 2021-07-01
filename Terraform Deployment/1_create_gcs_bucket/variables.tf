#########################Create Gcs Bucket############################
variable "bucket_name" {
  default = "altrunic-meta-terraform-state"
}
variable "bucket_storage_class" {
  default = "REGIONAL"
}

variable "project" {
  default = "altrunic-meta"
}

variable "region" {
  default = "us-east1"
}

variable "credentials" {
  default = "gcp_credential.json"
}
########################################################################
