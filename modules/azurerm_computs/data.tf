data "azurerm_subnet" "subnet-data" {
  for_each             = var.computes
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "pip-data" {
  for_each            = var.computes
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}
