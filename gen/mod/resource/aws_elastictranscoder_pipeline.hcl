resource "aws_elastictranscoder_pipeline" "aws_elastictranscoder_pipeline" {
  output_bucket                = var.output_bucket
  storage_class                = var.storage_class
  aws_kms_key_arn              = var.aws_kms_key_arn
  content_config_permissions   = var.content_config_permissions
  error                        = var.error
  id                           = var.id
  name                         = var.name
  notifications                = var.notifications
  thumbnail_config             = var.thumbnail_config
  completed                    = var.completed
  grantee_type                 = var.grantee_type
  warning                      = var.warning
  content_config               = var.content_config
  progressing                  = var.progressing
  access                       = var.access
  bucket                       = var.bucket
  grantee                      = var.grantee
  input_bucket                 = var.input_bucket
  role                         = var.role
  thumbnail_config_permissions = var.thumbnail_config_permissions
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "progressing" {
  description = "The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline."
  type        = string
}
variable "content_config" {
  description = "(Optional) The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files."
  type        = string
}
variable "grantee" {
  description = "The AWS user or group that you want to have access to thumbnail files."
  type        = string
}
variable "input_bucket" {
  description = "(Required) The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks."
  type        = string
}
variable "role" {
  description = "(Required) The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline."
  type        = string
}
variable "thumbnail_config_permissions" {
  description = "(Optional) The permissions for the thumbnail_config object. (documented below)The content_configcontent_configthumbnail_config. If you specify values for content_configthumbnail_config, omit the output_bucket object.The content_config object supports the following:"
  type        = string
  default     = ""
}
variable "access" {
  description = "The permission that you want to give to the AWS user that you specified in thumbnail_config_permissions.grantee. Valid values are Read, ReadAcp, WriteAcp or FullControl."
  type        = string
}
variable "content_config_permissions" {
  description = "(Optional) The permissions for the content_config object. (documented below)"
  type        = string
  default     = ""
}
variable "error" {
  description = "The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline."
  type        = string
}
variable "id" {
  description = "The ID of the Elastictranscoder pipeline."
  type        = string
}
variable "name" {
  description = "(Optional, Forces new resource) The name of the pipeline. Maximum 40 characters"
  type        = string
}
variable "notifications" {
  description = "(Optional) The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)"
  type        = string
  default     = ""
}
variable "output_bucket" {
  description = "(Optional) The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files."
  type        = string
  default     = ""
}
variable "storage_class" {
  description = "The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.The thumbnail_config_permissions object supports the following:"
  type        = string
}
variable "aws_kms_key_arn" {
  description = "(Optional) The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline."
  type        = string
  default     = ""
}
variable "thumbnail_config" {
  description = "(Optional) The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)"
  type        = string
  default     = ""
}
variable "grantee_type" {
  description = "Specify the type of value that appears in the thumbnail_config_permissions.grantee object. Valid values are Canonical, Email or Group.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "warning" {
  description = "The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline.The thumbnail_configcontent_configthumbnail_configcontent_config and thumbnail_config, omit the OutputBucket object.The thumbnail_config object supports the following:"
  type        = string
}
variable "completed" {
  description = "The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline."
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
output "storage_class" {
  description = "The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.The thumbnail_config_permissions object supports the following:"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.storage_class
}
output "aws_kms_key_arn" {
  description = "(Optional) The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.aws_kms_key_arn
}
output "content_config_permissions" {
  description = "(Optional) The permissions for the content_config object. (documented below)"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.content_config_permissions
}
output "error" {
  description = "The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.error
}
output "id" {
  description = "The ID of the Elastictranscoder pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.id
}
output "name" {
  description = "(Optional, Forces new resource) The name of the pipeline. Maximum 40 characters"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.name
}
output "notifications" {
  description = "(Optional) The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status. (documented below)"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.notifications
}
output "output_bucket" {
  description = "(Optional) The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.output_bucket
}
output "thumbnail_config" {
  description = "(Optional) The ThumbnailConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. (documented below)"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.thumbnail_config
}
output "completed" {
  description = "The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.completed
}
output "grantee_type" {
  description = "Specify the type of value that appears in the thumbnail_config_permissions.grantee object. Valid values are Canonical, Email or Group.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.grantee_type
}
output "warning" {
  description = "The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline.The thumbnail_configcontent_configthumbnail_configcontent_config and thumbnail_config, omit the OutputBucket object.The thumbnail_config object supports the following:"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.warning
}
output "content_config" {
  description = "(Optional) The ContentConfig object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. (documented below)"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.content_config
}
output "progressing" {
  description = "The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.progressing
}
output "access" {
  description = "The permission that you want to give to the AWS user that you specified in thumbnail_config_permissions.grantee. Valid values are Read, ReadAcp, WriteAcp or FullControl."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.access
}
output "bucket" {
  description = "The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.bucket
}
output "grantee" {
  description = "The AWS user or group that you want to have access to thumbnail files."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.grantee
}
output "input_bucket" {
  description = "(Required) The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.input_bucket
}
output "role" {
  description = "(Required) The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.role
}
output "thumbnail_config_permissions" {
  description = "(Optional) The permissions for the thumbnail_config object. (documented below)The content_configcontent_configthumbnail_config. If you specify values for content_configthumbnail_config, omit the output_bucket object.The content_config object supports the following:"
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.thumbnail_config_permissions
}
output "arn" {
  description = "The ARN of the Elastictranscoder pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.arn
}
output "id" {
  description = "The ID of the Elastictranscoder pipeline."
  value       = aws_elastictranscoder_pipeline.aws_elastictranscoder_pipeline.id
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
      "kind/name"                   = "aws_elastictranscoder_pipeline"
      "kind/version"                = "v0.1.0"
    }
  }
}
