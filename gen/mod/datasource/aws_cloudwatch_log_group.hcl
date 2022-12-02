datasource "aws_cloudwatch_log_group" "aws_cloudwatch_log_group" {
  kms_key_id        = var.kms_key_id
  name              = var.name
  retention_in_days = var.retention_in_days
  arn               = var.arn
  creation_time     = var.creation_time
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "kms_key_id" {
  description = "ARN of the KMS Key to use when encrypting log data."
  type        = string
}
variable "name" {
  description = "(Required) Name of the Cloudwatch log groupIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "retention_in_days" {
  description = "Number of days log events retained in the specified log group."
  type        = string
}
variable "arn" {
  description = "ARN of the Cloudwatch log group. Any :* suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix."
  type        = string
}
variable "creation_time" {
  description = "Creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC."
  type        = string
}
output "arn" {
  description = "ARN of the Cloudwatch log group. Any :* suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.arn
}
output "creation_time" {
  description = "Creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.creation_time
}
output "kms_key_id" {
  description = "ARN of the KMS Key to use when encrypting log data."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.kms_key_id
}
output "name" {
  description = "(Required) Name of the Cloudwatch log groupIn addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.name
}
output "retention_in_days" {
  description = "Number of days log events retained in the specified log group."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.retention_in_days
}
output "arn" {
  description = "ARN of the Cloudwatch log group. Any :* suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.arn
}
output "creation_time" {
  description = "Creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.creation_time
}
output "kms_key_id" {
  description = "ARN of the KMS Key to use when encrypting log data."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.kms_key_id
}
output "retention_in_days" {
  description = "Number of days log events retained in the specified log group."
  value       = aws_cloudwatch_log_group.aws_cloudwatch_log_group.retention_in_days
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
