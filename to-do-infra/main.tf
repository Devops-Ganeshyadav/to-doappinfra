module "resource_group" {
  source      = "../Modules/azurerm_resource_group"
  rg_name     = "rg-todo-infra"
  rg_location = "Central India"

}

module "virtual_network" {
  depends_on    = [module.resource_group]
  source        = "../Modules/azurerm_virtual_network"
  vnet_name     = "todo-infra-vnet"
  rg_name       = "rg-todo-infra"
  vnet_location = "Central India"
}

module "fnd_subnet" {
  depends_on       = [module.virtual_network,module.resource_group]
  source           = "../Modules/azurerm_subnet"
  subnet_name      = "todo-fnd-subnet"
  vnet_name        = "todo-infra-vnet"
  rg_name          = "rg-todo-infra"
  address_prefixes = ["10.0.1.0/24"]
}

module "bnd_subnet" {
  depends_on       = [module.virtual_network,module.resource_group]
  source           = "../Modules/azurerm_subnet"
  subnet_name      = "todo-bnd-subnet"
  vnet_name        = "todo-infra-vnet"
  rg_name          = "rg-todo-infra"
  address_prefixes = ["10.0.2.0/24"]
}

module "db_subnet" {
  depends_on       = [module.virtual_network,module.resource_group]
  source           = "../Modules/azurerm_subnet"
  subnet_name      = "todo-db-subnet"
  vnet_name        = "todo-infra-vnet"
  rg_name          = "rg-todo-infra"
  address_prefixes = ["10.0.3.0/24"]
}

module "bstn_subnet" {
  depends_on       = [module.virtual_network,module.resource_group]
  source           = "../Modules/azurerm_subnet"
  subnet_name      = "AzureBastionSubnet"
  vnet_name        = "todo-infra-vnet"
  rg_name          = "rg-todo-infra"
  address_prefixes = ["10.0.4.0/24"]
}

# yahan tak step 1 complete

module "todo_tijori" {
  depends_on = [ module.resource_group ]
  
  source     = "../Modules/azurerm_key_vault"
  rg_name    = "rg-todo-infra"
  
  key_vault_name = "todokitijori"
  key_vault_location = "Central India"
  
}

module "todo_public_ip" {
  depends_on = [ module.resource_group, ]
  source              = "../Modules/azurerm_public_ip"
  public_ip_name      = "todo-public-ip"
  rg_name             = "rg-todo-infra"
  public_ip_location  = "Central India"
}


module "nsg" {
  depends_on = [ module.resource_group ]
  source = "../Modules/azurerm_network_security_group"
  nsg_name = "todo-nsg-rule"
  nsg_location = "Central India"
  rg_name = "rg-todo-infra"
}

#  Yahan tak step 2 complete

module "bastion_host" {
  depends_on = [ module.bstn_subnet,module.virtual_network,module.resource_group ]
  source = "../Modules/azurerm_bastion_host"
  bastion_host_name = "my-bastion-host"
  bastion_host_location = "Central India"
  rg_name = "rg-todo-infra"
  bastion_ip_name = "my-bastion-ip"
  dbstn_subnet_name ="AzureBastionSubnet"
  vnet_name = "todo-infra-vnet"
  
}





