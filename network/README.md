### Network Module 

```markdown
# Network Module

## Description
This module creates a Virtual Network (VNet), Subnet, Network Security Group (NSG), and NSG rules in Azure.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "network" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//network"

  project      = var.project
  env          = var.env
  rg_name      = var.rg_name
  location     = var.location
  vnet_cidr    = var.vnet_cidr
  subnet_cidr  = var.subnet_cidr
  inbound_rules = var.inbound_rules
}
```

## Inputs
The following variables are required by this module:

| Name            | Description                               | Type            |
|-----------------|-------------------------------------------|-----------------|
| `project`       | The name of the project.                  | string          |
| `env`           | The environment (e.g., dev, prod).        | string          |
| `rg_name`       | The name of the resource group.           | string          |
| `location`      | The location of the network resources.    | string          |
| `vnet_cidr`     | The CIDR block for the VNet.              | list(string)    |
| `subnet_cidr`   | The CIDR block for the subnet.            | list(string)    |
| `inbound_rules` | The list of inbound rules for the NSG.    | list(object)    |

## Outputs
The following outputs are provided by this module:

| Name         | Description                        |
|--------------|------------------------------------|
| `vnet_name`  | The name of the virtual network.   |
| `subnet_name`| The name of the subnet.            |
| `nsg_name`   | The name of the network security group. |
| `vnet_id`    | The ID of the virtual network.     |
| `snet_id`    | The ID of the subnet.              |
| `nsg_id`     | The ID of the network security group. |
