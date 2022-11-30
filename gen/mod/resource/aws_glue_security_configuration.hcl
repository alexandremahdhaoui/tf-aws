resource "aws_glue_security_configuration" "aws_glue_security_configuration" {
  s3_encryption_mode            = var.s3_encryption_mode
  job_bookmarks_encryption_mode = var.job_bookmarks_encryption_mode
  cloudwatch_encryption_mode    = var.cloudwatch_encryption_mode
  encryption_configuration      = var.encryption_configuration
  job_bookmarks_encryption      = var.job_bookmarks_encryption 
  kms_key_arn                   = var.kms_key_arn
  name                          = var.name
  s3_encryption                 = var.s3_encryption
  cloudwatch_encryption         = var.cloudwatch_encryption 
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "encryption_configuration" {
  description = " – (Required) Configuration block containing encryption configuration. Detailed below."
  type        = string
}
variable "job_bookmarks_encryption " {
  description = "(Required) A job_bookmarks_encryption  block as described below, which contains encryption configuration for job bookmarks."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = " – (Required) Name of the security configuration.encryption_configuration Argument Reference"
  type        = string
}
variable "s3_encryption" {
  description = "(Required) A s3_encryption  block as described below, which contains encryption configuration for S3 data.cloudwatch_encryption Argument Reference"
  type        = string
}
variable "cloudwatch_encryption " {
  description = "(Required) A cloudwatch_encryption  block as described below, which contains encryption configuration for CloudWatch."
  type        = string
}
variable "cloudwatch_encryption_mode" {
  description = "(Optional) Encryption mode to use for CloudWatch data. Valid values: DISABLED, SSE-KMS. Default value: DISABLED."
  type        = string
}
variable "job_bookmarks_encryption_mode" {
  description = "(Optional) Encryption mode to use for job bookmarks data. Valid values: CSE-KMS, DISABLED. Default value: DISABLED."
  type        = string
}
variable "s3_encryption_mode" {
  description = "(Optional) Encryption mode to use for S3 data. Valid values: DISABLED, SSE-KMS, SSE-S3. Default value: DISABLED."
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
output "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_security_configuration.aws_glue_security_configuration.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = " – (Required) Name of the security configuration.encryption_configuration Argument Reference"
  value       = aws_glue_security_configuration.aws_glue_security_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_encryption" {
  description = "(Required) A s3_encryption  block as described below, which contains encryption configuration for S3 data.cloudwatch_encryption Argument Reference"
  value       = aws_glue_security_configuration.aws_glue_security_configuration.s3_encryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_encryption " {
  description = "(Required) A cloudwatch_encryption  block as described below, which contains encryption configuration for CloudWatch."
  value       = aws_glue_security_configuration.aws_glue_security_configuration.cloudwatch_encryption 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_encryption_mode" {
  description = "(Optional) Encryption mode to use for CloudWatch data. Valid values: DISABLED, SSE-KMS. Default value: DISABLED."
  value       = aws_glue_security_configuration.aws_glue_security_configuration.cloudwatch_encryption_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_configuration" {
  description = " – (Required) Configuration block containing encryption configuration. Detailed below."
  value       = aws_glue_security_configuration.aws_glue_security_configuration.encryption_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "job_bookmarks_encryption " {
  description = "(Required) A job_bookmarks_encryption  block as described below, which contains encryption configuration for job bookmarks."
  value       = aws_glue_security_configuration.aws_glue_security_configuration.job_bookmarks_encryption 
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "job_bookmarks_encryption_mode" {
  description = "(Optional) Encryption mode to use for job bookmarks data. Valid values: CSE-KMS, DISABLED. Default value: DISABLED."
  value       = aws_glue_security_configuration.aws_glue_security_configuration.job_bookmarks_encryption_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_encryption_mode" {
  description = "(Optional) Encryption mode to use for S3 data. Valid values: DISABLED, SSE-KMS, SSE-S3. Default value: DISABLED."
  value       = aws_glue_security_configuration.aws_glue_security_configuration.s3_encryption_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Glue security configuration name"
  value       = aws_glue_security_configuration.aws_glue_security_configuration.id
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
      "kind/name"                   = "aws_glue_security_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
