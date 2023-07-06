resource "azurerm_resource_group" "apprg" {
  name     = local.resource_group_name
  location = local.location
}

resource "azurerm_virtual_network" "appnetwork" {
  name                = local.virtual_network
  address_space       = [local.virtual_network_address_space]
  location            = local.location
  resource_group_name = local.resource_group_name
  depends_on = [ azurerm_resource_group.apprg ]
}

resource "azurerm_subnet" "subnetA" {
  name                 = "SubnetA"
  resource_group_name  = local.resource_group_name
  virtual_network_name = local.virtual_network
  address_prefixes     = [cidrsubnet(local.virtual_network_address_space,8,0)]
 depends_on = [ azurerm_virtual_network.appnetwork ]
}

