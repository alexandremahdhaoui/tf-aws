resource "aws_ec2_transit_gateway_vpc_attachment_accepter" "aws_ec2_transit_gateway_vpc_attachment_accepter" {
  ipv6_support                                    = var.ipv6_support
  transit_gateway_attachment_id                   = var.transit_gateway_attachment_id
  transit_gateway_default_route_table_association = var.transit_gateway_default_route_table_association
  transit_gateway_default_route_table_propagation = var.transit_gateway_default_route_table_propagation
  transit_gateway_id                              = var.transit_gateway_id
  vpc_id                                          = var.vpc_id
  appliance_mode_support                          = var.appliance_mode_support
  dns_support                                     = var.dns_support
  tags                                            = var.tags
  tags_all                                        = var.tags_all
  id                                              = var.id
  subnet_ids                                      = var.subnet_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "transit_gateway_default_route_table_propagation" {
  description = "(Optional) Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: true."
  type        = string
  default     = ""
}
variable "transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway."
  type        = string
}
variable "vpc_id" {
  description = "Identifier of EC2 VPC."
  type        = string
}
variable "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled. Valid values: disable, enable."
  type        = string
}
variable "dns_support" {
  description = "Whether DNS support is enabled. Valid values: disable, enable."
  type        = string
}
variable "ipv6_support" {
  description = "Whether IPv6 support is enabled. Valid values: disable, enable."
  type        = string
}
variable "transit_gateway_attachment_id" {
  description = "(Required) The ID of the EC2 Transit Gateway Attachment to manage."
  type        = string
}
variable "transit_gateway_default_route_table_association" {
  description = "(Optional) Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: true."
  type        = string
  default     = ""
}
variable "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  type        = string
}
variable "subnet_ids" {
  description = "Identifiers of EC2 Subnets."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
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
output "transit_gateway_default_route_table_association" {
  description = "(Optional) Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: true."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.transit_gateway_default_route_table_association
}
output "transit_gateway_default_route_table_propagation" {
  description = "(Optional) Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: true."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.transit_gateway_default_route_table_propagation
}
output "transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.transit_gateway_id
}
output "vpc_id" {
  description = "Identifier of EC2 VPC."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.vpc_id
}
output "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled. Valid values: disable, enable."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.appliance_mode_support
}
output "dns_support" {
  description = "Whether DNS support is enabled. Valid values: disable, enable."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.dns_support
}
output "ipv6_support" {
  description = "Whether IPv6 support is enabled. Valid values: disable, enable."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.ipv6_support
}
output "transit_gateway_attachment_id" {
  description = "(Required) The ID of the EC2 Transit Gateway Attachment to manage."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.transit_gateway_attachment_id
}
output "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.id
}
output "subnet_ids" {
  description = "Identifiers of EC2 Subnets."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.subnet_ids
}
output "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.tags_all
}
output "dns_support" {
  description = "Whether DNS support is enabled. Valid values: disable, enable."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.dns_support
}
output "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.id
}
output "subnet_ids" {
  description = "Identifiers of EC2 Subnets."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.subnet_ids
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.tags_all
}
output "vpc_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 VPC."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.vpc_owner_id
}
output "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled. Valid values: disable, enable."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.appliance_mode_support
}
output "ipv6_support" {
  description = "Whether IPv6 support is enabled. Valid values: disable, enable."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.ipv6_support
}
output "transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.transit_gateway_id
}
output "vpc_id" {
  description = "Identifier of EC2 VPC."
  value       = aws_ec2_transit_gateway_vpc_attachment_accepter.aws_ec2_transit_gateway_vpc_attachment_accepter.vpc_id
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
      "kind/name"                   = "aws_ec2_transit_gateway_vpc_attachment_accepter"
      "kind/version"                = "v0.1.0"
    }
  }
}
