terraform {
  backend "gcs" {
    bucket = "timer_state_file"
    prefix = "terraform/state"
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project_id
  region      = var.region
}

module "gke" {
  project_id         = var.project_id
  source             = "./modules/gke"
  cluster_name       = var.cluster_name
  location           = var.region
  initial_node_count = var.initial_node_count
  machine_type       = var.machine_type
  disk_size_gb       = var.disk_size_gb
}

module "networking" {
  source = "./modules/networking"
  region = var.region
}
