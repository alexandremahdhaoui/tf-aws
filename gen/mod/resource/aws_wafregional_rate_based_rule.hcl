resource "aws_wafregional_rate_based_rule" "aws_wafregional_rate_based_rule" {
  type        = var.type
  name        = var.name
  negated     = var.negated
  rate_key    = var.rate_key
  rate_limit  = var.rate_limit
  predicate   = var.predicate
  tags        = var.tags
  arn         = var.arn
  data_id     = var.data_id
  id          = var.id
  metric_name = var.metric_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "negated" {
  description = "(Required) Set this to falseByteMatchSet, IPSet, SqlInjectionMatchSet, XssMatchSet, or SizeConstraintSet192.0.2.44true, AWS WAF will allow, block, or count requests based on all IP addresses emexcept 192.0.2.44."
  type        = string
}
variable "rate_key" {
  description = "(Required) Valid value is IP."
  type        = string
}
variable "rate_limit" {
  description = "(Required) The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100."
  type        = string
}
variable "type" {
  description = "(Required) The type of predicate in a rule. Valid values: ByteMatch, GeoMatch, IPMatch, RegexMatch, SizeConstraint, SqlInjectionMatch, or XssMatch.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "(Required) The name or description of the rule."
  type        = string
}
variable "data_id" {
  description = "(Required) A unique identifier for a predicate in the rule, such as Byte Match Set ID or IPSet ID."
  type        = string
}
variable "id" {
  description = "The ID of the WAF Regional Rate Based Rule."
  type        = string
}
variable "metric_name" {
  description = "(Required) The name or description for the Amazon CloudWatch metric of this rule."
  type        = string
}
variable "predicate" {
  description = "(Optional) The objects to include in a rule (documented below)."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested BlockspredicateSee the WAF Documentation for more information.Arguments"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the WAF Regional Rate Based Rule."
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
output "type" {
  description = "(Required) The type of predicate in a rule. Valid values: ByteMatch, GeoMatch, IPMatch, RegexMatch, SizeConstraint, SqlInjectionMatch, or XssMatch.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.type
}
output "name" {
  description = "(Required) The name or description of the rule."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.name
}
output "negated" {
  description = "(Required) Set this to falseByteMatchSet, IPSet, SqlInjectionMatchSet, XssMatchSet, or SizeConstraintSet192.0.2.44true, AWS WAF will allow, block, or count requests based on all IP addresses emexcept 192.0.2.44."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.negated
}
output "rate_key" {
  description = "(Required) Valid value is IP."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.rate_key
}
output "rate_limit" {
  description = "(Required) The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.rate_limit
}
output "predicate" {
  description = "(Optional) The objects to include in a rule (documented below)."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.predicate
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested BlockspredicateSee the WAF Documentation for more information.Arguments"
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.tags
}
output "arn" {
  description = "The ARN of the WAF Regional Rate Based Rule."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.arn
}
output "data_id" {
  description = "(Required) A unique identifier for a predicate in the rule, such as Byte Match Set ID or IPSet ID."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.data_id
}
output "id" {
  description = "The ID of the WAF Regional Rate Based Rule."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.id
}
output "metric_name" {
  description = "(Required) The name or description for the Amazon CloudWatch metric of this rule."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.metric_name
}
output "arn" {
  description = "The ARN of the WAF Regional Rate Based Rule."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.arn
}
output "id" {
  description = "The ID of the WAF Regional Rate Based Rule."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_wafregional_rate_based_rule.aws_wafregional_rate_based_rule.tags_all
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
      "kind/name"                   = "aws_wafregional_rate_based_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
