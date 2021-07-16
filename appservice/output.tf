data "azurerm_app_service" "app_service" {
  name                = var.app_service
  resource_group_name = var.rg_name

    depends_on = [
    azurerm_app_service.app_service,
  ]
}

output "app_service_id" {
  value = format("https://%s/", data.azurerm_app_service.app_service.default_site_hostname)
}