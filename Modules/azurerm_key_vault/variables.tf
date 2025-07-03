variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string              


  
}
variable "key_vault_location" {
  description = "The location where the Key Vault will be created."
  type        = string
  
}

variable "rg_name" {
  description = "The name of the resource group."
  type        = string
}