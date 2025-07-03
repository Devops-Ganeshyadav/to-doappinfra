variable "public_ip_name" {
  description = "The name of the Public IP."
  type        = string  
  
}
variable "rg_name" {
  description = "The name of the resource group."
  type        = string
}
variable "public_ip_location" {
  description = "The location of the Public IP."
  type        = string
  default     = "West Europe"
}