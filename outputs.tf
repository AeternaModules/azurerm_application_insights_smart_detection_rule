output "application_insights_smart_detection_rules" {
  description = "All application_insights_smart_detection_rule resources"
  value       = azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules
}
output "application_insights_smart_detection_rules_additional_email_recipients" {
  description = "List of additional_email_recipients values across all application_insights_smart_detection_rules"
  value       = [for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : v.additional_email_recipients]
}
output "application_insights_smart_detection_rules_application_insights_id" {
  description = "List of application_insights_id values across all application_insights_smart_detection_rules"
  value       = [for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : v.application_insights_id]
}
output "application_insights_smart_detection_rules_enabled" {
  description = "List of enabled values across all application_insights_smart_detection_rules"
  value       = [for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : v.enabled]
}
output "application_insights_smart_detection_rules_name" {
  description = "List of name values across all application_insights_smart_detection_rules"
  value       = [for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : v.name]
}
output "application_insights_smart_detection_rules_send_emails_to_subscription_owners" {
  description = "List of send_emails_to_subscription_owners values across all application_insights_smart_detection_rules"
  value       = [for k, v in azurerm_application_insights_smart_detection_rule.application_insights_smart_detection_rules : v.send_emails_to_subscription_owners]
}

