variable "rgname" {
    type = string
    description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."  
}

variable "rglocation" {
    type = string
    description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."  
}

variable "rgtags" {
    type = map
    description = "(Optional) A mapping of tags which should be assigned to the Resource Group" 
}






