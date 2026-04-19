resource "azurerm_resource_group" "rg-name" {
  name = "rg5"
  location = "west us"
}

resource "azurerm_storage_account" "sa_name" {
  name = "mystore971111"
  resource_group_name = azurerm_resource_group.rg-name
  location = azurerm_resource_group.rg-name
  account_tier = "Standard"
  account_replication_type = "LRS"

}