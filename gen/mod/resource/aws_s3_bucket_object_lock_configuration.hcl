resource "aws_s3_bucket_object_lock_configuration" "aws_s3_bucket_object_lock_configuration" {
  rule                  = var.rule
  token                 = var.token
  bucket                = var.bucket
  default_retention     = var.default_retention
  mode                  = var.mode
  object_lock_enabled   = var.object_lock_enabled
  days                  = var.days
  expected_bucket_owner = var.expected_bucket_owner
  years                 = var.years
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  type        = string
}
variable "default_retention" {
  description = "(Required) A configuration block for specifying the default Object Lock retention settings for new objects placed in the specified bucket detailed below.default_retentionThe default_retention configuration block supports the following arguments:"
  type        = string
}
variable "mode" {
  description = "(Required) The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Valid values: COMPLIANCE, GOVERNANCE."
  type        = string
}
variable "object_lock_enabled" {
  description = "(Optional, Forces new resource) Indicates whether this bucket has an Object Lock configuration enabled. Defaults to Enabled. Valid values: Enabled."
  type        = string
}
variable "rule" {
  description = "(Optional) Configuration block for specifying the Object Lock rule for the specified object detailed below."
  type        = string
  default     = ""
}
variable "token" {
  description = "versioning is enabled on a bucket. For more details on versioning, see the aws_s3_bucket_versioning resource.ruleThe rule configuration block supports the following arguments:"
  type        = string
}
variable "days" {
  description = "(Optional, Required if years is not specified) The number of days that you want to specify for the default retention period."
  type        = string
}
variable "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
  type        = string
}
variable "years" {
  description = "(Optional, Required if days is not specified) The number of years that you want to specify for the default retention period.In addition to all arguments above, the following attributes are exported:"
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
output "days" {
  description = "(Optional, Required if years is not specified) The number of days that you want to specify for the default retention period."
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.days
}
output "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.expected_bucket_owner
}
output "years" {
  description = "(Optional, Required if days is not specified) The number of years that you want to specify for the default retention period.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.years
}
output "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.bucket
}
output "default_retention" {
  description = "(Required) A configuration block for specifying the default Object Lock retention settings for new objects placed in the specified bucket detailed below.default_retentionThe default_retention configuration block supports the following arguments:"
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.default_retention
}
output "mode" {
  description = "(Required) The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Valid values: COMPLIANCE, GOVERNANCE."
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.mode
}
output "object_lock_enabled" {
  description = "(Optional, Forces new resource) Indicates whether this bucket has an Object Lock configuration enabled. Defaults to Enabled. Valid values: Enabled."
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.object_lock_enabled
}
output "rule" {
  description = "(Optional) Configuration block for specifying the Object Lock rule for the specified object detailed below."
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.rule
}
output "token" {
  description = "versioning is enabled on a bucket. For more details on versioning, see the aws_s3_bucket_versioning resource.ruleThe rule configuration block supports the following arguments:"
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.token
}
output "id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_object_lock_configuration.aws_s3_bucket_object_lock_configuration.id
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
      "kind/name"                   = "aws_s3_bucket_object_lock_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
