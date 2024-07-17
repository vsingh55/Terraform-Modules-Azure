### SSH Public Key Module 

```markdown
# SSH Public Key Module

## Description
This module creates an Azure SSH Public Key resource. It is used to manage SSH public keys that can be utilized for authenticating with Azure virtual machines.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "ssh_public_key" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//ssh-public-key"

  project           = var.project
  env               = var.env
  location          = var.location
  rg_name           = var.rg_name
  vm_name           = var.vm_name
  ssh_public_key_path = var.ssh_public_key_path
}
```

## Inputs
The following variables are required by this module:

| Name                  | Description                                        | Type   |
|-----------------------|----------------------------------------------------|--------|
| `project`             | The name of the project or application.            | string |
| `env`                 | The environment (e.g., local, dev, prod).          | string |
| `location`            | The location where the SSH public key will be created. | string |
| `rg_name`             | The name of the resource group where the SSH key will be stored. | string |
| `vm_name`             | The name of the virtual machine associated with the SSH public key. | string |
| `ssh_public_key_path` | The path to the SSH public key file.                | string |

## Outputs
The following outputs are provided by this module:

| Name    | Description                                        |
|---------|----------------------------------------------------|
| `pip_name` | The name of the SSH public key resource.         |
| `pip_id`   | The ID of the SSH public key resource.           |
`