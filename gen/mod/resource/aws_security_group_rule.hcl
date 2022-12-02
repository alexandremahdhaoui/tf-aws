resource "aws_security_group_rule" "aws_security_group_rule" {
  from_port                = var.from_port
  ipv6_cidr_blocks         = var.ipv6_cidr_blocks
  source_security_group_id = var.source_security_group_id
  type                     = var.type
  self                     = var.self
  cidr_blocks              = var.cidr_blocks
  create                   = var.create
  description              = var.description
  id                       = var.id
  prefix_list_ids          = var.prefix_list_ids
  protocol                 = var.protocol
  security_group_id        = var.security_group_id
  to_port                  = var.to_port
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "prefix_list_ids" {
  description = "(Optional) List of Prefix List IDs."
  type        = string
  default     = ""
}
variable "protocol" {
  description = "(Required) Protocol. If not icmp, icmpv6, tcp, udp, or all use the protocol number"
  type        = string
}
variable "security_group_id" {
  description = "(Required) Security group to apply this rule to."
  type        = string
}
variable "self" {
  description = "(Optional) Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with cidr_blocks, ipv6_cidr_blocks, or source_security_group_id."
  type        = string
  default     = ""
}
variable "cidr_blocks" {
  description = "(Optional) List of CIDR blocks. Cannot be specified with source_security_group_id or self."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 5m)"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the rule."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the security group rule.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "to_port" {
  description = "(Required) End port (or ICMP code if protocol is \"icmp\")."
  type        = string
}
variable "from_port" {
  description = "(Required) Start port (or ICMP type number if protocol is \"icmp\" or \"icmpv6\")."
  type        = string
}
variable "ipv6_cidr_blocks" {
  description = "(Optional) List of IPv6 CIDR blocks. Cannot be specified with source_security_group_id or self."
  type        = string
  default     = ""
}
variable "source_security_group_id" {
  description = "(Optional) Security group id to allow access to/from, depending on the type. Cannot be specified with cidr_blocks, ipv6_cidr_blocks, or self.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type of rule being created. Valid options are ingressegress (outbound)."
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
output "from_port" {
  description = "(Required) Start port (or ICMP type number if protocol is \"icmp\" or \"icmpv6\")."
  value       = aws_security_group_rule.aws_security_group_rule.from_port
}
output "ipv6_cidr_blocks" {
  description = "(Optional) List of IPv6 CIDR blocks. Cannot be specified with source_security_group_id or self."
  value       = aws_security_group_rule.aws_security_group_rule.ipv6_cidr_blocks
}
output "source_security_group_id" {
  description = "(Optional) Security group id to allow access to/from, depending on the type. Cannot be specified with cidr_blocks, ipv6_cidr_blocks, or self.In addition to all arguments above, the following attributes are exported:"
  value       = aws_security_group_rule.aws_security_group_rule.source_security_group_id
}
output "type" {
  description = "(Required) Type of rule being created. Valid options are ingressegress (outbound)."
  value       = aws_security_group_rule.aws_security_group_rule.type
}
output "cidr_blocks" {
  description = "(Optional) List of CIDR blocks. Cannot be specified with source_security_group_id or self."
  value       = aws_security_group_rule.aws_security_group_rule.cidr_blocks
}
output "create" {
  description = "(Default 5m)"
  value       = aws_security_group_rule.aws_security_group_rule.create
}
output "description" {
  description = "(Optional) Description of the rule."
  value       = aws_security_group_rule.aws_security_group_rule.description
}
output "id" {
  description = "ID of the security group rule.TimeoutsConfiguration options:"
  value       = aws_security_group_rule.aws_security_group_rule.id
}
output "prefix_list_ids" {
  description = "(Optional) List of Prefix List IDs."
  value       = aws_security_group_rule.aws_security_group_rule.prefix_list_ids
}
output "protocol" {
  description = "(Required) Protocol. If not icmp, icmpv6, tcp, udp, or all use the protocol number"
  value       = aws_security_group_rule.aws_security_group_rule.protocol
}
output "security_group_id" {
  description = "(Required) Security group to apply this rule to."
  value       = aws_security_group_rule.aws_security_group_rule.security_group_id
}
output "self" {
  description = "(Optional) Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with cidr_blocks, ipv6_cidr_blocks, or source_security_group_id."
  value       = aws_security_group_rule.aws_security_group_rule.self
}
output "to_port" {
  description = "(Required) End port (or ICMP code if protocol is \"icmp\")."
  value       = aws_security_group_rule.aws_security_group_rule.to_port
}
output "create" {
  description = "(Default 5m)"
  value       = aws_security_group_rule.aws_security_group_rule.create
}
output "id" {
  description = "ID of the security group rule.TimeoutsConfiguration options:"
  value       = aws_security_group_rule.aws_security_group_rule.id
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
      "kind/name"                   = "aws_security_group_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
