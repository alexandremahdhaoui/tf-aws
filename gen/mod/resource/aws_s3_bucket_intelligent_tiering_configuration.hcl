resource "aws_s3_bucket_intelligent_tiering_configuration" "aws_s3_bucket_intelligent_tiering_configuration" {
  status      = var.status
  tags        = var.tags
  tiering     = var.tiering
  access_tier = var.access_tier
  bucket      = var.bucket
  filter      = var.filter
  name        = var.name
  prefix      = var.prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket" {
  description = "(Required) The name of the bucket this intelligent tiering configuration is associated with."
  type        = string
}
variable "filter" {
  description = "(Optional) A bucket filter. The configuration only includes objects that meet the filter's criteria (documented below)."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The unique name used to identify the S3 Intelligent-Tiering configuration for the bucket."
  type        = string
}
variable "prefix" {
  description = "(Optional) An object key name prefix that identifies the subset of objects to which the configuration applies."
  type        = string
  default     = ""
}
variable "status" {
  description = "(Optional) Specifies the status of the configuration. Valid values: Enabled, Disabled."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) All of these tags must exist in the object's tag set in order for the configuration to apply.The tiering configuration supports the following:"
  type        = string
  default     = ""
}
variable "tiering" {
  description = "(Required) The S3 Intelligent-Tiering storage class tiers of the configuration (documented below).The filter configuration supports the following:"
  type        = string
}
variable "access_tier" {
  description = "(Required) S3 Intelligent-Tiering access tier. Valid values: ARCHIVE_ACCESS, DEEP_ARCHIVE_ACCESS."
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
output "name" {
  description = "(Required) The unique name used to identify the S3 Intelligent-Tiering configuration for the bucket."
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.name
}
output "prefix" {
  description = "(Optional) An object key name prefix that identifies the subset of objects to which the configuration applies."
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.prefix
}
output "status" {
  description = "(Optional) Specifies the status of the configuration. Valid values: Enabled, Disabled."
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.status
}
output "tags" {
  description = "(Optional) All of these tags must exist in the object's tag set in order for the configuration to apply.The tiering configuration supports the following:"
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.tags
}
output "tiering" {
  description = "(Required) The S3 Intelligent-Tiering storage class tiers of the configuration (documented below).The filter configuration supports the following:"
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.tiering
}
output "access_tier" {
  description = "(Required) S3 Intelligent-Tiering access tier. Valid values: ARCHIVE_ACCESS, DEEP_ARCHIVE_ACCESS."
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.access_tier
}
output "bucket" {
  description = "(Required) The name of the bucket this intelligent tiering configuration is associated with."
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.bucket
}
output "filter" {
  description = "(Optional) A bucket filter. The configuration only includes objects that meet the filter's criteria (documented below)."
  value       = aws_s3_bucket_intelligent_tiering_configuration.aws_s3_bucket_intelligent_tiering_configuration.filter
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
      "kind/name"                   = "aws_s3_bucket_intelligent_tiering_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
