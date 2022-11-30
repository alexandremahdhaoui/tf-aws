resource "aws_config_delivery_channel" "aws_config_delivery_channel" {
  delivery_frequency           = var.delivery_frequency
  name                         = var.name
  s3_bucket_name               = var.s3_bucket_name
  s3_key_prefix                = var.s3_key_prefix
  s3_kms_key_arn               = var.s3_kms_key_arn
  snapshot_delivery_properties = var.snapshot_delivery_properties
  sns_topic_arn                = var.sns_topic_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "sns_topic_arn" {
  description = "(Optional) The ARN of the SNS topic that AWS Config delivers notifications to."
  type        = string
}
variable "delivery_frequency" {
  description = "(Optional) - The frequency with which AWS Config recurringly delivers configuration snapshotsE.g., One_Hour or Three_Hours. Valid values are listed here.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "(Optional) The name of the delivery channel. Defaults to default. Changing it recreates the resource."
  type        = string
}
variable "s3_bucket_name" {
  description = "(Required) The name of the S3 bucket used to store the configuration history."
  type        = string
}
variable "s3_key_prefix" {
  description = "(Optional) The prefix for the specified S3 bucket."
  type        = string
}
variable "s3_kms_key_arn" {
  description = "(Optional) The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket."
  type        = string
}
variable "snapshot_delivery_properties" {
  description = "(Optional) Options for how AWS Config delivers configuration snapshots. See belowsnapshot_delivery_properties"
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
  description = "(Optional) The name of the delivery channel. Defaults to default. Changing it recreates the resource."
  value       = aws_config_delivery_channel.aws_config_delivery_channel.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_bucket_name" {
  description = "(Required) The name of the S3 bucket used to store the configuration history."
  value       = aws_config_delivery_channel.aws_config_delivery_channel.s3_bucket_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_key_prefix" {
  description = "(Optional) The prefix for the specified S3 bucket."
  value       = aws_config_delivery_channel.aws_config_delivery_channel.s3_key_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_kms_key_arn" {
  description = "(Optional) The ARN of the AWS KMS key used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket."
  value       = aws_config_delivery_channel.aws_config_delivery_channel.s3_kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_delivery_properties" {
  description = "(Optional) Options for how AWS Config delivers configuration snapshots. See belowsnapshot_delivery_properties"
  value       = aws_config_delivery_channel.aws_config_delivery_channel.snapshot_delivery_properties
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sns_topic_arn" {
  description = "(Optional) The ARN of the SNS topic that AWS Config delivers notifications to."
  value       = aws_config_delivery_channel.aws_config_delivery_channel.sns_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delivery_frequency" {
  description = "(Optional) - The frequency with which AWS Config recurringly delivers configuration snapshotsE.g., One_Hour or Three_Hours. Valid values are listed here.In addition to all arguments above, the following attributes are exported:"
  value       = aws_config_delivery_channel.aws_config_delivery_channel.delivery_frequency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the delivery channel."
  value       = aws_config_delivery_channel.aws_config_delivery_channel.id
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
      "kind/name"                   = "aws_config_delivery_channel"
      "kind/version"                = "v0.1.0"
    }
  }
}
