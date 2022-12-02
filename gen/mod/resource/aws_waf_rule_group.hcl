resource "aws_waf_rule_group" "aws_waf_rule_group" {
  priority       = var.priority
  action         = var.action
  arn            = var.arn
  id             = var.id
  rule_id        = var.rule_id
  tags           = var.tags
  type           = var.type
  activated_rule = var.activated_rule
  metric_name    = var.metric_name
  name           = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "activated_rule" {
  description = "(Optional) A list of activated rules, see below"
  type        = string
  default     = ""
}
variable "metric_name" {
  description = "(Required) A friendly name for the metrics from the rule group"
  type        = string
}
variable "name" {
  description = "(Required) A friendly name of the rule group"
  type        = string
}
variable "rule_id" {
  description = "(Required) The ID of a rule"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Blocksactivated_ruleArguments"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) The rule type, either REGULAR, RATE_BASED, or GROUP. Defaults to REGULAR.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "action" {
  description = "(Required) Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.\n"
  type        = string
}
variable "arn" {
  description = "The ARN of the WAF rule group."
  type        = string
}
variable "id" {
  description = "The ID of the WAF rule group."
  type        = string
}
variable "priority" {
  description = "(Required) Specifies the order in which the rules are evaluated. Rules with a lower value are evaluated before rules with a higher value."
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
output "action" {
  description = "(Required) Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.\n"
  value       = aws_waf_rule_group.aws_waf_rule_group.action
}
output "arn" {
  description = "The ARN of the WAF rule group."
  value       = aws_waf_rule_group.aws_waf_rule_group.arn
}
output "id" {
  description = "The ID of the WAF rule group."
  value       = aws_waf_rule_group.aws_waf_rule_group.id
}
output "priority" {
  description = "(Required) Specifies the order in which the rules are evaluated. Rules with a lower value are evaluated before rules with a higher value."
  value       = aws_waf_rule_group.aws_waf_rule_group.priority
}
output "type" {
  description = "(Optional) The rule type, either REGULAR, RATE_BASED, or GROUP. Defaults to REGULAR.In addition to all arguments above, the following attributes are exported:"
  value       = aws_waf_rule_group.aws_waf_rule_group.type
}
output "activated_rule" {
  description = "(Optional) A list of activated rules, see below"
  value       = aws_waf_rule_group.aws_waf_rule_group.activated_rule
}
output "metric_name" {
  description = "(Required) A friendly name for the metrics from the rule group"
  value       = aws_waf_rule_group.aws_waf_rule_group.metric_name
}
output "name" {
  description = "(Required) A friendly name of the rule group"
  value       = aws_waf_rule_group.aws_waf_rule_group.name
}
output "rule_id" {
  description = "(Required) The ID of a rule"
  value       = aws_waf_rule_group.aws_waf_rule_group.rule_id
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Blocksactivated_ruleArguments"
  value       = aws_waf_rule_group.aws_waf_rule_group.tags
}
output "arn" {
  description = "The ARN of the WAF rule group."
  value       = aws_waf_rule_group.aws_waf_rule_group.arn
}
output "id" {
  description = "The ID of the WAF rule group."
  value       = aws_waf_rule_group.aws_waf_rule_group.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_waf_rule_group.aws_waf_rule_group.tags_all
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
      "kind/name"                   = "aws_waf_rule_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
