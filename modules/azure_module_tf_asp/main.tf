resource "azurerm_app_service_plan" "asp" {
  name                         = var.name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  kind                         = var.settings.kind
  zone_redundant               = var.zone_redundant

  # For kind=Linux must be set to true and for kind=Windows must be set to false
  reserved         = var.settings.kind == "linux" ? true : false
  per_site_scaling = lookup(var.settings.sku, "per_site_scaling", false)
  is_xenon         = lookup(var.settings, "is_xenon", null)

  sku {
    tier     = var.settings.sku.tier
    size     = var.settings.sku.size
    capacity = lookup(var.settings.sku, "capacity", null)
  }

  tags                       = var.tags

  timeouts {
    create = "1h"
    update = "1h"
  }
}