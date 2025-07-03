resource "azurerm_network_interface" "vm_nic" {
  name                = var.nic_name
  location            = var.nic_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.fnd_subnet.id
    private_ip_address_allocation = "Dynamic"
    
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.rg_name
  location            = var.vm_location
  size                = "Standard_F2"
  admin_username      = 
  admin_password = 
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.vm_nic.id
  ]

  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.vm_publisher
    offer     = var.vm_offer
    sku       = var.vm_sku
    version   = var.vm_osversion
  }
}