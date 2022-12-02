resource "aws_ec2_transit_gateway" "aws_ec2_transit_gateway" {
  multicast_support                  = var.multicast_support
  owner_id                           = var.owner_id
  association_default_route_table_id = var.association_default_route_table_id
  default_route_table_association    = var.default_route_table_association
  default_route_table_propagation    = var.default_route_table_propagation
  id                                 = var.id
  vpn_ecmp_support                   = var.vpn_ecmp_support
  update                             = var.update
  arn                                = var.arn
  create                             = var.create
  dns_support                        = var.dns_support
  propagation_default_route_table_id = var.propagation_default_route_table_id
  tags                               = var.tags
  amazon_side_asn                    = var.amazon_side_asn
  auto_accept_shared_attachments     = var.auto_accept_shared_attachments
  description                        = var.description
  tags_all                           = var.tags_all
  transit_gateway_cidr_blocks        = var.transit_gateway_cidr_blocks
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "multicast_support" {
  description = "(Optional) Whether Multicast support is enabled. Required to use ec2_transit_gateway_multicast_domain. Valid values: disable, enable. Default value: disable."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway"
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway identifier"
  type        = string
}
variable "vpn_ecmp_support" {
  description = "(Optional) Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: disable, enable. Default value: enable.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "association_default_route_table_id" {
  description = "Identifier of the default association route table"
  type        = string
}
variable "default_route_table_association" {
  description = "(Optional) Whether resource attachments are automatically associated with the default association route table. Valid values: disable, enable. Default value: enable."
  type        = string
  default     = ""
}
variable "default_route_table_propagation" {
  description = "(Optional) Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: disable, enable. Default value: enable."
  type        = string
  default     = ""
}
variable "propagation_default_route_table_id" {
  description = "Identifier of the default propagation route tableTimeoutsConfiguration options:"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "arn" {
  description = "EC2 Transit Gateway Amazon Resource Name (ARN)"
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "dns_support" {
  description = "(Optional) Whether DNS support is enabled. Valid values: disable, enable. Default value: enable."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "transit_gateway_cidr_blocks" {
  description = "(Optional) One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6."
  type        = string
  default     = ""
}
variable "amazon_side_asn" {
  description = "(Optional) Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs. Default value: 64512.-> strongNOTE: Modifying amazon_side_asn on a Transit Gateway with active BGP sessions is not allowed. You must first delete all Transit Gateway attachments that have BGP configured prior to modifying amazon_side_asn."
  type        = string
  default     = ""
}
variable "auto_accept_shared_attachments" {
  description = "(Optional) Whether resource attachment requests are automatically accepted. Valid values: disable, enable. Default value: disable."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the EC2 Transit Gateway."
  type        = string
  default     = ""
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
output "update" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.update
}
output "arn" {
  description = "EC2 Transit Gateway Amazon Resource Name (ARN)"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.create
}
output "dns_support" {
  description = "(Optional) Whether DNS support is enabled. Valid values: disable, enable. Default value: enable."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.dns_support
}
output "propagation_default_route_table_id" {
  description = "Identifier of the default propagation route tableTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.propagation_default_route_table_id
}
output "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.tags
}
output "amazon_side_asn" {
  description = "(Optional) Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs. Default value: 64512.-> strongNOTE: Modifying amazon_side_asn on a Transit Gateway with active BGP sessions is not allowed. You must first delete all Transit Gateway attachments that have BGP configured prior to modifying amazon_side_asn."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.amazon_side_asn
}
output "auto_accept_shared_attachments" {
  description = "(Optional) Whether resource attachment requests are automatically accepted. Valid values: disable, enable. Default value: disable."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.auto_accept_shared_attachments
}
output "description" {
  description = "(Optional) Description of the EC2 Transit Gateway."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.description
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.tags_all
}
output "transit_gateway_cidr_blocks" {
  description = "(Optional) One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.transit_gateway_cidr_blocks
}
output "multicast_support" {
  description = "(Optional) Whether Multicast support is enabled. Required to use ec2_transit_gateway_multicast_domain. Valid values: disable, enable. Default value: disable."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.multicast_support
}
output "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.owner_id
}
output "association_default_route_table_id" {
  description = "Identifier of the default association route table"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.association_default_route_table_id
}
output "default_route_table_association" {
  description = "(Optional) Whether resource attachments are automatically associated with the default association route table. Valid values: disable, enable. Default value: enable."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.default_route_table_association
}
output "default_route_table_propagation" {
  description = "(Optional) Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: disable, enable. Default value: enable."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.default_route_table_propagation
}
output "id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.id
}
output "vpn_ecmp_support" {
  description = "(Optional) Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: disable, enable. Default value: enable.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.vpn_ecmp_support
}
output "arn" {
  description = "EC2 Transit Gateway Amazon Resource Name (ARN)"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.create
}
output "id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.id
}
output "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.owner_id
}
output "propagation_default_route_table_id" {
  description = "Identifier of the default propagation route tableTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.propagation_default_route_table_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.tags_all
}
output "update" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.update
}
output "association_default_route_table_id" {
  description = "Identifier of the default association route table"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.association_default_route_table_id
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.delete
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
      "kind/name"                   = "aws_ec2_transit_gateway"
      "kind/version"                = "v0.1.0"
    }
  }
}
