resource "aws_s3_bucket_cors_configuration" "aws_s3_bucket_cors_configuration" {
  allowed_methods       = var.allowed_methods
  allowed_origins       = var.allowed_origins
  cors_rule             = var.cors_rule
  expose_headers        = var.expose_headers
  id                    = var.id
  max_age_seconds       = var.max_age_seconds
  allowed_headers       = var.allowed_headers
  expected_bucket_owner = var.expected_bucket_owner
  bucket                = var.bucket
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "max_age_seconds" {
  description = "(Optional) The time in seconds that your browser is to cache the preflight response for the specified resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "allowed_headers" {
  description = "(Optional) Set of Headers that are specified in the Access-Control-Request-Headers header."
  type        = string
}
variable "allowed_methods" {
  description = "(Required) Set of HTTP methods that you allow the origin to execute. Valid values are GET, PUT, HEAD, POST, and DELETE."
  type        = string
}
variable "allowed_origins" {
  description = "(Required) Set of origins you want customers to be able to access the bucket from."
  type        = string
}
variable "cors_rule" {
  description = "(Required) Set of origins and methods (cross-origin access that you want to allow) documented below. You can configure up to 100 rules.cors_ruleThe cors_rule configuration block supports the following arguments:"
  type        = string
}
variable "expose_headers" {
  description = "(Optional) Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object)."
  type        = string
}
variable "id" {
  description = "(Optional) Unique identifier for the rule. The value cannot be longer than 255 characters."
  type        = string
}
variable "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  type        = string
}
variable "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
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
output "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.expected_bucket_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_age_seconds" {
  description = "(Optional) The time in seconds that your browser is to cache the preflight response for the specified resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.max_age_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_headers" {
  description = "(Optional) Set of Headers that are specified in the Access-Control-Request-Headers header."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.allowed_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_methods" {
  description = "(Required) Set of HTTP methods that you allow the origin to execute. Valid values are GET, PUT, HEAD, POST, and DELETE."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.allowed_methods
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_origins" {
  description = "(Required) Set of origins you want customers to be able to access the bucket from."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.allowed_origins
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cors_rule" {
  description = "(Required) Set of origins and methods (cross-origin access that you want to allow) documented below. You can configure up to 100 rules.cors_ruleThe cors_rule configuration block supports the following arguments:"
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.cors_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expose_headers" {
  description = "(Optional) Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object)."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.expose_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Unique identifier for the rule. The value cannot be longer than 255 characters."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_cors_configuration.aws_s3_bucket_cors_configuration.id
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
      "kind/name"                   = "aws_s3_bucket_cors_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
