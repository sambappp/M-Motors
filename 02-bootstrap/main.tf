terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}


provider "azurerm" {
  subscription_id = "94d107f4-6183-4130-b847-11826e8b3cef"
  features {}
}

module "resource_group" {
  source              = "../01-modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}
