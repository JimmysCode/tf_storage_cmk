resource "azurerm_resource_group" "rg" {
  location = var.location
  name = "rg_original"
}

module "storage_accounts" {
  source = "./modules/storage"
  for_each = locals.storage
  st_name = each.key
  account_replication_type = "GRS"
  st_tier = "Standard"
  location = var.location
  rg_name = azurerm_resource_group.rg.name
}