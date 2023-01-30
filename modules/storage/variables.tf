variable "st_name" {
  type = string
  description = "Storage Account Name"
}

variable "account_replication_type" {
  type = string
  description = "Storage Replication"
}

variable "location" {
  type = string
  description = "Region of resources to be created"
}

variable "st_tier" {
  type = string
  description = "Storage Tier"
}

variable "rg_name" {
  type = string
  description = "Resource Group Name"
}