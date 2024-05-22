resource "google_compute_network" "vpc_network" {
  name = "kubernetes-network"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "kubernetes-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network.name
}
