resource "aws_waf_web_acl" "aws_waf_web_acl" {
  redacted_fields       = var.redacted_fields
  tags                  = var.tags
  type                  = var.type
  arn                   = var.arn
  default_action        = var.default_action
  logging_configuration = var.logging_configuration
  priority              = var.priority
  data                  = var.data
  log_destination       = var.log_destination
  metric_name           = var.metric_name
  rule_id               = var.rule_id
  rules                 = var.rules
  action                = var.action
  field_to_match        = var.field_to_match
  id                    = var.id
  name                  = var.name
  override_action       = var.override_action
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "action" {
  description = "(Optional) The action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Not used if type is GROUP"
  type        = string
  default     = ""
}
variable "field_to_match" {
  description = "(Required) Set of configuration blocks for fields to redact. Detailed below.field_to_match Configuration Block-> Additional information about this configuration can be found in the AWS WAF Regional API Reference."
  type        = string
}
variable "id" {
  description = "The ID of the WAF WebACL."
  type        = string
}
variable "name" {
  description = "(Required) The name or description of the web ACL."
  type        = string
}
variable "override_action" {
  description = "(Optional) Override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Only used if type is GROUP"
  type        = string
  default     = ""
}
variable "redacted_fields" {
  description = "(Optional) Configuration block containing parts of the request that you want redacted from the logs. Detailed below.redacted_fields Configuration Block"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.default_action Configuration Block"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) The rule type, either REGULAR, as defined by Rule, RATE_BASED, as defined by RateBasedRule, or GROUP, as defined by RuleGroup. The default is REGULAR. If you add a RATE_BASED rule, you need to set type as RATE_BASED. If you add a GROUP rule, you need to set type as GROUP.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the WAF WebACL."
  type        = string
}
variable "default_action" {
  description = "(Required) Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below."
  type        = string
}
variable "logging_configuration" {
  description = "(Optional) Configuration block to enable WAF logging. Detailed below."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Required) Specifies the order in which the rules in a WebACL are evaluated.\nRules with a lower value are evaluated before rules with a higher value."
  type        = string
}
variable "data" {
  description = "(Optional) When the value of type is HEADER, enter the name of the header that you want the WAF to search, for example, User-Agent or Referer. If the value of type is any other value, omit data."
  type        = string
  default     = ""
}
variable "log_destination" {
  description = "(Required) Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream"
  type        = string
}
variable "metric_name" {
  description = "(Required) The name or description for the Amazon CloudWatch metric of this web ACL."
  type        = string
}
variable "rule_id" {
  description = "(Required) ID of the associated WAF (Global) rule (e.g., aws_waf_rule). WAF (Regional) rules cannot be used."
  type        = string
}
variable "rules" {
  description = "(Optional) Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below."
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
output "redacted_fields" {
  description = "(Optional) Configuration block containing parts of the request that you want redacted from the logs. Detailed below.redacted_fields Configuration Block"
  value       = aws_waf_web_acl.aws_waf_web_acl.redacted_fields
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.default_action Configuration Block"
  value       = aws_waf_web_acl.aws_waf_web_acl.tags
}
output "type" {
  description = "(Optional) The rule type, either REGULAR, as defined by Rule, RATE_BASED, as defined by RateBasedRule, or GROUP, as defined by RuleGroup. The default is REGULAR. If you add a RATE_BASED rule, you need to set type as RATE_BASED. If you add a GROUP rule, you need to set type as GROUP.In addition to all arguments above, the following attributes are exported:"
  value       = aws_waf_web_acl.aws_waf_web_acl.type
}
output "arn" {
  description = "The ARN of the WAF WebACL."
  value       = aws_waf_web_acl.aws_waf_web_acl.arn
}
output "default_action" {
  description = "(Required) Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below."
  value       = aws_waf_web_acl.aws_waf_web_acl.default_action
}
output "logging_configuration" {
  description = "(Optional) Configuration block to enable WAF logging. Detailed below."
  value       = aws_waf_web_acl.aws_waf_web_acl.logging_configuration
}
output "priority" {
  description = "(Required) Specifies the order in which the rules in a WebACL are evaluated.\nRules with a lower value are evaluated before rules with a higher value."
  value       = aws_waf_web_acl.aws_waf_web_acl.priority
}
output "data" {
  description = "(Optional) When the value of type is HEADER, enter the name of the header that you want the WAF to search, for example, User-Agent or Referer. If the value of type is any other value, omit data."
  value       = aws_waf_web_acl.aws_waf_web_acl.data
}
output "log_destination" {
  description = "(Required) Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream"
  value       = aws_waf_web_acl.aws_waf_web_acl.log_destination
}
output "metric_name" {
  description = "(Required) The name or description for the Amazon CloudWatch metric of this web ACL."
  value       = aws_waf_web_acl.aws_waf_web_acl.metric_name
}
output "rule_id" {
  description = "(Required) ID of the associated WAF (Global) rule (e.g., aws_waf_rule). WAF (Regional) rules cannot be used."
  value       = aws_waf_web_acl.aws_waf_web_acl.rule_id
}
output "rules" {
  description = "(Optional) Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below."
  value       = aws_waf_web_acl.aws_waf_web_acl.rules
}
output "action" {
  description = "(Optional) The action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Not used if type is GROUP"
  value       = aws_waf_web_acl.aws_waf_web_acl.action
}
output "field_to_match" {
  description = "(Required) Set of configuration blocks for fields to redact. Detailed below.field_to_match Configuration Block-> Additional information about this configuration can be found in the AWS WAF Regional API Reference."
  value       = aws_waf_web_acl.aws_waf_web_acl.field_to_match
}
output "id" {
  description = "The ID of the WAF WebACL."
  value       = aws_waf_web_acl.aws_waf_web_acl.id
}
output "name" {
  description = "(Required) The name or description of the web ACL."
  value       = aws_waf_web_acl.aws_waf_web_acl.name
}
output "override_action" {
  description = "(Optional) Override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Only used if type is GROUP"
  value       = aws_waf_web_acl.aws_waf_web_acl.override_action
}
output "arn" {
  description = "The ARN of the WAF WebACL."
  value       = aws_waf_web_acl.aws_waf_web_acl.arn
}
output "id" {
  description = "The ID of the WAF WebACL."
  value       = aws_waf_web_acl.aws_waf_web_acl.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_waf_web_acl.aws_waf_web_acl.tags_all
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
      "kind/name"                   = "aws_waf_web_acl"
      "kind/version"                = "v0.1.0"
    }
  }
}
