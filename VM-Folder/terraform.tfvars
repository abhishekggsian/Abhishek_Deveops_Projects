nested = {
  "rg1" = {
    name     = "rg-test"
    location = "West US"
  }
  "rg2" = {
    name     = "rg-test2"
    location = "West US"
  }

}

nested_stg = {
  stg1 = {

    name                     = "stgtest1"
    resource_group_name      = "rg-test"
    location                 = "West US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {

    name                     = "stgtest2"
    resource_group_name      = "rg-test2"
    location                 = "West US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }

}
container = {
  kent1 = {
    name                  = "baksar"
    storage_account_name  = "stgtest1"
    container_access_type = "private"
  }
}
new_vnet = {
  vnet1 = {
    name                = "test-vnet"
    address_space       = ["15.10.1.1/18"]
    location            = "East US"
    resource_group_name = "rg-test"
  }
}
new_subnet = {
  subnet1 = {
    name                 = "test-subnet"
    resource_group_name  = "rg-test"
    virtual_network_name = "test-vnet"
    address_prefixes     = ["12.12.13.0/24"]
  }
}
new-nic = {
  nic1 = {
    name                = "test-nic"
   
    location            = "East US"
    resource_group_name = "rg-test"
    subnet_name         = "subnet1"
    public_ip_name      = "pip1"
    name      = "test-config"
    private_ip_address_allocation = "Dynamic"

  }
}
public-ip = {
  pip1 = {
    name                = "test-public-ip"
    location            = "East US"
    resource_group_name = "rg-test"
    allocation_method   = "Dynamic"
  }
}

virtual_VM = {
  vm1 = {
    name                  = "test-vm"
    location              = "East US"
    resource_group_name   = "rg-test"
    network_interface_id  = ["nic1"] # should be a list
    vm_size               = "Standard_DS1_v2"
    computer_name         = "abhihost"
    admin_username        = "adminuser"
    admin_password        = "Abhi@123456"

    storage_os_disk = {
      name              = "test-os-disk"
      caching           = "ReadWrite"
      create_option     = "FromImage"
      managed_disk_type = "Standard_LRS"
    }
  }
}


