resource "aws_ec2_transit_gateway_multicast_domain" "aws_ec2_transit_gateway_multicast_domain" {
  create                          = var.create
  transit_gateway_id              = var.transit_gateway_id
  static_sources_support          = var.static_sources_support
  tags                            = var.tags
  tags_all                        = var.tags_all
  arn                             = var.arn
  auto_accept_shared_associations = var.auto_accept_shared_associations
  id                              = var.id
  igmpv2_support                  = var.igmpv2_support
  owner_id                        = var.owner_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "transit_gateway_id" {
  description = "(Required) EC2 Transit Gateway identifier. The EC2 Transit Gateway must have multicast_support enabled."
  type        = string
}
variable "igmpv2_support" {
  description = "(Optional) Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: disable, enable. Default value: disable."
  type        = string
}
variable "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain."
  type        = string
}
variable "static_sources_support" {
  description = "(Optional) Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: disable, enable. Default value: disable."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = "EC2 Transit Gateway Multicast Domain Amazon Resource Name (ARN)."
  type        = string
}
variable "auto_accept_shared_associations" {
  description = "(Optional) Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: disable, enable. Default value: disable."
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway Multicast Domain identifier."
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
output "id" {
  description = "EC2 Transit Gateway Multicast Domain identifier."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "igmpv2_support" {
  description = "(Optional) Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: disable, enable. Default value: disable."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.igmpv2_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "static_sources_support" {
  description = "(Optional) Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: disable, enable. Default value: disable."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.static_sources_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "EC2 Transit Gateway Multicast Domain Amazon Resource Name (ARN)."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_accept_shared_associations" {
  description = "(Optional) Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: disable, enable. Default value: disable."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.auto_accept_shared_associations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "(Required) EC2 Transit Gateway identifier. The EC2 Transit Gateway must have multicast_support enabled."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "EC2 Transit Gateway Multicast Domain Amazon Resource Name (ARN)."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway Multicast Domain identifier."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
      "kind/name"                   = "aws_ec2_transit_gateway_multicast_domain"
      "kind/version"                = "v0.1.0"
    }
  }
}
