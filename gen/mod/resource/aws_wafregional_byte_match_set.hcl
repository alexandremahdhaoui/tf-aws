resource "aws_wafregional_byte_match_set" "aws_wafregional_byte_match_set" {
  data                  = var.data
  field_to_match        = var.field_to_match
  name                  = var.name
  positional_constraint = var.positional_constraint
  target_string         = var.target_string
  text_transformation   = var.text_transformation
  type                  = var.type
  byte_match_tuples     = var.byte_match_tuples
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "text_transformation" {
  description = "(Required) The formatting way for web request.FieldToMatch(field_to_match) support following:"
  type        = string
}
variable "type" {
  description = "(Required) The part of the web request that you want AWS WAF to search for a specified string.RemarksIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "byte_match_tuples" {
  description = "(Optional)Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.ByteMatchTuples(byte_match_tuples) support the following:"
  type        = string
  default     = ""
}
variable "data" {
  description = "(Optional) When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. If the value of Type is any other value, omit Data."
  type        = string
  default     = ""
}
variable "field_to_match" {
  description = "(Required) Settings for the ByteMatchTuple. FieldToMatch documented below."
  type        = string
}
variable "name" {
  description = "(Required) The name or description of the ByteMatchSet."
  type        = string
}
variable "positional_constraint" {
  description = "(Required) Within the portion of a web request that you want to search."
  type        = string
}
variable "target_string" {
  description = "(Required) The value that you want AWS WAF to search for. The maximum length of the value is 50 bytes."
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
output "text_transformation" {
  description = "(Required) The formatting way for web request.FieldToMatch(field_to_match) support following:"
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.text_transformation
}
output "type" {
  description = "(Required) The part of the web request that you want AWS WAF to search for a specified string.RemarksIn addition to all arguments above, the following attributes are exported:"
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.type
}
output "byte_match_tuples" {
  description = "(Optional)Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.ByteMatchTuples(byte_match_tuples) support the following:"
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.byte_match_tuples
}
output "data" {
  description = "(Optional) When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. If the value of Type is any other value, omit Data."
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.data
}
output "field_to_match" {
  description = "(Required) Settings for the ByteMatchTuple. FieldToMatch documented below."
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.field_to_match
}
output "name" {
  description = "(Required) The name or description of the ByteMatchSet."
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.name
}
output "positional_constraint" {
  description = "(Required) Within the portion of a web request that you want to search."
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.positional_constraint
}
output "target_string" {
  description = "(Required) The value that you want AWS WAF to search for. The maximum length of the value is 50 bytes."
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.target_string
}
output "id" {
  description = "The ID of the WAF ByteMatchSet."
  value       = aws_wafregional_byte_match_set.aws_wafregional_byte_match_set.id
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
      "kind/name"                   = "aws_wafregional_byte_match_set"
      "kind/version"                = "v0.1.0"
    }
  }
}
