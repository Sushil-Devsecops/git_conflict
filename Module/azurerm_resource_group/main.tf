variable "RG" {
  
}

resource "azurerm_resource_group" "resourcegp" {
  for_each = var.RG
  name     = each.value.rg_name
  location = each.value.location
}