variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "credentials" {
  description = "The GCP credentials JSON"
  type        = string
  default     = "/home/obi/fkit.json"
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
  default     = "production"
}

variable "initial_node_count" {
  description = "The initial number of nodes"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "The machine type for the cluster"
  type        = string
  default     = "e2-micro"
}

variable "disk_size_gb" {
  description = "The size of the disk for each node"
  type        = number
  default     = 10
}
