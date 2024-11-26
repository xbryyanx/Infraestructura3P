terraform {
    backend "azurerm" {
      resource_group_name = "DefaultResourceGroup-EUS"
      storage_account_name = "711bryanstorage"
      container_name = "711-75182-tfstate"
      key = "terraform.tfstate"
    }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" {
  features {

  }
}