resource "azurerm_virtual_network" "test_vnet" {
  for_each            = var.new_vnet
  name                = each.value.name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  depends_on          = [azurerm_resource_group.rg-nested]
}
