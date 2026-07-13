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
    enabled                            = optional(bool)
    send_emails_to_subscription_owners = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_insights_smart_detection_rules : (
        contains(["Slow page load time", "Slow server response time", "Long dependency duration", "Degradation in server response time", "Degradation in dependency duration", "Degradation in trace severity ratio", "Abnormal rise in exception volume", "Potential memory leak detected", "Potential security issue detected", "Abnormal rise in daily data volume"], v.name)
      )
    ])
    error_message = "must be one of: Slow page load time, Slow server response time, Long dependency duration, Degradation in server response time, Degradation in dependency duration, Degradation in trace severity ratio, Abnormal rise in exception volume, Potential memory leak detected, Potential security issue detected, Abnormal rise in daily data volume"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

