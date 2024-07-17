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

#### **_Example:_** Let's use resource group module into your infrastructure code.

Here's the updated section for the `README.md` with more detailed instructions about using the modules and handling variables:

---

## **How to Use**

### **Accessing Modules**

To use any of the modules in this repository, you can refer to them directly in your Terraform configuration by specifying the source. Here’s an example of how to use the `resourcegroup` module:

```hcl
module "resource_group" {
  source = "github.com/vsingh55/Terraform-Modules-Azure//resourcegroup"

  project  = var.project
  env      = var.env
  location = var.location
}
```

### Variables

Each module has its own `variables.tf` file where you can find the variables that need to be initialized. You can define these variables in your `.auto.tfvars` file or directly in your Terraform configuration. Here’s an example `.auto.tfvars` file for the `resourcegroup` module:

```hcl
project  = "myproject"
env      = "dev"
location = "East US"
```

> #### Important Note on Variables

If you use a `.auto.tfvars` file, you do not need to define the same variables in your Terraform configuration. The variables defined in the `.auto.tfvars` file are automatically loaded by Terraform. This helps keep your Terraform configuration files clean and more manageable. Here’s an example of how this works:

1. Define your variables in a `.auto.tfvars` file:

    ```hcl
    # variables.auto.tfvars
    project  = "myproject"
    env      = "dev"
    location = "East US"
    ```

2. Reference the module in your Terraform configuration without redefining the variables:

    ```hcl
    module "resource_group" {
      source = "github.com/vsingh55/Terraform-Modules-Azure//resourcegroup"
    }
    ```

Terraform will automatically use the values from the `.auto.tfvars` file when running `terraform plan` and `terraform apply`.

By using `.auto.tfvars` files, you ensure that your Terraform configuration files remain uncluttered and that the variable values are managed in a consistent manner across your projects.

---

This approach clarifies that users do not need to redefine variables in their Terraform configuration if they use `.auto.tfvars` files, and explains how this mechanism works.


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


## Contributing

We welcome contributions! Please see our [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines on how to contribute.

## License

This repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more information.

