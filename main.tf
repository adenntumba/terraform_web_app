# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG-Storage"
    storage_account_name = "savestorageterraform"
    container_name       = "state-terraform"
    key                  = "webapp.terraform.tfstate"
  }
}