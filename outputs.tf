output "bedrockagentcore_gateway_rules_action" {
  description = "Map of action values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "bedrockagentcore_gateway_rules_condition" {
  description = "Map of condition values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "bedrockagentcore_gateway_rules_description" {
  description = "Map of description values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagentcore_gateway_rules_gateway_arn" {
  description = "Map of gateway_arn values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.gateway_arn if v.gateway_arn != null && length(v.gateway_arn) > 0 }
}
output "bedrockagentcore_gateway_rules_gateway_identifier" {
  description = "Map of gateway_identifier values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.gateway_identifier if v.gateway_identifier != null && length(v.gateway_identifier) > 0 }
}
output "bedrockagentcore_gateway_rules_priority" {
  description = "Map of priority values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.priority if v.priority != null }
}
output "bedrockagentcore_gateway_rules_region" {
  description = "Map of region values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_gateway_rules_rule_id" {
  description = "Map of rule_id values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.rule_id if v.rule_id != null && length(v.rule_id) > 0 }
}
output "bedrockagentcore_gateway_rules_system" {
  description = "Map of system values across all bedrockagentcore_gateway_rules, keyed the same as var.bedrockagentcore_gateway_rules"
  value       = { for k, v in aws_bedrockagentcore_gateway_rule.bedrockagentcore_gateway_rules : k => v.system if v.system != null && length(v.system) > 0 }
}

