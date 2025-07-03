resource "azurerm_bastion_host" "bstn_host" {
  name                = var.bastion_host_name
  location            = var.bastion_host_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                 = var.bastion_ip_name
    subnet_id            = data.azurerm_subnet.bstn_subnet.id
    
    public_ip_address_id = data.azurerm_public_ip.todo_public_ip.id
  }
}