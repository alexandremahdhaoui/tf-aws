resource "aws_route53_resolver_rule" "aws_route53_resolver_rule" {
  share_status         = var.share_status
  tags                 = var.tags
  id                   = var.id
  port                 = var.port
  resolver_endpoint_id = var.resolver_endpoint_id
  name                 = var.name
  owner_id             = var.owner_id
  rule_type            = var.rule_type
  target_ip            = var.target_ip
  arn                  = var.arn
  domain_name          = var.domain_name
  ip                   = var.ip
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The ID of the resolver rule."
  type        = string
}
variable "port" {
  description = "(Optional) The port at ip that you want to forward DNS queries to. Default value is 53In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "resolver_endpoint_id" {
  description = " (Optional) The ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using target_ipFORWARD type rules."
  type        = string
  default     = ""
}
variable "share_status" {
  description = "Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.\nValues are NOT_SHARED, SHARED_BY_ME or SHARED_WITH_ME"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The target_ip object supports the following:"
  type        = string
  default     = ""
}
variable "target_ip" {
  description = "(Optional) Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).\nThis argument should only be specified for FORWARD type rules."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN (Amazon Resource Name) for the resolver rule."
  type        = string
}
variable "domain_name" {
  description = "(Required) DNS queries for this domain name are forwarded to the IP addresses that are specified using target_ip."
  type        = string
}
variable "ip" {
  description = "(Required) One IP address that you want to forward DNS queries to. You can specify only IPv4 addresses."
  type        = string
}
variable "name" {
  description = "(Optional) A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "When a rule is shared with another AWS account, the account ID of the account that the rule is shared with."
  type        = string
}
variable "rule_type" {
  description = "(Required) The rule type. Valid values are FORWARD, SYSTEM and RECURSIVE."
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
output "arn" {
  description = "The ARN (Amazon Resource Name) for the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.arn
}
output "domain_name" {
  description = "(Required) DNS queries for this domain name are forwarded to the IP addresses that are specified using target_ip."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.domain_name
}
output "ip" {
  description = "(Required) One IP address that you want to forward DNS queries to. You can specify only IPv4 addresses."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.ip
}
output "name" {
  description = "(Optional) A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.name
}
output "owner_id" {
  description = "When a rule is shared with another AWS account, the account ID of the account that the rule is shared with."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.owner_id
}
output "rule_type" {
  description = "(Required) The rule type. Valid values are FORWARD, SYSTEM and RECURSIVE."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.rule_type
}
output "target_ip" {
  description = "(Optional) Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).\nThis argument should only be specified for FORWARD type rules."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.target_ip
}
output "id" {
  description = "The ID of the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.id
}
output "port" {
  description = "(Optional) The port at ip that you want to forward DNS queries to. Default value is 53In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.port
}
output "resolver_endpoint_id" {
  description = " (Optional) The ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using target_ipFORWARD type rules."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.resolver_endpoint_id
}
output "share_status" {
  description = "Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.\nValues are NOT_SHARED, SHARED_BY_ME or SHARED_WITH_ME"
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.share_status
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The target_ip object supports the following:"
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.tags_all
}
output "arn" {
  description = "The ARN (Amazon Resource Name) for the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.arn
}
output "id" {
  description = "The ID of the resolver rule."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.id
}
output "owner_id" {
  description = "When a rule is shared with another AWS account, the account ID of the account that the rule is shared with."
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.owner_id
}
output "share_status" {
  description = "Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.\nValues are NOT_SHARED, SHARED_BY_ME or SHARED_WITH_ME"
  value       = aws_route53_resolver_rule.aws_route53_resolver_rule.share_status
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
      "kind/name"                   = "aws_route53_resolver_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
