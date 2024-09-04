data "azurerm_client_config" "this" {}

data "azurerm_resource_group" "this" {
  count = var.tags_inherit_from == "resource_group" ? 1 : 0
  name = var.resource_group_name
}

data "azurerm_subscription" "this" {
  count = var.tags_inherit_from == "subscription" ? 1 : 0
  subscription_id = local.subscription_id
}

