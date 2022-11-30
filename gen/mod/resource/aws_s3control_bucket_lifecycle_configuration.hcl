resource "aws_s3control_bucket_lifecycle_configuration" "aws_s3control_bucket_lifecycle_configuration" {
  bucket                            = var.bucket
  date                              = var.date
  days                              = var.days
  days_after_initiation             = var.days_after_initiation
  filter                            = var.filter
  id                                = var.id
  rule                              = var.rule
  abort_incomplete_multipart_upload = var.abort_incomplete_multipart_upload
  tags                              = var.tags
  expired_object_delete_marker      = var.expired_object_delete_marker
  prefix                            = var.prefix
  status                            = var.status
  expiration                        = var.expiration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "rule" {
  description = ""
  type        = string
}
variable "abort_incomplete_multipart_upload" {
  description = "(Optional) Configuration block containing settings for abort incomplete multipart upload.\n"
  type        = string
}
variable "bucket" {
  description = "(Required) Amazon Resource Name (ARN) of the bucket."
  type        = string
}
variable "date" {
  description = "(Optional) Date the object is to be deleted. Should be in YYYY-MM-DD date format, e.g., 2020-09-30."
  type        = string
}
variable "days" {
  description = "(Optional) Number of days before the object is to be deleted."
  type        = string
}
variable "days_after_initiation" {
  description = "(Required) Number of days after which Amazon S3 aborts an incomplete multipart upload."
  type        = string
}
variable "filter" {
  description = ""
  type        = string
}
variable "id" {
  description = "(Required) Unique identifier for the rule."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of object tags for rule filtering."
  type        = string
}
variable "expiration" {
  description = "(Optional) Configuration block containing settings for expiration of objects.\n"
  type        = string
}
variable "expired_object_delete_marker" {
  description = "(Optional) Enable to remove a delete marker with no noncurrent versions. Cannot be specified with date or days."
  type        = string
}
variable "prefix" {
  description = "(Optional) Object prefix for rule filtering."
  type        = string
}
variable "status" {
  description = "(Optional) Status of the rule. Valid values: Enabled and Disabled. Defaults to Enabled.In addition to all arguments above, the following attributes are exported:"
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
output "abort_incomplete_multipart_upload" {
  description = "(Optional) Configuration block containing settings for abort incomplete multipart upload.\n"
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.abort_incomplete_multipart_upload
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) Amazon Resource Name (ARN) of the bucket."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date" {
  description = "(Optional) Date the object is to be deleted. Should be in YYYY-MM-DD date format, e.g., 2020-09-30."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "days" {
  description = "(Optional) Number of days before the object is to be deleted."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.days
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "days_after_initiation" {
  description = "(Required) Number of days after which Amazon S3 aborts an incomplete multipart upload."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.days_after_initiation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = ""
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Required) Unique identifier for the rule."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule" {
  description = ""
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of object tags for rule filtering."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expiration" {
  description = "(Optional) Configuration block containing settings for expiration of objects.\n"
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.expiration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expired_object_delete_marker" {
  description = "(Optional) Enable to remove a delete marker with no noncurrent versions. Cannot be specified with date or days."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.expired_object_delete_marker
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix" {
  description = "(Optional) Object prefix for rule filtering."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "(Optional) Status of the rule. Valid values: Enabled and Disabled. Defaults to Enabled.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the bucket."
  value       = aws_s3control_bucket_lifecycle_configuration.aws_s3control_bucket_lifecycle_configuration.id
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
      "kind/name"                   = "aws_s3control_bucket_lifecycle_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
