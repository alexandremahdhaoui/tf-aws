resource "aws_networkmanager_vpc_attachment" "aws_networkmanager_vpc_attachment" {
  core_network_id               = var.core_network_id
  state                         = var.state
  tags                          = var.tags
  options                       = var.options
  resource_arn                  = var.resource_arn
  arn                           = var.arn
  attachment_policy_rule_number = var.attachment_policy_rule_number
  attachment_type               = var.attachment_type
  core_network_arn              = var.core_network_arn
  ipv6_support                  = var.ipv6_support
  owner_account_id              = var.owner_account_id
  tags_all                      = var.tags_all
  vpc_arn                       = var.vpc_arn
  edge_location                 = var.edge_location
  id                            = var.id
  segment_name                  = var.segment_name
  subnet_arns                   = var.subnet_arns
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_account_id" {
  description = "The ID of the attachment account owner."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "vpc_arn" {
  description = "(Required) The ARN of the VPC."
  type        = string
}
variable "edge_location" {
  description = "The Region where the edge is located."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the attachment."
  type        = string
  default     = ""
}
variable "segment_name" {
  description = "The name of the segment attachment."
  type        = string
  default     = ""
}
variable "subnet_arns" {
  description = "(Required) The subnet ARN of the VPC attachment."
  type        = string
}
variable "core_network_id" {
  description = "(Required) The ID of a core network for the VPC attachment."
  type        = string
}
variable "state" {
  description = "The state of the attachment."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value tags for the Global Network. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options"
  type        = string
  default     = ""
}
variable "resource_arn" {
  description = "The attachment resource ARN."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the attachment."
  type        = string
  default     = ""
}
variable "attachment_policy_rule_number" {
  description = "The policy rule number associated with the attachment."
  type        = string
  default     = ""
}
variable "attachment_type" {
  description = "The type of attachment."
  type        = string
  default     = ""
}
variable "core_network_arn" {
  description = "The ARN of a core network."
  type        = string
  default     = ""
}
variable "ipv6_support" {
  description = "(Required) Indicates whether IPv6 is supported.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "options" {
  description = "(Optional) Options for the VPC attachment."
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
output "core_network_arn" {
  description = "The ARN of a core network."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.core_network_arn
}
output "ipv6_support" {
  description = "(Required) Indicates whether IPv6 is supported.In addition to all arguments above, the following attributes are exported:"
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.ipv6_support
}
output "options" {
  description = "(Optional) Options for the VPC attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.options
}
output "resource_arn" {
  description = "The attachment resource ARN."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.resource_arn
}
output "arn" {
  description = "The ARN of the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.arn
}
output "attachment_policy_rule_number" {
  description = "The policy rule number associated with the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.attachment_policy_rule_number
}
output "attachment_type" {
  description = "The type of attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.attachment_type
}
output "owner_account_id" {
  description = "The ID of the attachment account owner."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.owner_account_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.tags_all
}
output "vpc_arn" {
  description = "(Required) The ARN of the VPC."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.vpc_arn
}
output "subnet_arns" {
  description = "(Required) The subnet ARN of the VPC attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.subnet_arns
}
output "edge_location" {
  description = "The Region where the edge is located."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.edge_location
}
output "id" {
  description = "The ID of the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.id
}
output "segment_name" {
  description = "The name of the segment attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.segment_name
}
output "core_network_id" {
  description = "(Required) The ID of a core network for the VPC attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.core_network_id
}
output "state" {
  description = "The state of the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.state
}
output "tags" {
  description = "(Optional) Key-value tags for the Global Network. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options"
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.tags
}
output "id" {
  description = "The ID of the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.id
}
output "resource_arn" {
  description = "The attachment resource ARN."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.resource_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.tags_all
}
output "owner_account_id" {
  description = "The ID of the attachment account owner."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.owner_account_id
}
output "segment_name" {
  description = "The name of the segment attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.segment_name
}
output "state" {
  description = "The state of the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.state
}
output "arn" {
  description = "The ARN of the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.arn
}
output "attachment_policy_rule_number" {
  description = "The policy rule number associated with the attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.attachment_policy_rule_number
}
output "attachment_type" {
  description = "The type of attachment."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.attachment_type
}
output "core_network_arn" {
  description = "The ARN of a core network."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.core_network_arn
}
output "edge_location" {
  description = "The Region where the edge is located."
  value       = aws_networkmanager_vpc_attachment.aws_networkmanager_vpc_attachment.edge_location
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
      "kind/name"                   = "aws_networkmanager_vpc_attachment"
      "kind/version"                = "v0.1.0"
    }
  }
}
