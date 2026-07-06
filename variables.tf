variable "application_insights_smart_detection_rules" {
  description = <<EOT
Map of application_insights_smart_detection_rules, attributes below
Required:
    - application_insights_id
    - name
Optional:
    - additional_email_recipients
    - enabled
    - send_emails_to_subscription_owners
EOT

  type = map(object({
    application_insights_id            = string
    name                               = string
    additional_email_recipients        = optional(set(string))
    enabled                            = optional(bool) # Default: true
    send_emails_to_subscription_owners = optional(bool) # Default: true
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_insights_smart_detection_rules : (
        contains(["Slow page load time", "Slow server response time", "Long dependency duration", "Degradation in server response time", "Degradation in dependency duration", "Degradation in trace severity ratio", "Abnormal rise in exception volume", "Potential memory leak detected", "Potential security issue detected", "Abnormal rise in daily data volume"], v.name)
      )
    ])
    error_message = "must be one of: Slow page load time, Slow server response time, Long dependency duration, Degradation in server response time, Degradation in dependency duration, Degradation in trace severity ratio, Abnormal rise in exception volume, Potential memory leak detected, Potential security issue detected, Abnormal rise in daily data volume"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_application_insights_smart_detection_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: application_insights_id
  #   source:    [from components.ValidateComponentID] !ok
  # path: application_insights_id
  #   source:    [from components.ValidateComponentID] err != nil
}

