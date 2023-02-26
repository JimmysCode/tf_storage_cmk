provider "azurerm" {
  features {}
  skip_provider_registration = true
}

data "azurerm_resource_group" "rg" {
  name = "1-07292168-playground-sandbox"
}

resource "random_id" "rand" {
  byte_length = 10
}

module "storage_accounts" {
  source = "./modules/storage"
  #for_each = local.storage
  st_name = "storeme${lower(random_id.rand)}"
  account_replication_type = "GRS"
  st_tier = "Standard"
  location = var.location
  rg_name = data.azurerm_resource_group.rg.name
  }