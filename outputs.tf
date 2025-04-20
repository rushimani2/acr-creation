output "acr_username" {
  value     = azurerm_container_registry.acr.admin_username
  sensitive = true  # Ensure that the username is treated as sensitive
}

output "acr_password" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true  # Ensure that the password is treated as sensitive
}

output "acr_login_server" {
  value     = azurerm_container_registry.acr.login_server
  sensitive = false  # This is not sensitive, so we can safely output it
}
