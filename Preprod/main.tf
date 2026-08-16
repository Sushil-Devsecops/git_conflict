module "resource_group" {
  source = "../Module/azurerm_resource_group"
  RG     = var.RG
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../Module/azurerm_virtual_network"
  vnet       = var.vnet
}
module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../Module/azurerm_subnet"
  subnets    = var.subnets
}
module "public_ip" {
  depends_on = [module.subnet]
  source     = "../Module/azurerm_public_ip"
  pip        = var.pip

}
module "virtual_machine" {
  depends_on = [module.public_ip]
  source     = "../Module/azurerm_virtual_machine"
  vms        = var.vms

}