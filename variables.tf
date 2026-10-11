variable "sentinel_alert_rule_template_lookup" {
  description = <<EOT
Map of sentinel_alert_rule_template_lookup, attributes below
Required:
    - log_analytics_workspace_id
Optional:
    - display_name
    - name
EOT

  type = map(object({
    log_analytics_workspace_id = string
    display_name               = optional(string)
    name                       = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_template_lookup : (
        v.name == null || (length(v.name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_template_lookup : (
        v.display_name == null || (length(v.display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

