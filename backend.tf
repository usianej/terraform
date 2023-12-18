terraform {
  backend "azurerm" {
    resource_group_name  = "iac"
    storage_account_name = "terraform2dssf02316"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
    client_id            = var.client_id
    tenant_id            = var.tenant_id
    subscription_id      = var.subscription_id
  }
}
