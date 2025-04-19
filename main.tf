provider "azurerm" {
  subscription_id = "cfe6a4c8-dde8-452b-9198-30f409fd9c67"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "github-workflow"
  location = "East US"
}

resource "azurerm_container_registry" "example" {
  name                = "exampleacrregistry123" # globally unique
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
  admin_enabled       = true
}
