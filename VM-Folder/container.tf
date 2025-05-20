resource "azurerm_storage_container" "nested-cont" {
  for_each              = var.container
  name                  = each.value.name
  storage_account_name    = each.value.storage_account_name
  container_access_type = each.value.container_access_type
  # depends_on = [ azurerm_storage_account.stg-nested ]

}