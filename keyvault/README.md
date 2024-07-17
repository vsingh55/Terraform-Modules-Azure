### Key Vault Module 

```markdown
# Key Vault Module

## Description
This module creates an Azure Key Vault and configures it to store SSH keys and Service Principal credentials.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "key_vault" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//keyvault"

  project                = var.project
  env                    = var.env
  rg_name                = var.rg_name
  location               = var.location
  spn_name               = var.spn_name
  client_id              = var.client_id
  client_secret          = var.client_secret
  ssh_private_key_name   = var.ssh_private_key_name
  ssh_public_key_name    = var.ssh_public_key_name
  ssh_private_key_path   = var.ssh_private_key_path
  ssh_public_key_path    = var.ssh_public_key_path
}
```

## Inputs
The following variables are required by this module:

| Name                   | Description                                 | Type   |
|------------------------|---------------------------------------------|--------|
| `project`              | The name of the project.                    | string |
| `env`                  | The environment (e.g., dev, prod).          | string |
| `rg_name`              | The name of the resource group.             | string |
| `location`             | The location of the Key Vault.              | string |
| `spn_name`             | The name of the Service Principal.          | string |
| `client_id`            | The Client ID of the Service Principal.     | string |
| `client_secret`        | The Client Secret of the Service Principal. | string |
| `ssh_private_key_name` | Name for the SSH private key secret.        | string |
| `ssh_public_key_name`  | Name for the SSH public key secret.         | string |
| `ssh_private_key_path` | Path to the SSH private key file.           | string |
| `ssh_public_key_path`  | Path to the SSH public key file.            | string |

## Outputs
The following outputs are provided by this module:

| Name             | Description                         |
|------------------|-------------------------------------|
| `kv_id`          | The ID of the Key Vault.            |
| `kv_name`        | The name of the Key Vault.          |
| `ssh_public_key` | The value of the SSH public key.    |
