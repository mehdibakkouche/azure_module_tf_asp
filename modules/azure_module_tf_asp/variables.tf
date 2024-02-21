variable "name" {
  description = "The name of the Azure resource. Changing this forces a new resource to be created."
}
variable "location" {
  description = "Azure location used by default"
}
variable "resource_group_name" {
  description = "Name of the resource group containing the resources"
}
variable "tags" {
  description = "Tags of the resources."
}
variable "settings" {
  description = "App settings."
}

variable "zone_redundant" {
  description = "Enabling Zone Redundant"
  default = false
}