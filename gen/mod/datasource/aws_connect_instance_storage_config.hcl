datasource "aws_connect_instance_storage_config" "aws_connect_instance_storage_config" {
  instance_id                 = var.instance_id
  resource_type               = var.resource_type
  retention_period_hours      = var.retention_period_hours
  bucket_name                 = var.bucket_name
  bucket_prefix               = var.bucket_prefix
  encryption_config           = var.encryption_config
  id                          = var.id
  association_id              = var.association_id
  kinesis_stream_config       = var.kinesis_stream_config
  kinesis_video_stream_config = var.kinesis_video_stream_config
  prefix                      = var.prefix
  s3_config                   = var.s3_config
  storage_config              = var.storage_config
  encryption_type             = var.encryption_type
  firehose_arn                = var.firehose_arn
  kinesis_firehose_config     = var.kinesis_firehose_config
  storage_type                = var.storage_type
  stream_arn                  = var.stream_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "s3_config" {
  description = "A block that specifies the configuration of S3 Bucket. Documented below."
  type        = string
}
variable "storage_config" {
  description = "Specifies the storage configuration options for the Connect Instance. Documented below.storage_configThe storage_config configuration block supports the following arguments:"
  type        = string
}
variable "association_id" {
  description = "(Required) The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID."
  type        = string
}
variable "kinesis_stream_config" {
  description = "A block that specifies the configuration of the Kinesis data stream. Documented below."
  type        = string
}
variable "kinesis_video_stream_config" {
  description = "A block that specifies the configuration of the Kinesis video stream. Documented below."
  type        = string
}
variable "prefix" {
  description = "The prefix of the video stream. Minimum length of 1. Maximum length of 128. When read from the state, the value returned is <prefix>-connect-<connect_instance_alias>-contact- since the API appends additional details to the prefix."
  type        = string
}
variable "stream_arn" {
  description = "The Amazon Resource Name (ARN) of the data stream.kinesis_video_stream_configThe kinesis_video_stream_config configuration block supports the following arguments:"
  type        = string
}
variable "encryption_type" {
  description = "The type of encryption. Valid Values: KMS."
  type        = string
}
variable "firehose_arn" {
  description = "The Amazon Resource Name (ARN) of the delivery stream.kinesis_stream_configThe kinesis_stream_config configuration block supports the following arguments:"
  type        = string
}
variable "kinesis_firehose_config" {
  description = "A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below."
  type        = string
}
variable "storage_type" {
  description = "A valid storage type. Valid Values: S3 | KINESIS_VIDEO_STREAM | KINESIS_STREAM | KINESIS_FIREHOSE.kinesis_firehose_configThe kinesis_firehose_config configuration block supports the following arguments:"
  type        = string
}
variable "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  type        = string
}
variable "resource_type" {
  description = "(Required) A valid resource type. Valid Values: CHAT_TRANSCRIPTS | CALL_RECORDINGS | SCHEDULED_REPORTS | MEDIA_STREAMS | CONTACT_TRACE_RECORDS | AGENT_EVENTS | REAL_TIME_CONTACT_ANALYSIS_SEGMENTS.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "retention_period_hours" {
  description = "The number of hours to retain the data in a data store associated with the stream. Minimum value of 0. Maximum value of 87600. A value of 0 indicates that the stream does not persist data.s3_configThe s3_config configuration block supports the following arguments:"
  type        = string
}
variable "bucket_name" {
  description = "The S3 bucket name."
  type        = string
}
variable "bucket_prefix" {
  description = "The S3 bucket prefix."
  type        = string
}
variable "encryption_config" {
  description = "The encryption configuration. Documented below.encryption_configThe encryption_config configuration block supports the following arguments:"
  type        = string
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance, association_id, and resource_type separated by a colon (:)."
  type        = string
}
output "storage_type" {
  description = "A valid storage type. Valid Values: S3 | KINESIS_VIDEO_STREAM | KINESIS_STREAM | KINESIS_FIREHOSE.kinesis_firehose_configThe kinesis_firehose_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.storage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_arn" {
  description = "The Amazon Resource Name (ARN) of the data stream.kinesis_video_stream_configThe kinesis_video_stream_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.stream_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_type" {
  description = "The type of encryption. Valid Values: KMS."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.encryption_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firehose_arn" {
  description = "The Amazon Resource Name (ARN) of the delivery stream.kinesis_stream_configThe kinesis_stream_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.firehose_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_firehose_config" {
  description = "A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_firehose_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_type" {
  description = "(Required) A valid resource type. Valid Values: CHAT_TRANSCRIPTS | CALL_RECORDINGS | SCHEDULED_REPORTS | MEDIA_STREAMS | CONTACT_TRACE_RECORDS | AGENT_EVENTS | REAL_TIME_CONTACT_ANALYSIS_SEGMENTS.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.resource_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retention_period_hours" {
  description = "The number of hours to retain the data in a data store associated with the stream. Minimum value of 0. Maximum value of 87600. A value of 0 indicates that the stream does not persist data.s3_configThe s3_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.retention_period_hours
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance, association_id, and resource_type separated by a colon (:)."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_name" {
  description = "The S3 bucket name."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.bucket_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_prefix" {
  description = "The S3 bucket prefix."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.bucket_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_config" {
  description = "The encryption configuration. Documented below.encryption_configThe encryption_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.encryption_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix" {
  description = "The prefix of the video stream. Minimum length of 1. Maximum length of 128. When read from the state, the value returned is <prefix>-connect-<connect_instance_alias>-contact- since the API appends additional details to the prefix."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_config" {
  description = "A block that specifies the configuration of S3 Bucket. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.s3_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_config" {
  description = "Specifies the storage configuration options for the Connect Instance. Documented below.storage_configThe storage_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.storage_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "association_id" {
  description = "(Required) The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.association_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_stream_config" {
  description = "A block that specifies the configuration of the Kinesis data stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_stream_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_video_stream_config" {
  description = "A block that specifies the configuration of the Kinesis video stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_video_stream_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_prefix" {
  description = "The S3 bucket prefix."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.bucket_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_firehose_config" {
  description = "A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_firehose_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_config" {
  description = "A block that specifies the configuration of S3 Bucket. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.s3_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_arn" {
  description = "The Amazon Resource Name (ARN) of the data stream.kinesis_video_stream_configThe kinesis_video_stream_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.stream_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_config" {
  description = "The encryption configuration. Documented below.encryption_configThe encryption_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.encryption_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_type" {
  description = "The type of encryption. Valid Values: KMS."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.encryption_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firehose_arn" {
  description = "The Amazon Resource Name (ARN) of the delivery stream.kinesis_stream_configThe kinesis_stream_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.firehose_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance, association_id, and resource_type separated by a colon (:)."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_stream_config" {
  description = "A block that specifies the configuration of the Kinesis data stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_stream_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix" {
  description = "The prefix of the video stream. Minimum length of 1. Maximum length of 128. When read from the state, the value returned is <prefix>-connect-<connect_instance_alias>-contact- since the API appends additional details to the prefix."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_config" {
  description = "Specifies the storage configuration options for the Connect Instance. Documented below.storage_configThe storage_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.storage_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_name" {
  description = "The S3 bucket name."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.bucket_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retention_period_hours" {
  description = "The number of hours to retain the data in a data store associated with the stream. Minimum value of 0. Maximum value of 87600. A value of 0 indicates that the stream does not persist data.s3_configThe s3_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.retention_period_hours
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_type" {
  description = "A valid storage type. Valid Values: S3 | KINESIS_VIDEO_STREAM | KINESIS_STREAM | KINESIS_FIREHOSE.kinesis_firehose_configThe kinesis_firehose_config configuration block supports the following arguments:"
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.storage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_video_stream_config" {
  description = "A block that specifies the configuration of the Kinesis video stream. Documented below."
  value       = aws_connect_instance_storage_config.aws_connect_instance_storage_config.kinesis_video_stream_config
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
}
