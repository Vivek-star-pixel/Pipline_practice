terraform {
  required_version = ">= 1.3.0"
  backend "azurerm" {
    resource_group_name  = "container_rg"
    storage_account_name = "statefilestg1"
    container_name       = "statecontainer1"
    key                  = "statevky.tfstate"
    subscription_id      = "c062a425-c2d5-45ea-abe3-e00aca98b5cf"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c062a425-c2d5-45ea-abe3-e00aca98b5cf"
}
