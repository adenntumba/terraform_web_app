# Definitions of Resource Group
variable "rg_name" {
  description = "Resource group name"
  type        = string
  default     = "RG-WebApp"
}

variable "location" {
  description = "Location of the resource group"
  type        = string
  default     = "eastus2"
}

variable "app_service_plan" {
  description = "Name of App Service Plan"
  type        = string
  default     = "Plano-WebApp"
}

variable "app_service" {
  description = "Name of App Service"
  type        = string
  default     = "atappweb"
}

variable "app_service_slot" {
  description = "Name of App Service Slot Staging"
  type        = string
  default     = "Staging"
}
