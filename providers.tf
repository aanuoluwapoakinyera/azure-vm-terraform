terraform {
    required_version = ">=1.0"

    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "=4.1.0"
      }

    }
    backend "azurerm" {
        storage_account_name = "aanuazurestorage"
        container_name = "tfstate"
        key = "terraform.tfstate"
        resource_group_name = "azstorage"
        subscription_id = "adf8e56a-838a-4e44-a62c-99577f080b2b"
        tenant_id = "db3f8cf4-7578-4c45-9341-916521b9a144"
    }
}
provider "azurerm" {
    features {
        resource_group {
            prevent_deletion_if_contains_resources = false
        }
    }
    subscription_id = "adf8e56a-838a-4e44-a62c-99577f080b2b"
}

resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}
