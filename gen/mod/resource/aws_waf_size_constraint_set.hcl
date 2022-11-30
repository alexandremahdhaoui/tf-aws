resource "aws_waf_size_constraint_set" "aws_waf_size_constraint_set" {
  text_transformation = var.text_transformation
  type                = var.type
  comparison_operator = var.comparison_operator
  size                = var.size
  size_constraints    = var.size_constraints
  name                = var.name
  data                = var.data
  field_to_match      = var.field_to_match
  id                  = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "comparison_operator" {
  description = "(Required) The type of comparison you want to perform.\ne.g., EQ, NE, LT, GTdocs for all supported values."
  type        = string
}
variable "size" {
  description = "(Required) The size in bytes that you want to compare against the size of the specified field_to_match"
  type        = string
}
variable "size_constraints" {
  description = "(Optional) Specifies the parts of web requests that you want to inspect the size of.Nested Blockssize_constraintsArguments"
  type        = string
}
variable "text_transformation" {
  description = "(Required) Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.\nIf you specify a transformation, AWS WAF performs the transformation on field_to_matchCMD_LINE, HTML_ENTITY_DECODE or NONEdocsstrongNote: if you choose BODY as type, you must choose NONE because CloudFront forwards only the first 8192 bytes for inspection.field_to_matchArguments"
  type        = string
}
variable "type" {
  description = "(Required) The part of the web request that you want AWS WAF to search for a specified string.\ne.g., HEADER, METHOD or BODYdocsIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "data" {
  description = "(Optional) When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referertype is any other value, omit this field."
  type        = string
}
variable "field_to_match" {
  description = "(Required) Specifies where in a web request to look for the size constraint."
  type        = string
}
variable "id" {
  description = "The ID of the WAF Size Constraint Set."
  type        = string
}
variable "name" {
  description = "(Required) The name or description of the Size Constraint Set."
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
output "comparison_operator" {
  description = "(Required) The type of comparison you want to perform.\ne.g., EQ, NE, LT, GTdocs for all supported values."
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.comparison_operator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size" {
  description = "(Required) The size in bytes that you want to compare against the size of the specified field_to_match"
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size_constraints" {
  description = "(Optional) Specifies the parts of web requests that you want to inspect the size of.Nested Blockssize_constraintsArguments"
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.size_constraints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "text_transformation" {
  description = "(Required) Text transformations used to eliminate unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.\nIf you specify a transformation, AWS WAF performs the transformation on field_to_matchCMD_LINE, HTML_ENTITY_DECODE or NONEdocsstrongNote: if you choose BODY as type, you must choose NONE because CloudFront forwards only the first 8192 bytes for inspection.field_to_matchArguments"
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.text_transformation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) The part of the web request that you want AWS WAF to search for a specified string.\ne.g., HEADER, METHOD or BODYdocsIn addition to all arguments above, the following attributes are exported:"
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data" {
  description = "(Optional) When type is HEADER, enter the name of the header that you want to search, e.g., User-Agent or Referertype is any other value, omit this field."
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "field_to_match" {
  description = "(Required) Specifies where in a web request to look for the size constraint."
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.field_to_match
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the WAF Size Constraint Set."
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name or description of the Size Constraint Set."
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN)"
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the WAF Size Constraint Set."
  value       = aws_waf_size_constraint_set.aws_waf_size_constraint_set.id
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
      "kind/name"                   = "aws_waf_size_constraint_set"
      "kind/version"                = "v0.1.0"
    }
  }
}
