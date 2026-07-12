output "application_insights_smart_detection_rules_id" {
  description = "Map of id values across all application_insights_smart_detection_rules, keyed the same as var.application_insights_smart_detection_rules"
  value       = { for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : k => v.id }
}
output "application_insights_smart_detection_rules_additional_email_recipients" {
  description = "Map of additional_email_recipients values across all application_insights_smart_detection_rules, keyed the same as var.application_insights_smart_detection_rules"
  value       = { for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : k => v.additional_email_recipients }
}
output "application_insights_smart_detection_rules_application_insights_id" {
  description = "Map of application_insights_id values across all application_insights_smart_detection_rules, keyed the same as var.application_insights_smart_detection_rules"
  value       = { for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : k => v.application_insights_id }
}
output "application_insights_smart_detection_rules_enabled" {
  description = "Map of enabled values across all application_insights_smart_detection_rules, keyed the same as var.application_insights_smart_detection_rules"
  value       = { for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : k => v.enabled }
}
output "application_insights_smart_detection_rules_name" {
  description = "Map of name values across all application_insights_smart_detection_rules, keyed the same as var.application_insights_smart_detection_rules"
  value       = { for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : k => v.name }
}
output "application_insights_smart_detection_rules_send_emails_to_subscription_owners" {
  description = "Map of send_emails_to_subscription_owners values across all application_insights_smart_detection_rules, keyed the same as var.application_insights_smart_detection_rules"
  value       = { for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : k => v.send_emails_to_subscription_owners }
}

