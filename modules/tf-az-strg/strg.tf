resource "azurerm_storage_account" "storage_account" {
  name                     = var.strgacct_name
  resource_group_name      = var.strgacct_resgrp_name
  location                 = var.strgacct_location
  account_tier             = var.strgacct_tier
  account_replication_type = var.strgacct_type
  account_kind             = var.strgacct_kind
  tags                     = var.strgacct_tags
}

resource "azurerm_storage_container" "storage_container" {
  count                  = 3
  name                   = element(var.strg_cntr_name, count.index)
  storage_account_name   = var.strgacct_name
  container_access_type  = var.strg_cntr_access_type
  depends_on             = [azurerm_storage_account.storage_account]
}


resource "azurerm_storage_share" "storage_share" {
  name                 = var.strgshr_name
  storage_account_name = var.strgacct_name
  quota                = var.strgshr_quota
  depends_on           = [azurerm_storage_account.storage_account]
}