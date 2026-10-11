output "sentinel_alert_rule_template_lookup_id" {
  description = "Map of id values across all sentinel_alert_rule_template_lookup, keyed the same as var.sentinel_alert_rule_template_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule_template.sentinel_alert_rule_template_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sentinel_alert_rule_template_lookup_display_name" {
  description = "Map of display_name values across all sentinel_alert_rule_template_lookup, keyed the same as var.sentinel_alert_rule_template_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule_template.sentinel_alert_rule_template_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "sentinel_alert_rule_template_lookup_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_alert_rule_template_lookup, keyed the same as var.sentinel_alert_rule_template_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule_template.sentinel_alert_rule_template_lookup : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "sentinel_alert_rule_template_lookup_name" {
  description = "Map of name values across all sentinel_alert_rule_template_lookup, keyed the same as var.sentinel_alert_rule_template_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule_template.sentinel_alert_rule_template_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sentinel_alert_rule_template_lookup_nrt_template" {
  description = "Map of nrt_template values across all sentinel_alert_rule_template_lookup, keyed the same as var.sentinel_alert_rule_template_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule_template.sentinel_alert_rule_template_lookup : k => v.nrt_template if v.nrt_template != null && length(v.nrt_template) > 0 }
}
output "sentinel_alert_rule_template_lookup_scheduled_template" {
  description = "Map of scheduled_template values across all sentinel_alert_rule_template_lookup, keyed the same as var.sentinel_alert_rule_template_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule_template.sentinel_alert_rule_template_lookup : k => v.scheduled_template if v.scheduled_template != null && length(v.scheduled_template) > 0 }
}
output "sentinel_alert_rule_template_lookup_security_incident_template" {
  description = "Map of security_incident_template values across all sentinel_alert_rule_template_lookup, keyed the same as var.sentinel_alert_rule_template_lookup"
  value       = { for k, v in data.azurerm_sentinel_alert_rule_template.sentinel_alert_rule_template_lookup : k => v.security_incident_template if v.security_incident_template != null && length(v.security_incident_template) > 0 }
}

