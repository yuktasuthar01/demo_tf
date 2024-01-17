resource "azurerm_resource_group" "rg" {
  name     = "learn-90f797dc-06a8-4ca2-8808-d9164554d372"
  location = "WestUS"
}

resource "azurerm_storage_account" "stg" {
  name                     = "cloudshell663387487"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
