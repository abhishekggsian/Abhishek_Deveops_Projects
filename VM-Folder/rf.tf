resource "azurerm_resource_group" "rg-nested" {
  for_each = var.nested
  name     = each.value.name
  location = each.value.location
}



