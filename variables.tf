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
