output "cloud_gateways_lookup_gateways" {
  description = "Map of gateways values across all cloud_gateways_lookup, keyed the same as var.cloud_gateways_lookup except keys with no gateways are omitted"
  value       = { for k, v in data.ovh_cloud_gateways.cloud_gateways_lookup : k => v.gateways if v.gateways != null && length(v.gateways) > 0 }
}
output "cloud_gateways_lookup_service_name" {
  description = "Map of service_name values across all cloud_gateways_lookup, keyed the same as var.cloud_gateways_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_gateways.cloud_gateways_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

