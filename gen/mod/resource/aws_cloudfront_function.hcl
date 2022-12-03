resource "aws_cloudfront_function" "aws_cloudfront_function" {
  comment         = var.comment
  etag            = var.etag
  live_stage_etag = var.live_stage_etag
  name            = var.name
  publish         = var.publish
  runtime         = var.runtime
  status          = var.status
  arn             = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "etag" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function."
  type        = string
  default     = ""
}
variable "live_stage_etag" {
  description = "ETag hash of any LIVE stage of the function."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Unique name for your CloudFront Function."
  type        = string
}
variable "publish" {
  description = "(Optional) Whether to publish creation/change as Live CloudFront Function Version. Defaults to true.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "runtime" {
  description = "(Required) Identifier of the function's runtime. Currently only cloudfront-js-1.0 is valid."
  type        = string
}
variable "status" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function."
  type        = string
  default     = ""
}
variable "comment" {
  description = "(Optional) Comment."
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
output "status" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED."
  value       = aws_cloudfront_function.aws_cloudfront_function.status
}
output "arn" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function."
  value       = aws_cloudfront_function.aws_cloudfront_function.arn
}
output "comment" {
  description = "(Optional) Comment."
  value       = aws_cloudfront_function.aws_cloudfront_function.comment
}
output "etag" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function."
  value       = aws_cloudfront_function.aws_cloudfront_function.etag
}
output "live_stage_etag" {
  description = "ETag hash of any LIVE stage of the function."
  value       = aws_cloudfront_function.aws_cloudfront_function.live_stage_etag
}
output "name" {
  description = "(Required) Unique name for your CloudFront Function."
  value       = aws_cloudfront_function.aws_cloudfront_function.name
}
output "publish" {
  description = "(Optional) Whether to publish creation/change as Live CloudFront Function Version. Defaults to true.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_function.aws_cloudfront_function.publish
}
output "runtime" {
  description = "(Required) Identifier of the function's runtime. Currently only cloudfront-js-1.0 is valid."
  value       = aws_cloudfront_function.aws_cloudfront_function.runtime
}
output "status" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED."
  value       = aws_cloudfront_function.aws_cloudfront_function.status
}
output "arn" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function."
  value       = aws_cloudfront_function.aws_cloudfront_function.arn
}
output "etag" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function."
  value       = aws_cloudfront_function.aws_cloudfront_function.etag
}
output "live_stage_etag" {
  description = "ETag hash of any LIVE stage of the function."
  value       = aws_cloudfront_function.aws_cloudfront_function.live_stage_etag
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
      "kind/name"                   = "aws_cloudfront_function"
      "kind/version"                = "v0.1.0"
    }
  }
}
