provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "acr_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.acr_rg.name
  location            = azurerm_resource_group.acr_rg.location
  sku                 = "Basic"
  admin_enabled       = true
}
