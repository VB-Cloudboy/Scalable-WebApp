#--------------------------------
# DECLARING DNS DETAILS
#--------------------------------

# Variable for Resource Group Name
variable "dnsresgrp" {
    description = "(Required) Specifies the resource group where the resource exists. Changing this forces a new resource to be created."  
    type        = string
}

# Variable for DNS Zone Name
variable "dnsname" {
    description = "(Required) The name of the DNS Zone. Must be a valid domain name."    
    type        = string
}

# Variable for DNS Tags
variable "dnstags" {
    description = " (Optional) A mapping of tags to assign to the resource."    
    type        = map
}

# Variable for DNS A Records within Azure DNS.
variable "dns_a_record" {
    description = "List of A records in an DNS zone, as defined below."    
    type        = map
}

# Variable for MSSQL Server Firewall Rules
variable "dns_cname_record" {
    description = "List of CNAME records in an DNS zone, as defined below."    
    type        = map
}