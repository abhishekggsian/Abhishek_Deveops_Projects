resource "azurerm_public_ip" "pubip" {
  for_each            = var.public-ip
  name                = each.value.name                   # 🟢 FIXED
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
}


resource "azurerm_network_interface" "nic25" {
     for_each            = var.new-nic
     name                = each.value.name
     location            = each.value.location
     resource_group_name = each.value.resource_group_name
     
     ip_configuration {
     name                          = each.value.name
     subnet_id                    = azurerm_subnet.test_subnet[each.value.subnet_name].id
     private_ip_address_allocation = each.value.private_ip_address_allocation
     public_ip_address_id         = azurerm_public_ip.pubip[each.value.public_ip_name].id
     }
     depends_on = [azurerm_subnet.test_subnet]
  
}