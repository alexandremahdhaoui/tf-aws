datasource "aws_kinesis_stream_consumer" "aws_kinesis_stream_consumer" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_timestamp" {
  description = "Approximate timestamp in RFC3339 format of when the stream consumer was created."
  value       = aws_kinesis_stream_consumer.aws_kinesis_stream_consumer.creation_timestamp
}
output "id" {
  description = "ARN of the stream consumer."
  value       = aws_kinesis_stream_consumer.aws_kinesis_stream_consumer.id
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
