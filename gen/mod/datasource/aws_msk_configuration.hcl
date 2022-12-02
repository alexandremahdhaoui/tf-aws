datasource "aws_msk_configuration" "aws_msk_configuration" {
  description     = var.description
  kafka_versions  = var.kafka_versions
  latest_revision = var.latest_revision
  name            = var.name
  arn             = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the configuration.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the configuration."
  type        = string
}
variable "description" {
  description = "Description of the configuration."
  type        = string
}
variable "kafka_versions" {
  description = "List of Apache Kafka versions which can use this configuration."
  type        = string
}
variable "latest_revision" {
  description = "Latest revision of the configuration."
  type        = string
}
output "arn" {
  description = "ARN of the configuration."
  value       = aws_msk_configuration.aws_msk_configuration.arn
}
output "description" {
  description = "Description of the configuration."
  value       = aws_msk_configuration.aws_msk_configuration.description
}
output "kafka_versions" {
  description = "List of Apache Kafka versions which can use this configuration."
  value       = aws_msk_configuration.aws_msk_configuration.kafka_versions
}
output "latest_revision" {
  description = "Latest revision of the configuration."
  value       = aws_msk_configuration.aws_msk_configuration.latest_revision
}
output "name" {
  description = "(Required) Name of the configuration.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_msk_configuration.aws_msk_configuration.name
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
