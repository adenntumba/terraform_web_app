resource "azurerm_resource_group" "rg_name" {
  name     = var.rg_name
  location = var.location
}

# Definitions about App Service Plan 
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan
  location            = azurerm_resource_group.rg_name.location
  resource_group_name = azurerm_resource_group.rg_name.name
  kind = "Linux"
  reserved = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

# Definitions about App Service (Web Apps)
resource "azurerm_app_service" "app_service" {
  name                = var.app_service
  location            = azurerm_resource_group.rg_name.location
  resource_group_name = azurerm_resource_group.rg_name.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

    site_config {
    #dotnet_framework_version = "v4.0"
    php_version              = "7.4"
  }
}

# Definitions about App Service Slot
resource "azurerm_app_service_slot" "app_service_slot" {
  name                = var.app_service_slot
  location            = azurerm_resource_group.rg_name.location
  resource_group_name = azurerm_resource_group.rg_name.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id
  app_service_name    = azurerm_app_service.app_service.name
}

# Swap the production slot and the staging slot
resource "azurerm_app_service_active_slot" "active_slot" {
    resource_group_name   = azurerm_resource_group.rg_name.name
    app_service_name      = azurerm_app_service.app_service.name
    app_service_slot_name = azurerm_app_service_slot.app_service_slot.name
}


