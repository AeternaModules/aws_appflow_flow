output "appflow_flows_id" {
  description = "Map of id values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appflow_flows_arn" {
  description = "Map of arn values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appflow_flows_description" {
  description = "Map of description values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appflow_flows_destination_flow_config" {
  description = "Map of destination_flow_config values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.destination_flow_config if v.destination_flow_config != null && length(v.destination_flow_config) > 0 }
}
output "appflow_flows_flow_status" {
  description = "Map of flow_status values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.flow_status if v.flow_status != null && length(v.flow_status) > 0 }
}
output "appflow_flows_kms_arn" {
  description = "Map of kms_arn values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.kms_arn if v.kms_arn != null && length(v.kms_arn) > 0 }
}
output "appflow_flows_metadata_catalog_config" {
  description = "Map of metadata_catalog_config values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => one(v.metadata_catalog_config) if v.metadata_catalog_config != null && length(v.metadata_catalog_config) > 0 }
}
output "appflow_flows_name" {
  description = "Map of name values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appflow_flows_region" {
  description = "Map of region values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appflow_flows_source_flow_config" {
  description = "Map of source_flow_config values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => one(v.source_flow_config) if v.source_flow_config != null && length(v.source_flow_config) > 0 }
}
output "appflow_flows_tags" {
  description = "Map of tags values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appflow_flows_tags_all" {
  description = "Map of tags_all values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "appflow_flows_task" {
  description = "Map of task values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => v.task if v.task != null && length(v.task) > 0 }
}
output "appflow_flows_trigger_config" {
  description = "Map of trigger_config values across all appflow_flows, keyed the same as var.appflow_flows"
  value       = { for k, v in aws_appflow_flow.appflow_flows : k => one(v.trigger_config) if v.trigger_config != null && length(v.trigger_config) > 0 }
}

