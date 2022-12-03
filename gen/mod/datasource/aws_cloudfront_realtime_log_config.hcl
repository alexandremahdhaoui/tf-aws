datasource "aws_cloudfront_realtime_log_config" "aws_cloudfront_realtime_log_config" {
  stream_type           = var.stream_type
  arn                   = var.arn
  endpoint              = var.endpoint
  fields                = var.fields
  kinesis_stream_config = var.kinesis_stream_config
  name                  = var.name
  role_arn              = var.role_arn
  sampling_rate         = var.sampling_rate
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "kinesis_stream_config" {
  description = "(Required) Amazon Kinesis data stream configuration."
  type        = string
}
variable "name" {
  description = "(Required) Unique name to identify this real-time log configuration.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "role_arn" {
  description = "(Required) ARN of an IAM roleAWS documentation for more information."
  type        = string
}
variable "sampling_rate" {
  description = "(Required) Sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between 1 and 100, inclusive.The endpoint object supports the following:"
  type        = string
}
variable "stream_type" {
  description = "(Required) Type of data stream where real-time log data is sent. The only valid value is Kinesis.The kinesis_stream_config object supports the following:"
  type        = string
}
variable "arn" {
  description = "ARN (Amazon Resource Name) of the CloudFront real-time log configuration."
  type        = string
}
variable "endpoint" {
  description = "(Required) Amazon Kinesis data streams where real-time log data is sent."
  type        = string
}
variable "fields" {
  description = "(Required) Fields that are included in each real-time log record. See the AWS documentation for supported values."
  type        = string
}
output "role_arn" {
  description = "(Required) ARN of an IAM roleAWS documentation for more information."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.role_arn
}
output "sampling_rate" {
  description = "(Required) Sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between 1 and 100, inclusive.The endpoint object supports the following:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.sampling_rate
}
output "stream_type" {
  description = "(Required) Type of data stream where real-time log data is sent. The only valid value is Kinesis.The kinesis_stream_config object supports the following:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.stream_type
}
output "arn" {
  description = "ARN (Amazon Resource Name) of the CloudFront real-time log configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.arn
}
output "endpoint" {
  description = "(Required) Amazon Kinesis data streams where real-time log data is sent."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.endpoint
}
output "fields" {
  description = "(Required) Fields that are included in each real-time log record. See the AWS documentation for supported values."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.fields
}
output "kinesis_stream_config" {
  description = "(Required) Amazon Kinesis data stream configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.kinesis_stream_config
}
output "name" {
  description = "(Required) Unique name to identify this real-time log configuration.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.name
}
output "role_arn" {
  description = "(Required) ARN of an IAM roleAWS documentation for more information."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.role_arn
}
output "sampling_rate" {
  description = "(Required) Sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between 1 and 100, inclusive.The endpoint object supports the following:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.sampling_rate
}
output "stream_type" {
  description = "(Required) Type of data stream where real-time log data is sent. The only valid value is Kinesis.The kinesis_stream_config object supports the following:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.stream_type
}
output "arn" {
  description = "ARN (Amazon Resource Name) of the CloudFront real-time log configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.arn
}
output "endpoint" {
  description = "(Required) Amazon Kinesis data streams where real-time log data is sent."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.endpoint
}
output "fields" {
  description = "(Required) Fields that are included in each real-time log record. See the AWS documentation for supported values."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.fields
}
output "kinesis_stream_config" {
  description = "(Required) Amazon Kinesis data stream configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.kinesis_stream_config
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
}
