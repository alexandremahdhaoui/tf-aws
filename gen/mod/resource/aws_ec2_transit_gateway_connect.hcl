resource "aws_ec2_transit_gateway_connect" "aws_ec2_transit_gateway_connect" {
  update                                          = var.update
  create                                          = var.create
  protocol                                        = var.protocol
  tags                                            = var.tags
  transit_gateway_default_route_table_association = var.transit_gateway_default_route_table_association
  transport_attachment_id                         = var.transport_attachment_id
  id                                              = var.id
  tags_all                                        = var.tags_all
  transit_gateway_default_route_table_propagation = var.transit_gateway_default_route_table_propagation
  transit_gateway_id                              = var.transit_gateway_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "transit_gateway_default_route_table_propagation" {
  description = "(Optional) Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: true."
  type        = string
}
variable "transit_gateway_id" {
  description = "(Required) Identifier of EC2 Transit Gateway."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "protocol" {
  description = "(Optional) The tunnel protocol. Valida values: gre. Default is gre."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "transit_gateway_default_route_table_association" {
  description = "(Optional) Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: true."
  type        = string
}
variable "transport_attachment_id" {
  description = "(Required) The underlaying VPC attachmentIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "update" {
  description = "(Default 10m)"
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
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_default_route_table_propagation" {
  description = "(Optional) Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: true."
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.transit_gateway_default_route_table_propagation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "(Required) Identifier of EC2 Transit Gateway."
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protocol" {
  description = "(Optional) The tunnel protocol. Valida values: gre. Default is gre."
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_default_route_table_association" {
  description = "(Optional) Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: true."
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.transit_gateway_default_route_table_association
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transport_attachment_id" {
  description = "(Required) The underlaying VPC attachmentIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.transport_attachment_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.create
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
      "kind/name"                   = "aws_ec2_transit_gateway_connect"
      "kind/version"                = "v0.1.0"
    }
  }
}
