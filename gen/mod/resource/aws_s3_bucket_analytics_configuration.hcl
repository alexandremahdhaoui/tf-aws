resource "aws_s3_bucket_analytics_configuration" "aws_s3_bucket_analytics_configuration" {
  prefix                 = var.prefix
  storage_class_analysis = var.storage_class_analysis
  bucket                 = var.bucket
  bucket_account_id      = var.bucket_account_id
  data_export            = var.data_export
  filter                 = var.filter
  format                 = var.format
  output_schema_version  = var.output_schema_version
  bucket_arn             = var.bucket_arn
  destination            = var.destination
  name                   = var.name
  s3_bucket_destination  = var.s3_bucket_destination
  tags                   = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "prefix" {
  description = "(Optional) Object prefix for filtering."
  type        = string
  default     = ""
}
variable "storage_class_analysis" {
  description = "(Optional) Configuration for the analytics data export (documented below).The filter configuration supports the following:"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) The name of the bucket this analytics configuration is associated with."
  type        = string
}
variable "bucket_account_id" {
  description = "(Optional) The account ID that owns the destination bucket."
  type        = string
  default     = ""
}
variable "data_export" {
  description = "(Required) Data export configuration (documented below).The data_export configuration supports the following:"
  type        = string
}
variable "filter" {
  description = "(Optional) Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below)."
  type        = string
  default     = ""
}
variable "format" {
  description = "(Optional) The output format of exported analytics data. Allowed values: CSV. Default value: CSV."
  type        = string
  default     = ""
}
variable "output_schema_version" {
  description = "(Optional) The schema version of exported analytics data. Allowed values: V_1. Default value: V_1."
  type        = string
  default     = ""
}
variable "bucket_arn" {
  description = "(Required) The ARN of the destination bucket."
  type        = string
}
variable "destination" {
  description = "(Required) Specifies the destination for the exported analytics data (documented below).The destination configuration supports the following:"
  type        = string
}
variable "name" {
  description = "(Required) Unique identifier of the analytics configuration for the bucket."
  type        = string
}
variable "s3_bucket_destination" {
  description = "(Required) Analytics data export currently only supports an S3 bucket destination (documented below).The s3_bucket_destination configuration supports the following:"
  type        = string
}
variable "tags" {
  description = "(Optional) Set of object tags for filtering.The storage_class_analysis configuration supports the following:"
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
output "bucket_arn" {
  description = "(Required) The ARN of the destination bucket."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.bucket_arn
}
output "destination" {
  description = "(Required) Specifies the destination for the exported analytics data (documented below).The destination configuration supports the following:"
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.destination
}
output "name" {
  description = "(Required) Unique identifier of the analytics configuration for the bucket."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.name
}
output "s3_bucket_destination" {
  description = "(Required) Analytics data export currently only supports an S3 bucket destination (documented below).The s3_bucket_destination configuration supports the following:"
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.s3_bucket_destination
}
output "tags" {
  description = "(Optional) Set of object tags for filtering.The storage_class_analysis configuration supports the following:"
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.tags
}
output "bucket" {
  description = "(Required) The name of the bucket this analytics configuration is associated with."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.bucket
}
output "bucket_account_id" {
  description = "(Optional) The account ID that owns the destination bucket."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.bucket_account_id
}
output "data_export" {
  description = "(Required) Data export configuration (documented below).The data_export configuration supports the following:"
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.data_export
}
output "filter" {
  description = "(Optional) Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below)."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.filter
}
output "format" {
  description = "(Optional) The output format of exported analytics data. Allowed values: CSV. Default value: CSV."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.format
}
output "output_schema_version" {
  description = "(Optional) The schema version of exported analytics data. Allowed values: V_1. Default value: V_1."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.output_schema_version
}
output "prefix" {
  description = "(Optional) Object prefix for filtering."
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.prefix
}
output "storage_class_analysis" {
  description = "(Optional) Configuration for the analytics data export (documented below).The filter configuration supports the following:"
  value       = aws_s3_bucket_analytics_configuration.aws_s3_bucket_analytics_configuration.storage_class_analysis
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
      "kind/name"                   = "aws_s3_bucket_analytics_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
