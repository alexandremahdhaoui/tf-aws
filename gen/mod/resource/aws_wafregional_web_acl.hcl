resource "aws_wafregional_web_acl" "aws_wafregional_web_acl" {
  action                = var.action
  data                  = var.data
  id                    = var.id
  metric_name           = var.metric_name
  override_action       = var.override_action
  priority              = var.priority
  type                  = var.type
  arn                   = var.arn
  field_to_match        = var.field_to_match
  redacted_fields       = var.redacted_fields
  default_action        = var.default_action
  log_destination       = var.log_destination
  logging_configuration = var.logging_configuration
  tags                  = var.tags
  name                  = var.name
  rule                  = var.rule
  rule_id               = var.rule_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the WAF Regional WebACL."
  type        = string
}
variable "field_to_match" {
  description = "(Required) Set of configuration blocks for fields to redact. Detailed below.field_to_match Configuration Block-> Additional information about this configuration can be found in the AWS WAF Regional API Reference."
  type        = string
}
variable "redacted_fields" {
  description = "(Optional) Configuration block containing parts of the request that you want redacted from the logs. Detailed below.redacted_fields Configuration Block"
  type        = string
  default     = ""
}
variable "default_action" {
  description = "(Required) The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL."
  type        = string
}
variable "log_destination" {
  description = "(Required) Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream"
  type        = string
}
variable "logging_configuration" {
  description = "(Optional) Configuration block to enable WAF logging. Detailed below."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.default_action Configuration Block"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name or description of the web ACL."
  type        = string
}
variable "rule" {
  description = "(Optional) Set of configuration blocks containing rules for the web ACL. Detailed below."
  type        = string
  default     = ""
}
variable "rule_id" {
  description = "(Required) ID of the associated WAF (Regional) rule (e.g., aws_wafregional_rule). WAF (Global) rules cannot be used."
  type        = string
}
variable "action" {
  description = "(Optional) Configuration block of the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Not used if type is GROUP. Detailed below."
  type        = string
  default     = ""
}
variable "data" {
  description = "(Optional) When the value of type is HEADER, enter the name of the header that you want the WAF to search, for example, User-Agent or Referer. If the value of type is any other value, omit data."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the WAF Regional WebACL."
  type        = string
}
variable "metric_name" {
  description = "(Required) The name or description for the Amazon CloudWatch metric of this web ACL."
  type        = string
}
variable "override_action" {
  description = "(Optional) Configuration block of the override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Only used if type is GROUP. Detailed below."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Required) Specifies the order in which the rules in a WebACL are evaluated.\nRules with a lower value are evaluated before rules with a higher value."
  type        = string
}
variable "type" {
  description = "(Required) Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for action are ALLOW, BLOCK or COUNT. Valid values for override_action are COUNT and NONE.In addition to all arguments above, the following attributes are exported:"
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
output "name" {
  description = "(Required) The name or description of the web ACL."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.name
}
output "rule" {
  description = "(Optional) Set of configuration blocks containing rules for the web ACL. Detailed below."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.rule
}
output "rule_id" {
  description = "(Required) ID of the associated WAF (Regional) rule (e.g., aws_wafregional_rule). WAF (Global) rules cannot be used."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.rule_id
}
output "override_action" {
  description = "(Optional) Configuration block of the override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Only used if type is GROUP. Detailed below."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.override_action
}
output "priority" {
  description = "(Required) Specifies the order in which the rules in a WebACL are evaluated.\nRules with a lower value are evaluated before rules with a higher value."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.priority
}
output "type" {
  description = "(Required) Specifies how you want AWS WAF Regional to respond to requests that match the settings in a rule. Valid values for action are ALLOW, BLOCK or COUNT. Valid values for override_action are COUNT and NONE.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.type
}
output "action" {
  description = "(Optional) Configuration block of the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Not used if type is GROUP. Detailed below."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.action
}
output "data" {
  description = "(Optional) When the value of type is HEADER, enter the name of the header that you want the WAF to search, for example, User-Agent or Referer. If the value of type is any other value, omit data."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.data
}
output "id" {
  description = "The ID of the WAF Regional WebACL."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.id
}
output "metric_name" {
  description = "(Required) The name or description for the Amazon CloudWatch metric of this web ACL."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.metric_name
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the WAF Regional WebACL."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.arn
}
output "field_to_match" {
  description = "(Required) Set of configuration blocks for fields to redact. Detailed below.field_to_match Configuration Block-> Additional information about this configuration can be found in the AWS WAF Regional API Reference."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.field_to_match
}
output "redacted_fields" {
  description = "(Optional) Configuration block containing parts of the request that you want redacted from the logs. Detailed below.redacted_fields Configuration Block"
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.redacted_fields
}
output "default_action" {
  description = "(Required) The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.default_action
}
output "log_destination" {
  description = "(Required) Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream"
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.log_destination
}
output "logging_configuration" {
  description = "(Optional) Configuration block to enable WAF logging. Detailed below."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.logging_configuration
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.default_action Configuration Block"
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the WAF Regional WebACL."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.arn
}
output "id" {
  description = "The ID of the WAF Regional WebACL."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_wafregional_web_acl.aws_wafregional_web_acl.tags_all
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
      "kind/name"                   = "aws_wafregional_web_acl"
      "kind/version"                = "v0.1.0"
    }
  }
}
