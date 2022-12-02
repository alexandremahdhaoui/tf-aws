resource "aws_connect_instance_storage_config" "aws_connect_instance_storage_config" {
  retention_period_hours      = var.retention_period_hours
  storage_config              = var.storage_config
  kinesis_video_stream_config = var.kinesis_video_stream_config
  resource_type               = var.resource_type
  prefix                      = var.prefix
  encryption_config           = var.encryption_config
  encryption_type             = var.encryption_type
  instance_id                 = var.instance_id
  kinesis_stream_config       = var.kinesis_stream_config
  s3_config                   = var.s3_config
  stream_arn                  = var.stream_arn
  bucket_prefix               = var.bucket_prefix
  firehose_arn                = var.firehose_arn
  key_id                      = var.key_id
  kinesis_firehose_config     = var.kinesis_firehose_config
  storage_type                = var.storage_type
  association_id              = var.association_id
  bucket_name                 = var.bucket_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "storage_type" {
  description = "(Required) A valid storage type. Valid Values: S3 | KINESIS_VIDEO_STREAM | KINESIS_STREAM | KINESIS_FIREHOSE.kinesis_firehose_configThe kinesis_firehose_config configuration block supports the following arguments:"
  type        = string
}
variable "association_id" {
  description = "The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID."
  type        = string
}
variable "bucket_name" {
  description = "(Required) The S3 bucket name."
  type        = string
}
variable "key_id" {
  description = "(Required) The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "kinesis_firehose_config" {
  description = "(Required if type is set to KINESIS_FIREHOSE) A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below."
  type        = string
}
variable "kinesis_video_stream_config" {
  description = "(Required if type is set to KINESIS_VIDEO_STREAM) A block that specifies the configuration of the Kinesis video stream. Documented below."
  type        = string
}
variable "resource_type" {
  description = "(Required) A valid resource type. Valid Values: CHAT_TRANSCRIPTS | CALL_RECORDINGS | SCHEDULED_REPORTS | MEDIA_STREAMS | CONTACT_TRACE_RECORDS | AGENT_EVENTS | REAL_TIME_CONTACT_ANALYSIS_SEGMENTS."
  type        = string
}
variable "retention_period_hours" {
  description = "(Required) The number of hours data is retained in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. Minimum value of 0. Maximum value of 87600. A value of 0, indicates that the stream does not persist data.s3_configThe s3_config configuration block supports the following arguments:"
  type        = string
}
variable "storage_config" {
  description = "(Required) Specifies the storage configuration options for the Connect Instance. Documented below.storage_configThe storage_config configuration block supports the following arguments:"
  type        = string
}
variable "encryption_config" {
  description = "(Optional) The encryption configuration. Documented below.encryption_configThe encryption_config configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "encryption_type" {
  description = "(Required) The type of encryption. Valid Values: KMS."
  type        = string
}
variable "prefix" {
  description = "(Required) The prefix of the video stream. Minimum length of 1. Maximum length of 128. When read from the state, the value returned is <prefix>-connect-<connect_instance_alias>-contact- since the API appends additional details to the prefix."
  type        = string
}
variable "s3_config" {
  description = "(Required if type is set to S3) A block that specifies the configuration of S3 Bucket. Documented below."
  type        = string
}
variable "stream_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the data stream.kinesis_video_stream_configThe kinesis_video_stream_config configuration block supports the following arguments:"
  type        = string
}
variable "bucket_prefix" {
  description = "(Required) The S3 bucket prefix."
  type        = string
}
variable "firehose_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the delivery stream.kinesis_stream_configThe kinesis_stream_config configuration block supports the following arguments:"
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "kinesis_stream_config" {
  description = "(Required if type is set to KINESIS_STREAM) A block that specifies the configuration of the Kinesis data stream. Documented below."
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
output "encryption_config" {
  description = "(Optional) The encryption configuration. Documented below.encryption_configThe encryption_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.encryption_config
}
output "encryption_type" {
  description = "(Required) The type of encryption. Valid Values: KMS."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.encryption_type
}
output "prefix" {
  description = "(Required) The prefix of the video stream. Minimum length of 1. Maximum length of 128. When read from the state, the value returned is <prefix>-connect-<connect_instance_alias>-contact- since the API appends additional details to the prefix."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.prefix
}
output "bucket_prefix" {
  description = "(Required) The S3 bucket prefix."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.bucket_prefix
}
output "firehose_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the delivery stream.kinesis_stream_configThe kinesis_stream_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.firehose_arn
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.instance_id
}
output "kinesis_stream_config" {
  description = "(Required if type is set to KINESIS_STREAM) A block that specifies the configuration of the Kinesis data stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_stream_config
}
output "s3_config" {
  description = "(Required if type is set to S3) A block that specifies the configuration of S3 Bucket. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.s3_config
}
output "stream_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the data stream.kinesis_video_stream_configThe kinesis_video_stream_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.stream_arn
}
output "association_id" {
  description = "The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.association_id
}
output "bucket_name" {
  description = "(Required) The S3 bucket name."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.bucket_name
}
output "key_id" {
  description = "(Required) The full ARN of the encryption key. Be sure to provide the full ARN of the encryption key, not just the ID.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.key_id
}
output "kinesis_firehose_config" {
  description = "(Required if type is set to KINESIS_FIREHOSE) A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_firehose_config
}
output "storage_type" {
  description = "(Required) A valid storage type. Valid Values: S3 | KINESIS_VIDEO_STREAM | KINESIS_STREAM | KINESIS_FIREHOSE.kinesis_firehose_configThe kinesis_firehose_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.storage_type
}
output "kinesis_video_stream_config" {
  description = "(Required if type is set to KINESIS_VIDEO_STREAM) A block that specifies the configuration of the Kinesis video stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_video_stream_config
}
output "resource_type" {
  description = "(Required) A valid resource type. Valid Values: CHAT_TRANSCRIPTS | CALL_RECORDINGS | SCHEDULED_REPORTS | MEDIA_STREAMS | CONTACT_TRACE_RECORDS | AGENT_EVENTS | REAL_TIME_CONTACT_ANALYSIS_SEGMENTS."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.resource_type
}
output "retention_period_hours" {
  description = "(Required) The number of hours data is retained in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. Minimum value of 0. Maximum value of 87600. A value of 0, indicates that the stream does not persist data.s3_configThe s3_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.retention_period_hours
}
output "storage_config" {
  description = "(Required) Specifies the storage configuration options for the Connect Instance. Documented below.storage_configThe storage_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.storage_config
}
output "association_id" {
  description = "The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.association_id
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance, association_id, and resource_type separated by a colon (:)."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.id
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
      "kind/name"                   = "aws_connect_instance_storage_config"
      "kind/version"                = "v0.1.0"
    }
  }
}
