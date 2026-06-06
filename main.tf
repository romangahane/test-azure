# Configure the Azure provider, you can have many
# if you use azurerm provider, it's source is hashicorp/azurerm
# short for registry.terraform.io/hashicorp/azurerm


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
  }

  required_version = ">= 1.9.0"
}
# configures the provider

provider "azurerm" {
  features {}
  subscription_id = "55f61365-73d4-47a7-a591-631e3ce0d8de"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

