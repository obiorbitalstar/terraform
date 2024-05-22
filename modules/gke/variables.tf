variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "location" {
  description = "The location of the cluster"
  type        = string
}

variable "initial_node_count" {
  description = "The initial number of nodes"
  type        = number
}

variable "machine_type" {
  description = "The machine type for the cluster"
  type        = string
}

variable "disk_size_gb" {
  description = "The size of the disk for each node"
  type        = number
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}