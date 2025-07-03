data "azurerm_subnet" "bstn_subnet" {
  name                 = var.dbstn_subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.rg_name
}

data "azurerm_public_ip" "todo_public_ip" {
    name ="todo-public-ip"
  resource_group_name = "rg-todo-infra"
  
}