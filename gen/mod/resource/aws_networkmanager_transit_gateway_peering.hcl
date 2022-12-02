resource "aws_networkmanager_transit_gateway_peering" "aws_networkmanager_transit_gateway_peering" {
  resource_arn        = var.resource_arn
  tags_all            = var.tags_all
  id                  = var.id
  core_network_arn    = var.core_network_arn
  core_network_id     = var.core_network_id
  edge_location       = var.edge_location
  owner_account_id    = var.owner_account_id
  peering_type        = var.peering_type
  tags                = var.tags
  transit_gateway_arn = var.transit_gateway_arn
  arn                 = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_account_id" {
  description = "The ID of the account owner."
  type        = string
}
variable "peering_type" {
  description = "The type of peering. This will be TRANSIT_GATEWAY."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the peering. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "transit_gateway_arn" {
  description = "(Required) The ARN of the transit gateway for the peering request.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "Peering Amazon Resource Name (ARN)."
  type        = string
}
variable "core_network_arn" {
  description = "The ARN of the core network."
  type        = string
}
variable "core_network_id" {
  description = "(Required) The ID of a core network."
  type        = string
}
variable "edge_location" {
  description = "The edge location for the peer."
  type        = string
}
variable "id" {
  description = "Peering ID."
  type        = string
}
variable "resource_arn" {
  description = "The resource ARN of the peer."
  type        = string
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
output "owner_account_id" {
  description = "The ID of the account owner."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.owner_account_id
}
output "peering_type" {
  description = "The type of peering. This will be TRANSIT_GATEWAY."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.peering_type
}
output "tags" {
  description = "(Optional) Key-value tags for the peering. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.tags
}
output "transit_gateway_arn" {
  description = "(Required) The ARN of the transit gateway for the peering request.In addition to all arguments above, the following attributes are exported:"
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.transit_gateway_arn
}
output "arn" {
  description = "Peering Amazon Resource Name (ARN)."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.arn
}
output "core_network_arn" {
  description = "The ARN of the core network."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.core_network_arn
}
output "core_network_id" {
  description = "(Required) The ID of a core network."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.core_network_id
}
output "edge_location" {
  description = "The edge location for the peer."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.edge_location
}
output "id" {
  description = "Peering ID."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.id
}
output "resource_arn" {
  description = "The resource ARN of the peer."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.resource_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.tags_all
}
output "core_network_arn" {
  description = "The ARN of the core network."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.core_network_arn
}
output "resource_arn" {
  description = "The resource ARN of the peer."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.resource_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.tags_all
}
output "arn" {
  description = "Peering Amazon Resource Name (ARN)."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.arn
}
output "edge_location" {
  description = "The edge location for the peer."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.edge_location
}
output "id" {
  description = "Peering ID."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.id
}
output "owner_account_id" {
  description = "The ID of the account owner."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.owner_account_id
}
output "peering_type" {
  description = "The type of peering. This will be TRANSIT_GATEWAY."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.peering_type
}
output "transit_gateway_peering_attachment_id" {
  description = "The ID of the transit gateway peering attachment."
  value       = aws_networkmanager_transit_gateway_peering.aws_networkmanager_transit_gateway_peering.transit_gateway_peering_attachment_id
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
      "kind/name"                   = "aws_networkmanager_transit_gateway_peering"
      "kind/version"                = "v0.1.0"
    }
  }
}
