terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "iac"
      storage_account_name = "terraform202316"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
      use_oidc             = true
      client-id:          = var.client_id
      tenant-id:           = var.tenant_id
      subscription-id      = var.subscription_id
  }

}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state2-demo"
  location = "eastus"
}