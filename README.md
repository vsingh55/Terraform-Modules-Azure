# Terraform-Modules-Azure

Welcome to the `terraform-modules-azure` repository. This repository contains reusable Terraform modules for managing Azure resources. Our goal is to simplify and standardize the provisioning of Azure infrastructure using modularized Terraform code.

## What is Modularized Terraform Code?

Modularized Terraform code refers to the practice of breaking down your infrastructure into smaller, reusable pieces called modules. Each module manages a specific part of your infrastructure (e.g., resource groups, networks, compute resources).

### Benefits of Modularized Code

1. **Reusability:** Modules can be reused across different projects, reducing duplication.
2. **Maintainability:** Smaller, focused modules are easier to manage and update.
3. **Collaboration:** Teams can work on different modules simultaneously without conflicts.
4. **Consistency:** Modules ensure a consistent configuration across different environments.

### How It Works

Modules are defined in their own directories, with their own `main.tf`, `variables.tf`, and `outputs.tf` files. To use a module, you reference it in your Terraform configuration with the `source` argument pointing to the module’s path.

---

## How to Use

### **Accessing Modules**

To use any of the modules in this repository, you can refer to them directly in your terraform **main.tf** by specifying the source. Here’s an example of how to use the `resourcegroup` module.

#### **Defining and Initializing Variables Method**

Each module has its own `variables.tf` file which defines the required variables. Here’s how you can define and provide values for these variables:

#### Option 1: Providing Values Directly in `main.tf`

1. **Referencing Variables in Your `main.tf` File:**
   Define the variable values directly within the module block in your `main.tf` file.

   Example:

   ```hcl
   module "resource_group" {
     source  = "github.com/vsingh55/Terraform-Modules-Azure//resourcegroup"
     project  = "myproject"
     env      = "dev"
     location = "East US"
   }
   ```

   In this case, you don’t need a `variable.tf`, `variables.auto.tfvars` file since you are providing the values directly in the `main.tf` file.

   > **Use Case:**
This method is more feasible for modules with fewer variables or for quick and simple configurations where you prefer to define all parameters directly in the main.tf file for clarity.

#### Option 2: Using `variables.tf` File

1. **Create a `variables.tf` File:**
   Copy all the defined variables from the module's variable.tf file to your own variables.tf file of project directory.

   Provide the values within variables definion.

   Example `variables.tf` file:

   ```hcl
    variable "project" {
    type = string
    default = "myproject"   
    }

    variable "env" {
    type = string
    default = "dev"
    }

    variable "location" {
    description = "The location of the resource group"
    type        = string
    default     = "East US"
    }

   ```

   Terraform automatically loads variables from `variables.tf` files, so you don’t need to define these variables again in your `variables.auto.tf` and `main.tf` file.

2. **Reference Variables in `main.tf`:**
   Reference the variables in your module block without needing to provide their values directly.

   Example:

   ```hcl
   module "resource_group" {
     source = "github.com/vsingh55/Terraform-Modules-Azure//resourcegroup"

     project  = var.project
     env      = var.env
     location = var.location
   }
   ```
> **Use Case:**
This method is suitable when you have a standard set of variables that you want to use across multiple modules or when you prefer to separate variable definitions from your main configuration for better organization and maintainability.


#### Option 3: Using `variables.auto.tfvars` File

1. **Reference Variables in `main.tf`:**
   Reference the variables in your module block without needing to provide their values directly.

   Example:

   ```hcl
   module "resource_group" {
     source = "github.com/vsingh55/Terraform-Modules-Azure//resourcegroup"

     project  = var.project
     env      = var.env
     location = var.location
   }

**Create a `variables.tf` File:**
   Copy all the defined variables from the module's variable.tf file to your own variables.tf file of project directory.

   Provide the values within variables definion.

   Example `variables.tf` file:

   ```hcl
    variable "project" {
    type = string
    default = "myproject"   
    }

    variable "env" {
    type = string
    default = "dev"
    }

    variable "location" {
    description = "The location of the resource group"
    type        = string
    default     = "East US"
    }

   ```

3. **Create a `variables.auto.tfvars` File:**
   Define the values for the variables in a `.auto.tfvars` file in your project directory.

   Example `.auto.tfvars` file:

   ```hcl
   project  = "myproject"
   env      = "dev"
   location = "East US"
   ```

   Terraform automatically loads variables value from `variables.auto.tfvars` file.

> **Use Case:**
This method is ideal for managing configurations across different environments (e.g., dev, staging, prod). It allows you to keep your main configuration consistent while only changing the .auto.tfvars file for different environments, providing better flexibility and ease of management.

## Purpose

This repository is designed to house all the Terraform modules I have created for managing various Azure resources. Each module is well-documented and follows proper naming conventions, making it easy for anyone to use and integrate into their Terraform configurations.

 
## Usage

To use these modules, you can fork this repository and include the desired module in your Terraform configuration.

<!-- ### Example Usage

Here’s an example of how to use the `resourcegroup` and `network` modules in your Terraform configuration:

```hcl
module "resourcegroup" {
  source    = "path/to/resourcegroup"
  project   = "example"
  env       = "dev"
  location  = "East US"
}

module "network" {
  source      = "path/to/network"
  project     = "example"
  env         = "dev"
  rg_name     = module.resourcegroup.rg_name
  location    = "East US"
  vnet_cidr   = ["10.0.0.0/16"]
  subnet_cidr = ["10.0.1.0/24"]
  inbound_rules = [
    {
      name                       = "allow-ssh"
      priority                   = 100
      source_address_prefix      = "*"
      destination_address_prefix = "*"
      destination_port_range     = "22"
      protocol                   = "Tcp"
    }
  ]
}
``` -->

## Module Documentation

Each module comes with a `README.md` file that includes:

- **Description:** The purpose of the module.
- **Usage:** How to use the module.
- **Inputs:** The variables required by the module.
- **Outputs:** The outputs provided by the module.

---
## References:
For more clarity go and checkout [Repo](https://github.com/vsingh55/Automated-AKS-Cluster-Provisioning-Using-Terraform-and-Service-Principal.git) it's perfect starting point you can start learning modularized terraform code.

#### Blog 🖥️

Check out the Blog for deep understanding of modularized terraform. [click here](https://blogs.vijaysingh.cloud/modular-terraform-a-guide-to-efficient-infrastructure-as-code)

---
## Contributing

We welcome contributions! Please see our [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines on how to contribute.

## License

This repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more information.

