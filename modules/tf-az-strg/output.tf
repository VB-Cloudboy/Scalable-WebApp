#-------------------------------------
# OUTPUT ATTRIBUTE REFERENCE
#--------------------------------------
output "strgacct_id" {
  value = azurerm_storage_account.storage_account.*.id
  description = "List The storage account Resource ID."
}
output "strgacct_cntr_id" {
  value = azurerm_storage_container.storage_container.*.id
  description = "List The ID of the Storage Container."
}

output "strgacct_endpoint" {
  value = azurerm_storage_account.storage_account.primary_blob_endpoint
}