data "azurerm_sentinel_alert_rule_template" "sentinel_alert_rule_template_lookup" {
  for_each = var.sentinel_alert_rule_template_lookup

  log_analytics_workspace_id = each.value.log_analytics_workspace_id
  display_name               = each.value.display_name
  name                       = each.value.name
}

