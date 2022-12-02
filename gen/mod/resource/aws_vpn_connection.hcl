resource "aws_vpn_connection" "aws_vpn_connection" {
  outside_ip_address_type                 = var.outside_ip_address_type
  transit_gateway_id                      = var.transit_gateway_id
  tunnel1_address                         = var.tunnel1_address
  tunnel1_phase2_dh_group_numbers         = var.tunnel1_phase2_dh_group_numbers
  last_status_change                      = var.last_status_change
  tunnel1_inside_ipv6_cidr                = var.tunnel1_inside_ipv6_cidr
  tunnel1_phase1_lifetime_seconds         = var.tunnel1_phase1_lifetime_seconds
  tunnel1_startup_action                  = var.tunnel1_startup_action
  tunnel2_dpd_timeout_action              = var.tunnel2_dpd_timeout_action
  tunnel2_rekey_margin_time_seconds       = var.tunnel2_rekey_margin_time_seconds
  tunnel1_rekey_margin_time_seconds       = var.tunnel1_rekey_margin_time_seconds
  arn                                     = var.arn
  customer_gateway_configuration          = var.customer_gateway_configuration
  local_ipv6_network_cidr                 = var.local_ipv6_network_cidr
  log_enabled                             = var.log_enabled
  tags_all                                = var.tags_all
  tunnel1_dpd_timeout_action              = var.tunnel1_dpd_timeout_action
  tunnel1_preshared_key                   = var.tunnel1_preshared_key
  tunnel2_phase1_lifetime_seconds         = var.tunnel2_phase1_lifetime_seconds
  tunnel2_phase2_encryption_algorithms    = var.tunnel2_phase2_encryption_algorithms
  tunnel2_phase2_lifetime_seconds         = var.tunnel2_phase2_lifetime_seconds
  destination_cidr_block                  = var.destination_cidr_block
  tunnel1_bgp_asn                         = var.tunnel1_bgp_asn
  tunnel1_ike_versions                    = var.tunnel1_ike_versions
  tunnel2_preshared_key                   = var.tunnel2_preshared_key
  vgw_telemetry                           = var.vgw_telemetry
  cloudwatch_log_options                  = var.cloudwatch_log_options
  routes                                  = var.routes
  tunnel1_phase2_encryption_algorithms    = var.tunnel1_phase2_encryption_algorithms
  tunnel2_inside_ipv6_cidr                = var.tunnel2_inside_ipv6_cidr
  tunnel2_phase2_dh_group_numbers         = var.tunnel2_phase2_dh_group_numbers
  tunnel2_phase2_integrity_algorithms     = var.tunnel2_phase2_integrity_algorithms
  log_group_arn                           = var.log_group_arn
  outside_ip_address                      = var.outside_ip_address
  tunnel_inside_ip_version                = var.tunnel_inside_ip_version
  tunnel1_phase2_lifetime_seconds         = var.tunnel1_phase2_lifetime_seconds
  tunnel2_startup_action                  = var.tunnel2_startup_action
  certificate_arn                         = var.certificate_arn
  enable_acceleration                     = var.enable_acceleration
  log_output_format                       = var.log_output_format
  remote_ipv4_network_cidr                = var.remote_ipv4_network_cidr
  tunnel1_cgw_inside_address              = var.tunnel1_cgw_inside_address
  tunnel2_dpd_timeout_seconds             = var.tunnel2_dpd_timeout_seconds
  tunnel2_phase1_integrity_algorithms     = var.tunnel2_phase1_integrity_algorithms
  status                                  = var.status
  tunnel1_dpd_timeout_seconds             = var.tunnel1_dpd_timeout_seconds
  accepted_route_count                    = var.accepted_route_count
  tunnel1_phase1_integrity_algorithms     = var.tunnel1_phase1_integrity_algorithms
  tunnel1_replay_window_size              = var.tunnel1_replay_window_size
  tunnel2_cgw_inside_address              = var.tunnel2_cgw_inside_address
  type                                    = var.type
  tunnel1_bgp_holdtime                    = var.tunnel1_bgp_holdtime
  tunnel1_vgw_inside_address              = var.tunnel1_vgw_inside_address
  tunnel2_address                         = var.tunnel2_address
  tunnel2_bgp_holdtime                    = var.tunnel2_bgp_holdtime
  tunnel2_inside_cidr                     = var.tunnel2_inside_cidr
  tunnel2_phase1_encryption_algorithms    = var.tunnel2_phase1_encryption_algorithms
  vpn_gateway_id                          = var.vpn_gateway_id
  local_ipv4_network_cidr                 = var.local_ipv4_network_cidr
  transport_transit_gateway_attachment_id = var.transport_transit_gateway_attachment_id
  tunnel2_replay_window_size              = var.tunnel2_replay_window_size
  tunnel1_inside_cidr                     = var.tunnel1_inside_cidr
  tunnel2_bgp_asn                         = var.tunnel2_bgp_asn
  core_network_attachment_arn             = var.core_network_attachment_arn
  customer_gateway_id                     = var.customer_gateway_id
  id                                      = var.id
  state                                   = var.state
  static_routes_only                      = var.static_routes_only
  tunnel1_phase1_encryption_algorithms    = var.tunnel1_phase1_encryption_algorithms
  source                                  = var.source
  tunnel1_phase1_dh_group_numbers         = var.tunnel1_phase1_dh_group_numbers
  tunnel1_phase2_integrity_algorithms     = var.tunnel1_phase2_integrity_algorithms
  tunnel2_rekey_fuzz_percentage           = var.tunnel2_rekey_fuzz_percentage
  core_network_arn                        = var.core_network_arn
  transit_gateway_attachment_id           = var.transit_gateway_attachment_id
  tunnel1_log_options                     = var.tunnel1_log_options
  tunnel2_vgw_inside_address              = var.tunnel2_vgw_inside_address
  remote_ipv6_network_cidr                = var.remote_ipv6_network_cidr
  tags                                    = var.tags
  tunnel1_rekey_fuzz_percentage           = var.tunnel1_rekey_fuzz_percentage
  tunnel2_ike_versions                    = var.tunnel2_ike_versions
  tunnel2_log_options                     = var.tunnel2_log_options
  tunnel2_phase1_dh_group_numbers         = var.tunnel2_phase1_dh_group_numbers
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tunnel1_replay_window_size" {
  description = "(Optional, Default 1024) The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between 64 and 2048."
  type        = string
}
variable "tunnel2_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway Side)."
  type        = string
}
variable "type" {
  description = "(Required) The type of VPN connection. The only type AWS supports at this time is \"ipsec.1\".One of the following arguments is required:"
  type        = string
}
variable "accepted_route_count" {
  description = "The number of accepted routes."
  type        = string
}
variable "tunnel1_phase1_integrity_algorithms" {
  description = "(Optional) One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  type        = string
  default     = ""
}
variable "tunnel2_address" {
  description = "The public IP address of the second VPN tunnel."
  type        = string
}
variable "tunnel2_bgp_holdtime" {
  description = "The bgp holdtime of the second VPN tunnel."
  type        = string
}
variable "tunnel2_inside_cidr" {
  description = "(Optional) The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range."
  type        = string
  default     = ""
}
variable "tunnel2_phase1_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  type        = string
  default     = ""
}
variable "vpn_gateway_id" {
  description = "The ID of the virtual private gateway to which the connection is attached.routes"
  type        = string
}
variable "tunnel1_bgp_holdtime" {
  description = "The bgp holdtime of the first VPN tunnel."
  type        = string
}
variable "tunnel1_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway Side)."
  type        = string
}
variable "tunnel2_replay_window_size" {
  description = "(Optional, Default 1024) The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between 64 and 2048."
  type        = string
}
variable "local_ipv4_network_cidr" {
  description = "(Optional, Default 0.0.0.0/0) The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection."
  type        = string
}
variable "transport_transit_gateway_attachment_id" {
  description = "(Required when outside_ip_address_type is set to PrivateIpv4). The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only."
  type        = string
}
variable "tunnel1_inside_cidr" {
  description = "(Optional) The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range."
  type        = string
  default     = ""
}
variable "tunnel2_bgp_asn" {
  description = "The bgp asn number of the second VPN tunnel."
  type        = string
}
variable "id" {
  description = "The amazon-assigned ID of the VPN connection."
  type        = string
}
variable "state" {
  description = "The current state of the static route.vgw_telemetry"
  type        = string
}
variable "static_routes_only" {
  description = "Whether the VPN connection uses static routes exclusively."
  type        = string
}
variable "tunnel1_phase1_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  type        = string
  default     = ""
}
variable "core_network_attachment_arn" {
  description = "The ARN of the core network attachment."
  type        = string
}
variable "customer_gateway_id" {
  description = "The ID of the customer gateway to which the connection is attached."
  type        = string
}
variable "tunnel1_phase2_integrity_algorithms" {
  description = "(Optional) List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  type        = string
  default     = ""
}
variable "tunnel2_rekey_fuzz_percentage" {
  description = "(Optional, Default 100) The percentage of the rekey window for the second VPN tunnel (determined by tunnel2_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100."
  type        = string
}
variable "source" {
  description = "Indicates how the routes were provided."
  type        = string
}
variable "tunnel1_phase1_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  type        = string
  default     = ""
}
variable "tunnel1_log_options" {
  description = "(Optional) Options for logging VPN tunnel activity. See Log Options below for more details."
  type        = string
  default     = ""
}
variable "tunnel2_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway Side)."
  type        = string
}
variable "core_network_arn" {
  description = "The ARN of the core network."
  type        = string
}
variable "transit_gateway_attachment_id" {
  description = "When associated with an EC2 Transit Gateway (transit_gateway_id argument), the attachment ID. See also the aws_ec2_tag resource for tagging the EC2 Transit Gateway VPN Attachment."
  type        = string
}
variable "tunnel1_rekey_fuzz_percentage" {
  description = "(Optional, Default 100) The percentage of the rekey window for the first VPN tunnel (determined by tunnel1_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100."
  type        = string
}
variable "tunnel2_ike_versions" {
  description = "(Optional) The IKE versions that are permitted for the second VPN tunnel. Valid values are ikev1 | ikev2."
  type        = string
  default     = ""
}
variable "tunnel2_log_options" {
  description = "(Optional) Options for logging VPN tunnel activity. See Log Options below for more details."
  type        = string
  default     = ""
}
variable "tunnel2_phase1_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  type        = string
  default     = ""
}
variable "remote_ipv6_network_cidr" {
  description = "(Optional, Default ::/0) The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the connection. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tunnel1_address" {
  description = "The public IP address of the first VPN tunnel."
  type        = string
}
variable "tunnel1_phase2_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  type        = string
  default     = ""
}
variable "outside_ip_address_type" {
  description = "(Optional, Default PublicIpv4) Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are PublicIpv4 | PrivateIpv4"
  type        = string
}
variable "transit_gateway_id" {
  description = "(Optional) The ID of the EC2 Transit Gateway."
  type        = string
  default     = ""
}
variable "tunnel1_phase1_lifetime_seconds" {
  description = "(Optional, Default 28800) The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 28800."
  type        = string
}
variable "tunnel1_startup_action" {
  description = "(Optional, Default add) The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start."
  type        = string
}
variable "tunnel2_dpd_timeout_action" {
  description = "(Optional, Default clear) The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart."
  type        = string
}
variable "tunnel2_rekey_margin_time_seconds" {
  description = "(Optional, Default 540) The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel2_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel2_phase2_lifetime_seconds."
  type        = string
}
variable "last_status_change" {
  description = "The date and time of the last change in status."
  type        = string
}
variable "tunnel1_inside_ipv6_cidr" {
  description = "(Optional) The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range."
  type        = string
  default     = ""
}
variable "local_ipv6_network_cidr" {
  description = "(Optional, Default ::/0) The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection."
  type        = string
}
variable "log_enabled" {
  description = "(Optional) Enable or disable VPN tunnel logging feature. The default is false."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "tunnel1_dpd_timeout_action" {
  description = "(Optional, Default clear) The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart."
  type        = string
}
variable "tunnel1_preshared_key" {
  description = "The preshared key of the first VPN tunnel."
  type        = string
}
variable "tunnel1_rekey_margin_time_seconds" {
  description = "(Optional, Default 540) The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel1_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel1_phase2_lifetime_seconds."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the VPN Connection."
  type        = string
}
variable "customer_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway (in the native XML format)."
  type        = string
}
variable "tunnel2_phase2_lifetime_seconds" {
  description = "(Optional, Default 3600) The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 3600."
  type        = string
}
variable "tunnel2_phase1_lifetime_seconds" {
  description = "(Optional, Default 28800) The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 28800."
  type        = string
}
variable "tunnel2_phase2_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  type        = string
  default     = ""
}
variable "tunnel1_ike_versions" {
  description = "(Optional) The IKE versions that are permitted for the first VPN tunnel. Valid values are ikev1 | ikev2."
  type        = string
  default     = ""
}
variable "tunnel2_preshared_key" {
  description = "The preshared key of the second VPN tunnel."
  type        = string
}
variable "vgw_telemetry" {
  description = "Telemetry for the VPN tunnels. Detailed below."
  type        = string
}
variable "destination_cidr_block" {
  description = "The CIDR block associated with the local subnet of the customer data center."
  type        = string
}
variable "tunnel1_bgp_asn" {
  description = "The bgp asn number of the first VPN tunnel."
  type        = string
}
variable "tunnel1_phase2_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  type        = string
  default     = ""
}
variable "tunnel2_inside_ipv6_cidr" {
  description = "(Optional) The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range."
  type        = string
  default     = ""
}
variable "tunnel2_phase2_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  type        = string
  default     = ""
}
variable "tunnel2_phase2_integrity_algorithms" {
  description = "(Optional) List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  type        = string
  default     = ""
}
variable "cloudwatch_log_options" {
  description = "(Optional) Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.CloudWatch Log OptionsThe cloudwatch_log_options blocks supports the following arguments:"
  type        = string
  default     = ""
}
variable "routes" {
  description = "The static routes associated with the VPN connection. Detailed below."
  type        = string
}
variable "tunnel_inside_ip_version" {
  description = "(Optional, Default ipv4) Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are ipv4 | ipv6. ipv6 Supports only EC2 Transit Gateway."
  type        = string
}
variable "tunnel1_phase2_lifetime_seconds" {
  description = "(Optional, Default 3600) The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 3600."
  type        = string
}
variable "log_group_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to."
  type        = string
  default     = ""
}
variable "outside_ip_address" {
  description = "The Internet-routable IP address of the virtual private gateway's outside interface."
  type        = string
}
variable "log_output_format" {
  description = "(Optional) Set log format. Default format is json. Possible values are: json and text. The default is json.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "remote_ipv4_network_cidr" {
  description = "(Optional, Default 0.0.0.0/0) The IPv4 CIDR on the AWS side of the VPN connection."
  type        = string
}
variable "tunnel1_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway Side)."
  type        = string
}
variable "tunnel2_dpd_timeout_seconds" {
  description = "(Optional, Default 30) The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than 30."
  type        = string
}
variable "tunnel2_phase1_integrity_algorithms" {
  description = "(Optional) One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  type        = string
  default     = ""
}
variable "tunnel2_startup_action" {
  description = "(Optional, Default add) The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start.Log OptionsThe tunnel1_log_options and tunnel2_log_options block supports the following arguments:"
  type        = string
}
variable "certificate_arn" {
  description = "The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate."
  type        = string
}
variable "enable_acceleration" {
  description = "(Optional, Default false) Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway."
  type        = string
}
variable "status" {
  description = "The status of the VPN tunnel."
  type        = string
}
variable "tunnel1_dpd_timeout_seconds" {
  description = "(Optional, Default 30) The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than 30."
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "tunnel1_bgp_asn" {
  description = "The bgp asn number of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_bgp_asn
}
output "tunnel1_ike_versions" {
  description = "(Optional) The IKE versions that are permitted for the first VPN tunnel. Valid values are ikev1 | ikev2."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_ike_versions
}
output "tunnel2_preshared_key" {
  description = "The preshared key of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_preshared_key
}
output "vgw_telemetry" {
  description = "Telemetry for the VPN tunnels. Detailed below."
  value       = aws_vpn_connection.aws_vpn_connection.vgw_telemetry
}
output "destination_cidr_block" {
  description = "The CIDR block associated with the local subnet of the customer data center."
  value       = aws_vpn_connection.aws_vpn_connection.destination_cidr_block
}
output "routes" {
  description = "The static routes associated with the VPN connection. Detailed below."
  value       = aws_vpn_connection.aws_vpn_connection.routes
}
output "tunnel1_phase2_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase2_encryption_algorithms
}
output "tunnel2_inside_ipv6_cidr" {
  description = "(Optional) The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_inside_ipv6_cidr
}
output "tunnel2_phase2_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase2_dh_group_numbers
}
output "tunnel2_phase2_integrity_algorithms" {
  description = "(Optional) List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase2_integrity_algorithms
}
output "cloudwatch_log_options" {
  description = "(Optional) Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.CloudWatch Log OptionsThe cloudwatch_log_options blocks supports the following arguments:"
  value       = aws_vpn_connection.aws_vpn_connection.cloudwatch_log_options
}
output "outside_ip_address" {
  description = "The Internet-routable IP address of the virtual private gateway's outside interface."
  value       = aws_vpn_connection.aws_vpn_connection.outside_ip_address
}
output "tunnel_inside_ip_version" {
  description = "(Optional, Default ipv4) Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are ipv4 | ipv6. ipv6 Supports only EC2 Transit Gateway."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel_inside_ip_version
}
output "tunnel1_phase2_lifetime_seconds" {
  description = "(Optional, Default 3600) The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 3600."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase2_lifetime_seconds
}
output "log_group_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to."
  value       = aws_vpn_connection.aws_vpn_connection.log_group_arn
}
output "enable_acceleration" {
  description = "(Optional, Default false) Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway."
  value       = aws_vpn_connection.aws_vpn_connection.enable_acceleration
}
output "log_output_format" {
  description = "(Optional) Set log format. Default format is json. Possible values are: json and text. The default is json.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpn_connection.aws_vpn_connection.log_output_format
}
output "remote_ipv4_network_cidr" {
  description = "(Optional, Default 0.0.0.0/0) The IPv4 CIDR on the AWS side of the VPN connection."
  value       = aws_vpn_connection.aws_vpn_connection.remote_ipv4_network_cidr
}
output "tunnel1_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_cgw_inside_address
}
output "tunnel2_dpd_timeout_seconds" {
  description = "(Optional, Default 30) The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than 30."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_dpd_timeout_seconds
}
output "tunnel2_phase1_integrity_algorithms" {
  description = "(Optional) One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase1_integrity_algorithms
}
output "tunnel2_startup_action" {
  description = "(Optional, Default add) The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start.Log OptionsThe tunnel1_log_options and tunnel2_log_options block supports the following arguments:"
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_startup_action
}
output "certificate_arn" {
  description = "The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate."
  value       = aws_vpn_connection.aws_vpn_connection.certificate_arn
}
output "tunnel1_dpd_timeout_seconds" {
  description = "(Optional, Default 30) The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than 30."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_dpd_timeout_seconds
}
output "status" {
  description = "The status of the VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.status
}
output "tunnel1_phase1_integrity_algorithms" {
  description = "(Optional) One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase1_integrity_algorithms
}
output "tunnel1_replay_window_size" {
  description = "(Optional, Default 1024) The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between 64 and 2048."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_replay_window_size
}
output "tunnel2_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_cgw_inside_address
}
output "type" {
  description = "(Required) The type of VPN connection. The only type AWS supports at this time is \"ipsec.1\".One of the following arguments is required:"
  value       = aws_vpn_connection.aws_vpn_connection.type
}
output "accepted_route_count" {
  description = "The number of accepted routes."
  value       = aws_vpn_connection.aws_vpn_connection.accepted_route_count
}
output "tunnel1_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_vgw_inside_address
}
output "tunnel2_address" {
  description = "The public IP address of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_address
}
output "tunnel2_bgp_holdtime" {
  description = "The bgp holdtime of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_bgp_holdtime
}
output "tunnel2_inside_cidr" {
  description = "(Optional) The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_inside_cidr
}
output "tunnel2_phase1_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase1_encryption_algorithms
}
output "vpn_gateway_id" {
  description = "The ID of the virtual private gateway to which the connection is attached.routes"
  value       = aws_vpn_connection.aws_vpn_connection.vpn_gateway_id
}
output "tunnel1_bgp_holdtime" {
  description = "The bgp holdtime of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_bgp_holdtime
}
output "transport_transit_gateway_attachment_id" {
  description = "(Required when outside_ip_address_type is set to PrivateIpv4). The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only."
  value       = aws_vpn_connection.aws_vpn_connection.transport_transit_gateway_attachment_id
}
output "tunnel2_replay_window_size" {
  description = "(Optional, Default 1024) The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between 64 and 2048."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_replay_window_size
}
output "local_ipv4_network_cidr" {
  description = "(Optional, Default 0.0.0.0/0) The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection."
  value       = aws_vpn_connection.aws_vpn_connection.local_ipv4_network_cidr
}
output "tunnel2_bgp_asn" {
  description = "The bgp asn number of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_bgp_asn
}
output "tunnel1_inside_cidr" {
  description = "(Optional) The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_inside_cidr
}
output "customer_gateway_id" {
  description = "The ID of the customer gateway to which the connection is attached."
  value       = aws_vpn_connection.aws_vpn_connection.customer_gateway_id
}
output "id" {
  description = "The amazon-assigned ID of the VPN connection."
  value       = aws_vpn_connection.aws_vpn_connection.id
}
output "state" {
  description = "The current state of the static route.vgw_telemetry"
  value       = aws_vpn_connection.aws_vpn_connection.state
}
output "static_routes_only" {
  description = "Whether the VPN connection uses static routes exclusively."
  value       = aws_vpn_connection.aws_vpn_connection.static_routes_only
}
output "tunnel1_phase1_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase1_encryption_algorithms
}
output "core_network_attachment_arn" {
  description = "The ARN of the core network attachment."
  value       = aws_vpn_connection.aws_vpn_connection.core_network_attachment_arn
}
output "tunnel1_phase1_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase1_dh_group_numbers
}
output "tunnel1_phase2_integrity_algorithms" {
  description = "(Optional) List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase2_integrity_algorithms
}
output "tunnel2_rekey_fuzz_percentage" {
  description = "(Optional, Default 100) The percentage of the rekey window for the second VPN tunnel (determined by tunnel2_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_rekey_fuzz_percentage
}
output "source" {
  description = "Indicates how the routes were provided."
  value       = aws_vpn_connection.aws_vpn_connection.source
}
output "transit_gateway_attachment_id" {
  description = "When associated with an EC2 Transit Gateway (transit_gateway_id argument), the attachment ID. See also the aws_ec2_tag resource for tagging the EC2 Transit Gateway VPN Attachment."
  value       = aws_vpn_connection.aws_vpn_connection.transit_gateway_attachment_id
}
output "tunnel1_log_options" {
  description = "(Optional) Options for logging VPN tunnel activity. See Log Options below for more details."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_log_options
}
output "tunnel2_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_vgw_inside_address
}
output "core_network_arn" {
  description = "The ARN of the core network."
  value       = aws_vpn_connection.aws_vpn_connection.core_network_arn
}
output "tags" {
  description = "(Optional) Tags to apply to the connection. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_vpn_connection.aws_vpn_connection.tags
}
output "tunnel1_rekey_fuzz_percentage" {
  description = "(Optional, Default 100) The percentage of the rekey window for the first VPN tunnel (determined by tunnel1_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_rekey_fuzz_percentage
}
output "tunnel2_ike_versions" {
  description = "(Optional) The IKE versions that are permitted for the second VPN tunnel. Valid values are ikev1 | ikev2."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_ike_versions
}
output "tunnel2_log_options" {
  description = "(Optional) Options for logging VPN tunnel activity. See Log Options below for more details."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_log_options
}
output "tunnel2_phase1_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase1_dh_group_numbers
}
output "remote_ipv6_network_cidr" {
  description = "(Optional, Default ::/0) The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection."
  value       = aws_vpn_connection.aws_vpn_connection.remote_ipv6_network_cidr
}
output "transit_gateway_id" {
  description = "(Optional) The ID of the EC2 Transit Gateway."
  value       = aws_vpn_connection.aws_vpn_connection.transit_gateway_id
}
output "tunnel1_address" {
  description = "The public IP address of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_address
}
output "tunnel1_phase2_dh_group_numbers" {
  description = "(Optional) List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase2_dh_group_numbers
}
output "outside_ip_address_type" {
  description = "(Optional, Default PublicIpv4) Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are PublicIpv4 | PrivateIpv4"
  value       = aws_vpn_connection.aws_vpn_connection.outside_ip_address_type
}
output "tunnel1_inside_ipv6_cidr" {
  description = "(Optional) The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_inside_ipv6_cidr
}
output "tunnel1_phase1_lifetime_seconds" {
  description = "(Optional, Default 28800) The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 28800."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_phase1_lifetime_seconds
}
output "tunnel1_startup_action" {
  description = "(Optional, Default add) The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_startup_action
}
output "tunnel2_dpd_timeout_action" {
  description = "(Optional, Default clear) The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_dpd_timeout_action
}
output "tunnel2_rekey_margin_time_seconds" {
  description = "(Optional, Default 540) The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel2_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel2_phase2_lifetime_seconds."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_rekey_margin_time_seconds
}
output "last_status_change" {
  description = "The date and time of the last change in status."
  value       = aws_vpn_connection.aws_vpn_connection.last_status_change
}
output "customer_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway (in the native XML format)."
  value       = aws_vpn_connection.aws_vpn_connection.customer_gateway_configuration
}
output "local_ipv6_network_cidr" {
  description = "(Optional, Default ::/0) The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection."
  value       = aws_vpn_connection.aws_vpn_connection.local_ipv6_network_cidr
}
output "log_enabled" {
  description = "(Optional) Enable or disable VPN tunnel logging feature. The default is false."
  value       = aws_vpn_connection.aws_vpn_connection.log_enabled
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_vpn_connection.aws_vpn_connection.tags_all
}
output "tunnel1_dpd_timeout_action" {
  description = "(Optional, Default clear) The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_dpd_timeout_action
}
output "tunnel1_preshared_key" {
  description = "The preshared key of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_preshared_key
}
output "tunnel1_rekey_margin_time_seconds" {
  description = "(Optional, Default 540) The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel1_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel1_phase2_lifetime_seconds."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_rekey_margin_time_seconds
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the VPN Connection."
  value       = aws_vpn_connection.aws_vpn_connection.arn
}
output "tunnel2_phase2_encryption_algorithms" {
  description = "(Optional) List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase2_encryption_algorithms
}
output "tunnel2_phase2_lifetime_seconds" {
  description = "(Optional, Default 3600) The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 3600."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase2_lifetime_seconds
}
output "tunnel2_phase1_lifetime_seconds" {
  description = "(Optional, Default 28800) The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 28800."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_phase1_lifetime_seconds
}
output "customer_gateway_configuration" {
  description = "The configuration information for the VPN connection's customer gateway (in the native XML format)."
  value       = aws_vpn_connection.aws_vpn_connection.customer_gateway_configuration
}
output "customer_gateway_id" {
  description = "The ID of the customer gateway to which the connection is attached."
  value       = aws_vpn_connection.aws_vpn_connection.customer_gateway_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_vpn_connection.aws_vpn_connection.tags_all
}
output "tunnel1_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_vgw_inside_address
}
output "tunnel2_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_cgw_inside_address
}
output "accepted_route_count" {
  description = "The number of accepted routes."
  value       = aws_vpn_connection.aws_vpn_connection.accepted_route_count
}
output "status" {
  description = "The status of the VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.status
}
output "status_message" {
  description = "If an error occurs, a description of the error."
  value       = aws_vpn_connection.aws_vpn_connection.status_message
}
output "tunnel2_vgw_inside_address" {
  description = "The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_vgw_inside_address
}
output "destination_cidr_block" {
  description = "The CIDR block associated with the local subnet of the customer data center."
  value       = aws_vpn_connection.aws_vpn_connection.destination_cidr_block
}
output "last_status_change" {
  description = "The date and time of the last change in status."
  value       = aws_vpn_connection.aws_vpn_connection.last_status_change
}
output "tunnel1_cgw_inside_address" {
  description = "The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway Side)."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_cgw_inside_address
}
output "core_network_attachment_arn" {
  description = "The ARN of the core network attachment."
  value       = aws_vpn_connection.aws_vpn_connection.core_network_attachment_arn
}
output "routes" {
  description = "The static routes associated with the VPN connection. Detailed below."
  value       = aws_vpn_connection.aws_vpn_connection.routes
}
output "tunnel1_preshared_key" {
  description = "The preshared key of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_preshared_key
}
output "vpn_gateway_id" {
  description = "The ID of the virtual private gateway to which the connection is attached.routes"
  value       = aws_vpn_connection.aws_vpn_connection.vpn_gateway_id
}
output "core_network_arn" {
  description = "The ARN of the core network."
  value       = aws_vpn_connection.aws_vpn_connection.core_network_arn
}
output "outside_ip_address" {
  description = "The Internet-routable IP address of the virtual private gateway's outside interface."
  value       = aws_vpn_connection.aws_vpn_connection.outside_ip_address
}
output "tunnel1_address" {
  description = "The public IP address of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_address
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the VPN Connection."
  value       = aws_vpn_connection.aws_vpn_connection.arn
}
output "transit_gateway_attachment_id" {
  description = "When associated with an EC2 Transit Gateway (transit_gateway_id argument), the attachment ID. See also the aws_ec2_tag resource for tagging the EC2 Transit Gateway VPN Attachment."
  value       = aws_vpn_connection.aws_vpn_connection.transit_gateway_attachment_id
}
output "tunnel2_address" {
  description = "The public IP address of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_address
}
output "vgw_telemetry" {
  description = "Telemetry for the VPN tunnels. Detailed below."
  value       = aws_vpn_connection.aws_vpn_connection.vgw_telemetry
}
output "certificate_arn" {
  description = "The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate."
  value       = aws_vpn_connection.aws_vpn_connection.certificate_arn
}
output "source" {
  description = "Indicates how the routes were provided."
  value       = aws_vpn_connection.aws_vpn_connection.source
}
output "state" {
  description = "The current state of the static route.vgw_telemetry"
  value       = aws_vpn_connection.aws_vpn_connection.state
}
output "static_routes_only" {
  description = "Whether the VPN connection uses static routes exclusively."
  value       = aws_vpn_connection.aws_vpn_connection.static_routes_only
}
output "tunnel2_bgp_asn" {
  description = "The bgp asn number of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_bgp_asn
}
output "id" {
  description = "The amazon-assigned ID of the VPN connection."
  value       = aws_vpn_connection.aws_vpn_connection.id
}
output "tunnel1_bgp_asn" {
  description = "The bgp asn number of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_bgp_asn
}
output "tunnel1_bgp_holdtime" {
  description = "The bgp holdtime of the first VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel1_bgp_holdtime
}
output "tunnel2_bgp_holdtime" {
  description = "The bgp holdtime of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_bgp_holdtime
}
output "tunnel2_preshared_key" {
  description = "The preshared key of the second VPN tunnel."
  value       = aws_vpn_connection.aws_vpn_connection.tunnel2_preshared_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  value       = var.provider_region
}
terraform {
  backend "local" {
  }
  required_providers {
    aws {
      source  = "hashicorp/aws"
      version = ">= 4.38.0"
    }
    required_version = ">= 1.3.4"
  }
}
provider "aws" {
  region = var.provider_region
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_vpn_connection"
      "kind/version"                = "v0.1.0"
    }
  }
}
