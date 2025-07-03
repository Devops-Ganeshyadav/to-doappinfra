variable "bastion_host_name" {
  description = "The name of the Bastion Host"
  type        = string
  
}

variable "bastion_host_location" {
  description = "The location of the Bastion Host"
  type        = string

}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string

}

variable "bastion_ip_name" {
  description = "The name of the Bastion IP configuration"
  type        = string

}

variable "dbstn_subnet_name" { }
variable "vnet_name" { }
