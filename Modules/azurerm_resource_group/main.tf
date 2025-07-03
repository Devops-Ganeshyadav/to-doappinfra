resource "azurerm_resource_group" "rg_todo" {
  name     = var.rg_name
  location = var.rg_location
  
}
resource "azurerm_resource_group" "rg_todo1" {
  name     = "test-rg"
  location = "West Europe"
  
}