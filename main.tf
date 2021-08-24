#============================================================================================================
# ---INTRODUCTION---
# This architecture focuses on azure services which are required to host scalable PaaS based web application 
# and the code outlined focuses on the infrastructure components. The goal is to understand how various Azure  
# services fit together and deployed using hashicorp language - Terraform. 
#
# ---AUTHOR---
# Vijay Borkar 
#==============================================================================================================

# ------------------------------------------------------------------------------
# TERRAFORM & PROVIDER SETUP
# ------------------------------------------------------------------------------
terraform {
  required_version = "> 0.14.0"
  required_providers {
      azurerm = {
        source  = "hashicorp/azurerm" 
        version = "=2.73.0"
      }
  }
}

# ------------------------------------------------------------------------------
# DECLARING LOCAL VALUES
# ------------------------------------------------------------------------------

locals {
  
  common_tags = {
    environment   = "Development"
    owner         = "Vijay Borkar"
    type          = "Web-App"
    subscription  = "MSDN" 

  }

}

#-----------------------------------------------------------------------------
# RESOURCE GROUP SETUP
#----------------------------------------------------------------------------

module "res_grp_01" {
  source      = "./modules/tf-az-rg"
  rgname      = var.rg_name
  rglocation  = var.rg_location
  rgtags      = local.common_tags
  
}

#-----------------------------------------------------------------------------
# AZURE DNS (Domain Name Service) SETUP
#----------------------------------------------------------------------------

module "pub_dns_01" {
  source              = "./modules/tf-az-dns"
  depends_on          = [ module.res_grp_01 ]
  dnsname             = var.pub_dnszone01_name
  dnsresgrp           = var.rg_name
  dnstags             = local.common_tags
  dns_a_record        = var.pub_dnszone01_a_record
  dns_cname_record    = var.pub_dnszone01_cname_record
}


#-----------------------------------------------------------------------------
# AZURE FRONT DOOR SETUP
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE CDN (Content Delivery Network) SETUP
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE STORAGE SETUP
#----------------------------------------------------------------------------

module "storage_01" {
  source                      = "./modules/tf-az-strg"
  depends_on                  = [ module.res_grp_01 ]
  strgacct_name               = var.strg_account_name
  strgacct_resgrp_name        = var.rg_name
  strgacct_tier               = var.strg_account_tier
  strgacct_type               = var.strg_account_type
  strgacct_kind               = var.strg_account_kind
  strgacct_access_tier        = var.strg_account_access_tier
  strgacct_location           = var.rg_location
  strg_cntr_name              = var.strg_container_name
  strg_cntr_access_type       = var.strg_container_access_type
  strgacct_tags               = local.common_tags
  strgshr_name                = var.strg_share_name
  strgshr_quota               = var.strg_share_quota
  
}


#-----------------------------------------------------------------------------
# AZURE WEBAPP SERVICE & APP SERVICE ENGINE SETUP
#----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
# AZURE FUNCTION APP SETUP
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE REDIS CACHE SETUP
#----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
# AZURE SQL DATABASE SETUP
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE COSMOS DATABASE SETUP
#----------------------------------------------------------------------------



#-----------------------------------------------------------------------------
# AZURE SEARCH SETUP
#----------------------------------------------------------------------------


































































