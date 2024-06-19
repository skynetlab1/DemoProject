terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.108.0"
    }
  }

  #  backend "azurerm" {
  #    subscription_id      = ""
  #    resource_group_name  = ""
  #    storage_account_name = ""
  #    container_name       = "state"
  #    key                  = "terraform.tfstate"
  #  }
#}

provider "azurerm" {
  #  subscription_id = ""
  features {}
}
