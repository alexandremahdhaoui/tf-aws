resource "aws_wafregional_sql_injection_match_set" "aws_wafregional_sql_injection_match_set" {
  text_transformation       = var.text_transformation
  type                      = var.type
  data                      = var.data
  field_to_match            = var.field_to_match
  name                      = var.name
  sql_injection_match_tuple = var.sql_injection_match_tuple
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) The name or description of the SizeConstraintSet."
  type        = string
}
variable "sql_injection_match_tuple" {
  description = "(Optional) The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.Nested fieldssql_injection_match_tuple"
  type        = string
  default     = ""
}
variable "text_transformation" {
  description = "(Required) Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.\nIf you specify a transformation, AWS WAF performs the transformation on field_to_matchCMD_LINE, HTML_ENTITY_DECODE or NONEdocsfield_to_match"
  type        = string
}
variable "type" {
  description = "(Required) The part of the web request that you want AWS WAF to search for a specified string.\ne.g., HEADER, METHOD or BODYdocsIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "data" {
  description = "(Optional) When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referertype is any other value, omit this field."
  type        = string
  default     = ""
}
variable "field_to_match" {
  description = "(Required) Specifies where in a web request to look for snippets of malicious SQL code."
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
output "data" {
  description = "(Optional) When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referertype is any other value, omit this field."
  value       = aws_wafregional_sql_injection_match_set.aws_wafregional_sql_injection_match_set.data
}
output "field_to_match" {
  description = "(Required) Specifies where in a web request to look for snippets of malicious SQL code."
  value       = aws_wafregional_sql_injection_match_set.aws_wafregional_sql_injection_match_set.field_to_match
}
output "name" {
  description = "(Required) The name or description of the SizeConstraintSet."
  value       = aws_wafregional_sql_injection_match_set.aws_wafregional_sql_injection_match_set.name
}
output "sql_injection_match_tuple" {
  description = "(Optional) The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.Nested fieldssql_injection_match_tuple"
  value       = aws_wafregional_sql_injection_match_set.aws_wafregional_sql_injection_match_set.sql_injection_match_tuple
}
output "text_transformation" {
  description = "(Required) Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.\nIf you specify a transformation, AWS WAF performs the transformation on field_to_matchCMD_LINE, HTML_ENTITY_DECODE or NONEdocsfield_to_match"
  value       = aws_wafregional_sql_injection_match_set.aws_wafregional_sql_injection_match_set.text_transformation
}
output "type" {
  description = "(Required) The part of the web request that you want AWS WAF to search for a specified string.\ne.g., HEADER, METHOD or BODYdocsIn addition to all arguments above, the following attributes are exported:"
  value       = aws_wafregional_sql_injection_match_set.aws_wafregional_sql_injection_match_set.type
}
output "id" {
  description = "The ID of the WAF SqlInjectionMatchSet."
  value       = aws_wafregional_sql_injection_match_set.aws_wafregional_sql_injection_match_set.id
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
      "kind/name"                   = "aws_wafregional_sql_injection_match_set"
      "kind/version"                = "v0.1.0"
    }
  }
}
