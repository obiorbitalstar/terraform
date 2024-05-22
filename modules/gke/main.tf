resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.location

  initial_node_count = var.initial_node_count

  node_config {
    machine_type  = var.machine_type
    disk_type     = "pd-standard"
    disk_size_gb  = var.disk_size_gb
  }

  # Ensure deletion protection is set to false
  deletion_protection = false

  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${self.name} --region ${self.location} --project ${var.project_id}"
  }
}
