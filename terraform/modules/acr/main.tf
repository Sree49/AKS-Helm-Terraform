resource "azurerm_container_registry" "acr" {
  name                = "acr12345"
  resource_group_name = var.RG_Name
  location            = var.RG_Location
  sku                 = "Standard"
  admin_enabled       = true
}
