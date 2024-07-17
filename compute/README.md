### Compute Module 

```markdown
# Compute Module

## Description
This module creates network interfaces and Linux virtual machines (VMs) in Azure. It sets up network interfaces for each VM and provisions VMs with specified configurations.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "compute" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//compute"

  rg_name             = var.rg_name
  location            = var.location
  env                 = var.env
  subnet_id           = var.subnet_id
  ssh_public_key      = var.ssh_public_key
  nic_map             = var.nic_map
  vm_map              = var.vm_map
}
```

## Inputs
The following variables are required by this module:

| Name                | Description                                             | Type                                             |
|---------------------|---------------------------------------------------------|--------------------------------------------------|
| `rg_name`           | The name of the resource group.                        | string                                           |
| `location`          | The location where the resources will be created.      | string                                           |
| `env`               | The environment (e.g., dev, prod).                      | string                                           |
| `subnet_id`         | The ID of the subnet in which to create the network interfaces. | string                                           |
| `ssh_public_key`    | The SSH public key retrieved from Azure Key Vault.      | string                                           |
| `nic_map`           | A map of network interface configurations.              | map(object({ nic_name = string, ip_config_name = string })) |
| `vm_map`            | A map of virtual machine configurations.                | map(object({ vm_name = string, vm_size = string, os_disk = string, admin_ssh_key_user = string, custom_data_script = string })) |

## Outputs
The following outputs are provided by this module:

| Name       | Description                             |
|------------|-----------------------------------------|
| `nic_name` | The names of the network interfaces created. |
| `vm_name`  | The names of the virtual machines created.    |
