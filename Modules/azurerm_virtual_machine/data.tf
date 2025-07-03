data "azurerm_subnet" "d_subnet" {
  name                 = var.subnet_name
  virtual_network_name = "todo-infra-vnet"
  resource_group_name  = "rg-todo-infra"
}