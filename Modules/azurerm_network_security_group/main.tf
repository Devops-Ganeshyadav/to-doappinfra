resource "azurerm_network_security_group" "vm_nsg" {
  name                = var.nsg_name
  location            = var.nsg_location
  resource_group_name = var.rg_name

  security_rule {
    name                       = "todo-nsg"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}