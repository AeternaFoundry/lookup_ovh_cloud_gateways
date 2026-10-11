variable "cloud_gateways_lookup" {
  description = <<EOT
Map of cloud_gateways_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}

