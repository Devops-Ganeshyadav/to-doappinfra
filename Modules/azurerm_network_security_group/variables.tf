variable "nsg_name" {
  description = "The name of the Network Security Group."
  type        = string  
  
}

variable "nsg_location" {
  description = "The location where the Network Security Group will be created."
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group."
  type        = string
}