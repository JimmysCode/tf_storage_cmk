resource "azurerm_storage_account" "storeacc" {
  name = var.st_name
  resource_group_name = var.rg_name
  account_replication_type = var.account_replication_type
  account_tier = var.st_tier
  location = var.location

}