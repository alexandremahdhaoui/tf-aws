resource "aws_s3_bucket_inventory" "aws_s3_bucket_inventory" {
  bucket                   = var.bucket
  filter                   = var.filter
  format                   = var.format
  optional_fields          = var.optional_fields
  schedule                 = var.schedule
  encryption               = var.encryption
  frequency                = var.frequency
  sse_kms                  = var.sse_kms
  prefix                   = var.prefix
  account_id               = var.account_id
  bucket_arn               = var.bucket_arn
  destination              = var.destination
  enabled                  = var.enabled
  included_object_versions = var.included_object_versions
  name                     = var.name
  sse_s3                   = var.sse_s3
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "sse_s3" {
  description = "(Optional) Specifies to use server-side encryption with Amazon S3-managed keys (SSE-S3) to encrypt the inventory file.The sse_kms configuration supports the following:"
  type        = string
}
variable "account_id" {
  description = "(Optional) The ID of the account that owns the destination bucket. Recommended to be set to prevent problems if the destination bucket ownership changes."
  type        = string
}
variable "bucket_arn" {
  description = "(Required) The Amazon S3 bucket ARN of the destination."
  type        = string
}
variable "destination" {
  description = "(Required) Contains information about where to publish the inventory results (documented below)."
  type        = string
}
variable "enabled" {
  description = "(Optional, Default: true) Specifies whether the inventory is enabled or disabled."
  type        = string
}
variable "included_object_versions" {
  description = "(Required) Object versions to include in the inventory list. Valid values: All, Current."
  type        = string
}
variable "name" {
  description = "(Required) Unique identifier of the inventory configuration for the bucket."
  type        = string
}
variable "bucket" {
  description = "(Required) The S3 bucket configuration where inventory results are published (documented below).The bucket configuration supports the following:"
  type        = string
}
variable "filter" {
  description = "(Optional) Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below)."
  type        = string
}
variable "format" {
  description = "(Required) Specifies the output format of the inventory results. Can be CSV, ORC or Parquet."
  type        = string
}
variable "optional_fields" {
  description = "(Optional) List of optional fields that are included in the inventory results. Please refer to the S3 documentation for more details.The filter configuration supports the following:"
  type        = string
}
variable "schedule" {
  description = "(Required) Specifies the schedule for generating inventory results (documented below)."
  type        = string
}
variable "encryption" {
  description = "(Optional) Contains the type of server-side encryption to use to encrypt the inventory (documented below).The encryption configuration supports the following:"
  type        = string
}
variable "frequency" {
  description = "(Required) Specifies how frequently inventory results are produced. Valid values: Daily, Weekly.The destination configuration supports the following:"
  type        = string
}
variable "sse_kms" {
  description = "(Optional) Specifies to use server-side encryption with AWS KMS-managed keys to encrypt the inventory file (documented below)."
  type        = string
}
variable "prefix" {
  description = "(Optional) The prefix that is prepended to all inventory results."
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
output "account_id" {
  description = "(Optional) The ID of the account that owns the destination bucket. Recommended to be set to prevent problems if the destination bucket ownership changes."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_arn" {
  description = "(Required) The Amazon S3 bucket ARN of the destination."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.bucket_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination" {
  description = "(Required) Contains information about where to publish the inventory results (documented below)."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional, Default: true) Specifies whether the inventory is enabled or disabled."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "included_object_versions" {
  description = "(Required) Object versions to include in the inventory list. Valid values: All, Current."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.included_object_versions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Unique identifier of the inventory configuration for the bucket."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sse_s3" {
  description = "(Optional) Specifies to use server-side encryption with Amazon S3-managed keys (SSE-S3) to encrypt the inventory file.The sse_kms configuration supports the following:"
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.sse_s3
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) The S3 bucket configuration where inventory results are published (documented below).The bucket configuration supports the following:"
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below)."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "format" {
  description = "(Required) Specifies the output format of the inventory results. Can be CSV, ORC or Parquet."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "optional_fields" {
  description = "(Optional) List of optional fields that are included in the inventory results. Please refer to the S3 documentation for more details.The filter configuration supports the following:"
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.optional_fields
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schedule" {
  description = "(Required) Specifies the schedule for generating inventory results (documented below)."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption" {
  description = "(Optional) Contains the type of server-side encryption to use to encrypt the inventory (documented below).The encryption configuration supports the following:"
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.encryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "frequency" {
  description = "(Required) Specifies how frequently inventory results are produced. Valid values: Daily, Weekly.The destination configuration supports the following:"
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.frequency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sse_kms" {
  description = "(Optional) Specifies to use server-side encryption with AWS KMS-managed keys to encrypt the inventory file (documented below)."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.sse_kms
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix" {
  description = "(Optional) The prefix that is prepended to all inventory results."
  value       = aws_s3_bucket_inventory.aws_s3_bucket_inventory.prefix
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
      "kind/name"                   = "aws_s3_bucket_inventory"
      "kind/version"                = "v0.1.0"
    }
  }
}
