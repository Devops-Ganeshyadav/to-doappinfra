resource "azurerm_key_vault_secret" "vm_secret" {
  name         = var.secret_name
  
  value        = var.secret_value
  key_vault_id = data.azurerm_key_vault.kv_id.id
}