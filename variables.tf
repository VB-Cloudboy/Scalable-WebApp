#-----------------------------------------------------------------------------
# RESOURCE GROUP VARIABLE DECLARATION
#----------------------------------------------------------------------------
variable "rg_name" {
    type = string
    description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."  
}

variable "rg_location" {
    type = string
    description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."  
}


#-----------------------------------------------------------------------------
# AZURE DNS (Domain Name Service) VARIABLE DECLARATION
#----------------------------------------------------------------------------

variable "pub_dnszone01_name" {
    type = string
    description = "(Required) The name of the DNS Zone. Must be a valid domain name." 
}

variable "pub_dnszone01_a_record" {
    type = map
    description = "List of A records in an DNS zone, as defined below."  

  
}

variable "pub_dnszone01_cname_record" {
    type = map
    description = "List of CNAME records in an DNS zone, as defined below."  

  
  
}

#-----------------------------------------------------------------------------
# AZURE FRONT DOOR VARIABLE DECLARATION
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE CDN (Content Delivery Network) VARIABLE DECLARATION
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE STORAGE VARIABLE DECLARATION
#----------------------------------------------------------------------------

# Variable for Storage Account Name
variable "strg_account_name" {
    description = "Please enter the storage account name"
    type = string 
}
# Variable for Storage Account Tier
variable "strg_account_tier" {
    description = "Defines the Tier to use for this storage account"

}

# Variable for Storage Account Replication Type
variable "strg_account_type" {
    description = "Defines the type of replication to use for this storage account"

}

# Variable for Storage Account Kind
variable "strg_account_kind" {
    description = "Defines the Kind of storage account"
}

# Variable for Storage Access Tier
variable "strg_account_access_tier" {
    description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts."

}

# Variable for Storage Container Name
variable "strg_container_name" {
    description = "The name of the Container which should be created within the Storage Account."
    #type = string
}

# Variable for Storage Container Access Type
variable "strg_container_access_type" {
    description = "The Access Level configured for this Container."

}

# Variable for Storage File Share Name 
variable "strg_share_name" {
    description = "The name of the share. Must be unique within the storage account where the share is located"
    type = string
}

# Variable for Storage File Share Quota Details 
variable "strg_share_quota" {
    description = "The maximum size of the share, in gigabytes. For Standard storage accounts, this must be greater than 0 and less than 5120 GB (5 TB)."
    type = string
}


#-----------------------------------------------------------------------------
# AZURE WEBAPP SERVICE & APP SERVICE ENGINE SETUP
#----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
# AZURE FUNCTION APP VARIABLE DECLARATION
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE REDIS CACHE VARIABLE DECLARATION
#----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
# AZURE SQL DATABASE VARIABLE DECLARATION
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE COSMOS DATABASE VARIABLE DECLARATION
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE SEARCH VARIABLE DECLARATION
#----------------------------------------------------------------------------
