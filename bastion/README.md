### Azure Bastion Module 
```markdown
# Azure Bastion Module

## Description
This module creates an Azure Bastion Host along with the required subnet and public IP address. Azure Bastion provides secure and seamless RDP and SSH connectivity to your virtual machines directly in the Azure portal.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "bastion" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//bastion"

  project      = var.project
  env          = var.env
  location     = var.location
  rg_name      = var.rg_name
  vnet_name    = var.vnet_name
}
```

## Inputs
The following variables are required by this module:

| Name          | Description                                     | Type   |
|---------------|-------------------------------------------------|--------|
| `project`     | The name of the project.                        | string |
| `env`         | The environment (e.g., dev, prod).              | string |
| `location`    | The Azure region where the resources will be created. | string |
| `rg_name`     | The name of the resource group.                 | string |
| `vnet_name`   | The name of the virtual network where the Bastion will be deployed. | string |

## Outputs
The following outputs are provided by this module:

| Name      | Description                        |
|-----------|------------------------------------|
| `bas_pip` | The ID of the public IP address assigned to the Bastion Host. |
