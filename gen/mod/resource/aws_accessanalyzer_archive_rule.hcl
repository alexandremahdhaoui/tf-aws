resource "aws_accessanalyzer_archive_rule" "aws_accessanalyzer_archive_rule" {
  rule_name     = var.rule_name
  analyzer_name = var.analyzer_name
  contains      = var.contains
  criteria      = var.criteria
  eq            = var.eq
  exists        = var.exists
  filter        = var.filter
  neq           = var.neq
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "neq" {
  description = "(Optional) Not Equals comparator.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "rule_name" {
  description = "(Required) Rule name.FilterstrongNote One comparator must be included with each filter."
  type        = string
}
variable "analyzer_name" {
  description = "(Required) Analyzer name."
  type        = string
}
variable "contains" {
  description = "(Optional) Contains comparator."
  type        = string
}
variable "criteria" {
  description = "(Required) Filter criteria."
  type        = string
}
variable "eq" {
  description = "(Optional) Equals comparator."
  type        = string
}
variable "exists" {
  description = "(Optional) Boolean comparator."
  type        = string
}
variable "filter" {
  description = "(Required) Filter criteria for the archive rule. See Filter for more details."
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
output "neq" {
  description = "(Optional) Not Equals comparator.In addition to all arguments above, the following attributes are exported:"
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.neq
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_name" {
  description = "(Required) Rule name.FilterstrongNote One comparator must be included with each filter."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.rule_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "analyzer_name" {
  description = "(Required) Analyzer name."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.analyzer_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "contains" {
  description = "(Optional) Contains comparator."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.contains
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "criteria" {
  description = "(Required) Filter criteria."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.criteria
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "eq" {
  description = "(Optional) Equals comparator."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.eq
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "exists" {
  description = "(Optional) Boolean comparator."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.exists
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Required) Filter criteria for the archive rule. See Filter for more details."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Resource ID in the format: analyzer_name/rule_name."
  value       = aws_accessanalyzer_archive_rule.aws_accessanalyzer_archive_rule.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
      "kind/name"                   = "aws_accessanalyzer_archive_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
