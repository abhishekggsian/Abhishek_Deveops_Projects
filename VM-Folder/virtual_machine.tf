# resource "azurerm_virtual_machine" "nestedVM" {
#      for_each = var.virtual_VM
#      name                  = each.value.name
#      location              = each.value.location
#      resource_group_name   = each.value.resource_group_name
#      network_interface_ids = each.value.network_interface_id
#      vm_size              = each.value.vm_size
#       computer_name  = each.value.computer_name
#      admin_username = each.value.admin_username
#      admin_password = each.value.admin_password
     
#      storage_os_disk {
#      name              = each.value.storage_os_disk.name
#      caching           = each.value.storage_os_disk.caching
#      create_option     = each.value.storage_os_disk.create_option
#      managed_disk_type = each.value.storage_os_disk.managed_disk_type
#      }
     
     
     
# }

resource "azurerm_virtual_machine" "nestedVM" {
  for_each            = var.virtual_VM
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  network_interface_ids = each.value.network_interface_id
  vm_size             = each.value.vm_size

  storage_os_disk {
    name              = each.value.storage_os_disk.name
    caching           = each.value.storage_os_disk.caching
    create_option     = each.value.storage_os_disk.create_option
    managed_disk_type = each.value.storage_os_disk.managed_disk_type
  }

  os_profile {
    computer_name  = each.value.computer_name
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
  }

  os_profile_windows_config {
    provision_vm_agent = true
  }

  # Add this if you're using a public image
#   storage_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2019-Datacenter"
#     version   = "latest"
#   }
}
