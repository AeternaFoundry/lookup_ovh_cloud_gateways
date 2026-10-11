data "ovh_cloud_gateways" "cloud_gateways_lookup" {
  for_each = var.cloud_gateways_lookup

  service_name = each.value.service_name
}

