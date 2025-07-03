variable "secret_name" {
  description = "The name of the Key Vault Secret."
  
}
variable "secret_value" {
  description = "The value of the Key Vault Secret."    
  
}

variable "key_vault_id" {
  description = "The ID of the Key Vault where the secret will be stored."
  
}