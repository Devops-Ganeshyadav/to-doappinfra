data "azurerm_subnet" "dfnd_subnet" {
  name                 = var.dfnd_subnet_name
  virtual_network_name = "todo-infra-vnet"
  resource_group_name  = "rg-todo-infra"
}