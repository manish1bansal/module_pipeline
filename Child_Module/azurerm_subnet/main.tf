resource "azurerm_subnet" "sbnet" {
  for_each = var.sbnet
  name = each.value.sbnetname
  resource_group_name = each.value.rgname 
  address_prefixes = each.value.address_prefixes
  virtual_network_name = each.value.vnetname

}

output "return_subnet" {
  value =  azurerm_subnet.sbnet["sbnet1"].id
}

variable "sbnet" {}