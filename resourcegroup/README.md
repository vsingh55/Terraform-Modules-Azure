### Resource Group Module 

```markdown
# Resource Group Module

## Description
This module creates an Azure Resource Group.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "resource_group" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//resourcegroup"

  project  = var.project
  env      = var.env
  location = var.location
}
```

## Inputs
The following variables are required by this module:

| Name     | Description                       | Type   |
|----------|-----------------------------------|--------|
| `project` | The name of the project.           | string |
| `env`     | The environment (e.g., dev, prod).| string |
| `location`| The location of the resource group| string |

## Outputs
The following outputs are provided by this module:

| Name          | Description                          |
|---------------|--------------------------------------|
| `rg_name`     | The name of the resource group.      |
| `rg_location` | The location of the resource group.  |
