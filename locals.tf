locals {
  role_definition_resource_substring = "/providers/Microsoft.Authorization/roleDefinitions"
  subscription_id                    = coalesce(var.subscription_id, data.azurerm_client_config.this.subscription_id)
  inherited_tags_resource_group      = var.tags_inherit_from == "resource_group" ? data.azurerm_resource_group.this[0].tags : {}
  inherited_tags_subscription        = var.tags_inherit_from == "subscription" ? data.azurerm_subscription.this[0].tags : {}
  tags                               = merge(local.inherited_tags_resource_group, local.inherited_tags_subscription, var.tags)
}
