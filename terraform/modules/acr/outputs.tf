output "container-name" {
  value = azurerm_container_registry.acr.name
}

output "container-login-server" {
  value = azurerm_container_registry.acr.login_server
}

output "container-id" {
  value = azurerm_container_registry.acr.id
}