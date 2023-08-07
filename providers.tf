terraform {
    cloud {
    organization = "wolverine007"

    workspaces {
      name = "workspace-cli"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.10.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
  
  
  
