RG = {
  rg1 = {
    rg_name  = "Apple"
    location = "Central India"
  }
}
vnet = {

  vnet1 = {
    vnet_name     = "Dlink"
    location      = "Central India"
    rg_name       = "Apple"
    address_space = ["10.0.0.0/16"]
  }
}
subnets = {

  subnet1 = {

    subnet_name      = "frontendvm-subnet"
    rg_name          = "Apple"
    vnet_name        = "Dlink"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {

    subnet_name      = "backendvm-subnet"
    rg_name          = "Apple"
    vnet_name        = "Dlink"
    address_prefixes = ["10.0.2.0/24"]
  }
}
pip = {

  pip1 = {

    pip_name          = "frontendvm_pip"
    rg_name           = "Apple"
    location          = "Central India"
    allocation_method = "Static"
  }
  pip2 = {

    pip_name          = "backendvm_pip"
    rg_name           = "Apple"
    location          = "Central India"
    allocation_method = "Static"
  }
}
vms = {
  vm1 = {
    vm_name                         = "frontend-vm"
    rg_name                         = "Apple"
    location                        = "Central India"
    nic_name                        = "frontendvm_nic"
    pip_name                        = "frontendvm_pip"
    vnet_name                       = "Dlink"
    subnet_name                     = "frontendvm-subnet"
    size                            = "Standard_D4_v5"
    admin_username                  = "adminuser"
    admin_password                  = "Paswsword@123"
    disable_password_authentication = "false"
  }
  vm2 = {
    vm_name                         = "backend-vm"
    rg_name                         = "Apple"
    location                        = "Central India"
    nic_name                        = "backendndvm_nic"
    pip_name                        = "backendvm_pip"
    vnet_name                       = "Dlink"
    subnet_name                     = "backendvm-subnet"
    size                            = "Standard_D4_v5"
    admin_username                  = "adminuser1"
    admin_password                  = "Paswsword@1234"
    disable_password_authentication = "false"
  }
}