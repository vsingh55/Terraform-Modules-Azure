### Azure Kubernetes Service (AKS) Module 

```markdown
# Azure Kubernetes Service (AKS) Module

## Description
This module provisions an Azure Kubernetes Service (AKS) cluster with a default node pool and a service principal. It supports automatic scaling and uses the latest available Kubernetes version. It also configures network and Linux profile settings for the AKS cluster.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "aks" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//aks"

  project             = var.project
  env                 = var.env
  aks_location        = var.aks_location
  rg_name             = var.rg_name
  client_id           = var.client_id
  client_secret       = var.client_secret
  ssh_public_key      = var.ssh_public_key
}
```

## Inputs
The following variables are required by this module:

| Name                  | Description                                      | Type        |
|-----------------------|--------------------------------------------------|-------------|
| `project`             | The name of the project or application.         | string      |
| `env`                 | The environment (e.g., local, dev, prod).       | string      |
| `aks_location`        | The Azure region where the AKS cluster will be deployed. | string      |
| `rg_name`             | The name of the resource group.                  | string      |
| `client_id`           | The Client ID of the Service Principal.          | string      |
| `client_secret`       | The Client Secret of the Service Principal.      | string      |
| `ssh_public_key`      | Path to the SSH public key file for accessing the AKS nodes. | string      |

## Outputs
The following outputs are provided by this module:

| Name    | Description                        |
|---------|------------------------------------|
| `config` | The raw Kubernetes configuration for the AKS cluster. This can be used to configure `kubectl` for accessing the cluster. |
'