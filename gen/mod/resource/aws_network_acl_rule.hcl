resource "aws_network_acl_rule" "aws_network_acl_rule" {
  cidr_block      = var.cidr_block
  from_port       = var.from_port
  network_acl_id  = var.network_acl_id
  protocol        = var.protocol
  rule_number     = var.rule_number
  to_port         = var.to_port
  egress          = var.egress
  icmp_code       = var.icmp_code
  icmp_type       = var.icmp_type
  ipv6_cidr_block = var.ipv6_cidr_block
  rule_action     = var.rule_action
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "network_acl_id" {
  description = "(Required) The ID of the network ACL."
  type        = string
}
variable "protocol" {
  description = "(Required) The protocol. A value of -1 means all protocols."
  type        = string
}
variable "rule_number" {
  description = "(Required) The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number."
  type        = string
}
variable "to_port" {
  description = "(Optional) The to port to match."
  type        = string
  default     = ""
}
variable "cidr_block" {
  description = "(Optional) The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 )."
  type        = string
  default     = ""
}
variable "from_port" {
  description = "(Optional) The from port to match."
  type        = string
  default     = ""
}
variable "icmp_type" {
  description = "(Optional) ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1"
  type        = string
  default     = ""
}
variable "ipv6_cidr_block" {
  description = "(Optional) The IPv6 CIDR block to allow or deny."
  type        = string
  default     = ""
}
variable "rule_action" {
  description = "(Required) Indicates whether to allow or deny the traffic that matches the rule. Accepted values: allow | deny"
  type        = string
}
variable "egress" {
  description = "(Optional, bool) Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default false."
  type        = string
}
variable "icmp_code" {
  description = "(Optional) ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1~> strongNOTE: If the value of protocol is -1 or all, the from_port and to_port values will be ignored and the rule will apply to all ports.~> strongNOTE: If the value of icmp_type is -1 (which results in a wildcard ICMP type), the icmp_code must also be set to -1 (wildcard ICMP code).~> Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtmlIn addition to all arguments above, the following attributes are exported:"
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
output "cidr_block" {
  description = "(Optional) The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 )."
  value       = aws_network_acl_rule.aws_network_acl_rule.cidr_block
}
output "from_port" {
  description = "(Optional) The from port to match."
  value       = aws_network_acl_rule.aws_network_acl_rule.from_port
}
output "network_acl_id" {
  description = "(Required) The ID of the network ACL."
  value       = aws_network_acl_rule.aws_network_acl_rule.network_acl_id
}
output "protocol" {
  description = "(Required) The protocol. A value of -1 means all protocols."
  value       = aws_network_acl_rule.aws_network_acl_rule.protocol
}
output "rule_number" {
  description = "(Required) The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number."
  value       = aws_network_acl_rule.aws_network_acl_rule.rule_number
}
output "to_port" {
  description = "(Optional) The to port to match."
  value       = aws_network_acl_rule.aws_network_acl_rule.to_port
}
output "egress" {
  description = "(Optional, bool) Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default false."
  value       = aws_network_acl_rule.aws_network_acl_rule.egress
}
output "icmp_code" {
  description = "(Optional) ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1~> strongNOTE: If the value of protocol is -1 or all, the from_port and to_port values will be ignored and the rule will apply to all ports.~> strongNOTE: If the value of icmp_type is -1 (which results in a wildcard ICMP type), the icmp_code must also be set to -1 (wildcard ICMP code).~> Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtmlIn addition to all arguments above, the following attributes are exported:"
  value       = aws_network_acl_rule.aws_network_acl_rule.icmp_code
}
output "icmp_type" {
  description = "(Optional) ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1"
  value       = aws_network_acl_rule.aws_network_acl_rule.icmp_type
}
output "ipv6_cidr_block" {
  description = "(Optional) The IPv6 CIDR block to allow or deny."
  value       = aws_network_acl_rule.aws_network_acl_rule.ipv6_cidr_block
}
output "rule_action" {
  description = "(Required) Indicates whether to allow or deny the traffic that matches the rule. Accepted values: allow | deny"
  value       = aws_network_acl_rule.aws_network_acl_rule.rule_action
}
output "id" {
  description = "The ID of the network ACL Rule"
  value       = aws_network_acl_rule.aws_network_acl_rule.id
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
      "kind/name"                   = "aws_network_acl_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
