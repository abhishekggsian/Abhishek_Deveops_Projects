resource "azurerm_subnet" "test_subnet" {
  for_each             = var.new_subnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
  depends_on           = [azurerm_virtual_network.test_vnet]


}