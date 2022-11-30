datasource "aws_kinesis_stream" "aws_kinesis_stream" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assigned to the stream.stream_mode_details Configuration Block"
  value       = aws_kinesis_stream.aws_kinesis_stream.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retention_period" {
  description = "Length of time (in hours) data records are accessible after they are added to the stream."
  value       = aws_kinesis_stream.aws_kinesis_stream.retention_period
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "shard_level_metrics" {
  description = "List of shard-level CloudWatch metrics which are enabled for the stream. See Monitoring with CloudWatch for more."
  value       = aws_kinesis_stream.aws_kinesis_stream.shard_level_metrics
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current status of the stream. The stream status is one of CREATING, DELETING, ACTIVE, or UPDATING."
  value       = aws_kinesis_stream.aws_kinesis_stream.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Kinesis Stream (same as id)."
  value       = aws_kinesis_stream.aws_kinesis_stream.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "closed_shards" {
  description = "List of shard ids in the CLOSED state. See Shard State for more."
  value       = aws_kinesis_stream.aws_kinesis_stream.closed_shards
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_timestamp" {
  description = "Approximate UNIX timestamp that the stream was created."
  value       = aws_kinesis_stream.aws_kinesis_stream.creation_timestamp
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Kinesis Stream."
  value       = aws_kinesis_stream.aws_kinesis_stream.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "open_shards" {
  description = "List of shard ids in the OPEN state. See Shard State for more."
  value       = aws_kinesis_stream.aws_kinesis_stream.open_shards
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_mode_details" {
  description = "Capacity mode of the data stream. Detailed below."
  value       = aws_kinesis_stream.aws_kinesis_stream.stream_mode_details
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
