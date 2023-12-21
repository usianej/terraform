terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate19531"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
    subscription_id      = "e77db16d-5ea4-4932-b1f7-066315e7b399"
    tenant_id            = "9292348b-7b8b-44e5-a9c9-5c933c9e33da"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "e77db16d-5ea4-4932-b1f7-066315e7b399"
  client_id       = "e6dce29d-7530-4781-b686-de40b09d5502"
  client_secret   = "bDL8Q~b7U~InKQ~la5SRB_zcFEbKCruiTUnqocBd"
  tenant_id       = "9292348b-7b8b-44e5-a9c9-5c933c9e33da"
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}