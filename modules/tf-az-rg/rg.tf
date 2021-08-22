resource "azurerm_resource_group" "resource_group" {
  name     = var.rgname
  location = var.rglocation
  tags     = var.rgtags
}