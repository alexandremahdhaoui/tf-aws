resource "aws_networkmanager_transit_gateway_route_table_attachment" "aws_networkmanager_transit_gateway_route_table_attachment" {
  arn                             = var.arn
  attachment_policy_rule_number   = var.attachment_policy_rule_number
  peering_id                      = var.peering_id
  resource_arn                    = var.resource_arn
  tags                            = var.tags
  attachment_type                 = var.attachment_type
  core_network_id                 = var.core_network_id
  id                              = var.id
  state                           = var.state
  transit_gateway_route_table_arn = var.transit_gateway_route_table_arn
  edge_location                   = var.edge_location
  owner_account_id                = var.owner_account_id
  core_network_arn                = var.core_network_arn
  segment_name                    = var.segment_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "core_network_id" {
  description = "The ID of the core network."
  type        = string
}
variable "id" {
  description = "The ID of the attachment."
  type        = string
}
variable "state" {
  description = "The state of the attachment."
  type        = string
}
variable "transit_gateway_route_table_arn" {
  description = "(Required) The ARN of the transit gateway route table for the attachment.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "attachment_type" {
  description = "The type of attachment."
  type        = string
}
variable "owner_account_id" {
  description = "The ID of the attachment account owner."
  type        = string
}
variable "edge_location" {
  description = "The edge location for the peer."
  type        = string
}
variable "segment_name" {
  description = "The name of the segment attachment."
  type        = string
}
variable "core_network_arn" {
  description = "The ARN of the core network."
  type        = string
}
variable "attachment_policy_rule_number" {
  description = "The policy rule number associated with the attachment."
  type        = string
}
variable "peering_id" {
  description = "(Required) The ID of the peer for the attachment."
  type        = string
}
variable "resource_arn" {
  description = "The attachment resource ARN."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the attachment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Attachment Amazon Resource Name (ARN)."
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
output "edge_location" {
  description = "The edge location for the peer."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.edge_location
}
output "owner_account_id" {
  description = "The ID of the attachment account owner."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.owner_account_id
}
output "core_network_arn" {
  description = "The ARN of the core network."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.core_network_arn
}
output "segment_name" {
  description = "The name of the segment attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.segment_name
}
output "resource_arn" {
  description = "The attachment resource ARN."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.resource_arn
}
output "tags" {
  description = "(Optional) Key-value tags for the attachment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.tags
}
output "arn" {
  description = "Attachment Amazon Resource Name (ARN)."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.arn
}
output "attachment_policy_rule_number" {
  description = "The policy rule number associated with the attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.attachment_policy_rule_number
}
output "peering_id" {
  description = "(Required) The ID of the peer for the attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.peering_id
}
output "state" {
  description = "The state of the attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.state
}
output "transit_gateway_route_table_arn" {
  description = "(Required) The ARN of the transit gateway route table for the attachment.In addition to all arguments above, the following attributes are exported:"
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.transit_gateway_route_table_arn
}
output "attachment_type" {
  description = "The type of attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.attachment_type
}
output "core_network_id" {
  description = "The ID of the core network."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.core_network_id
}
output "id" {
  description = "The ID of the attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.id
}
output "core_network_id" {
  description = "The ID of the core network."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.core_network_id
}
output "edge_location" {
  description = "The edge location for the peer."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.edge_location
}
output "id" {
  description = "The ID of the attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.id
}
output "owner_account_id" {
  description = "The ID of the attachment account owner."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.owner_account_id
}
output "segment_name" {
  description = "The name of the segment attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.segment_name
}
output "state" {
  description = "The state of the attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.state
}
output "arn" {
  description = "Attachment Amazon Resource Name (ARN)."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.arn
}
output "attachment_policy_rule_number" {
  description = "The policy rule number associated with the attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.attachment_policy_rule_number
}
output "attachment_type" {
  description = "The type of attachment."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.attachment_type
}
output "core_network_arn" {
  description = "The ARN of the core network."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.core_network_arn
}
output "resource_arn" {
  description = "The attachment resource ARN."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.resource_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkmanager_transit_gateway_route_table_attachment.aws_networkmanager_transit_gateway_route_table_attachment.tags_all
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
      "kind/name"                   = "aws_networkmanager_transit_gateway_route_table_attachment"
      "kind/version"                = "v0.1.0"
    }
  }
}
