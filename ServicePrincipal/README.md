Here’s the `README.md` for the Azure AD Service Principal module:

### Service Principal Module `README.md`

```markdown
# Service Principal Module

## Description
This module provisions an Azure AD Application, creates a corresponding Service Principal, and assigns it the Contributor role at the subscription level. It also generates a password for the Service Principal.

## Usage
To use this module, include the following code in your Terraform configuration:

```hcl
module "service_principal" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//serviceprincipal"

  project           = var.project
  env               = var.env
  spn               = var.spn
  subscription_id   = var.subscription_id
}
```

## Inputs
The following variables are required by this module:

| Name            | Description                                | Type   |
|-----------------|--------------------------------------------|--------|
| `project`       | The name of the project or application.    | string |
| `env`           | The environment (e.g., local, dev, prod).  | string |
| `spn`           | The prefix for the Service Principal name. | string |
| `subscription_id`| The Azure subscription ID where the role will be assigned. | string |

## Outputs
The following outputs are provided by this module:

| Name                        | Description                                        |
|-----------------------------|----------------------------------------------------|
| `spn_name`                  | The display name of the Azure AD Application.     |
| `service_principal_object_id`| The object ID of the Service Principal.           |
| `service_principal_tenant_id`| The tenant ID associated with the Service Principal.|
| `service_principal_application_id` | The application ID of the Service Principal.    |
| `client_id`                 | The client ID of the Azure AD Application.        |
| `client_secret`             | The password for the Service Principal.           |
'