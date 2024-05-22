# Terraform GKE Cluster Setup

This repository contains Terraform configurations for setting up a Google Kubernetes Engine (GKE) cluster.

## Description

The Terraform configurations in this repository will:
- Create a GKE cluster.
- Configure the necessary network and compute resources.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) installed.
- A Google Cloud project with billing enabled.
- Appropriate IAM roles for managing GKE and networking resources.

## Usage

### Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/obiorbitalstar/terraform.git
    cd terraform
    ```

2. Create a `terraform.tfvars` file to set the necessary variables:
    ```hcl
    project_id = "your-gcp-project-id"
    region     = "your-gcp-region"
    credentials = "path/to/your/service/account/key.json"
    cluster_name = "your-cluster-name"
    initial_node_count = 3
    machine_type = "e2-medium"
    disk_size_gb = 30
    zone = "your-gcp-zone"
    ```

3. Initialize Terraform:
    ```bash
    terraform init
    ```

4. Apply the Terraform configuration:
    ```bash
    terraform apply -var-file="path/to/your/terraform.tfvars" -auto-approve
    ```

### Outputs

After applying the Terraform configuration, the following outputs will be available:
- `gke_cluster_name`: Name of the GKE cluster.
- `gke_cluster_endpoint`: Endpoint for the GKE cluster.
- `gke_cluster_master_version`: Version of the GKE master.

## Cleanup

To destroy the infrastructure created by Terraform:
```bash
terraform destroy -var-file="path/to/your/terraform.tfvars" -auto-approve
```

