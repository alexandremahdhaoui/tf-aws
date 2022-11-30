datasource "aws_msk_kafka_version" "aws_msk_kafka_version" {
  preferred_versions = var.preferred_versions
  version            = var.version
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "preferred_versions" {
  description = "(Optional) Ordered list of preferred Kafka versions. The first match in this list will be returned. Either preferred_versions or version must be set."
  type        = string
}
variable "version" {
  description = "(Optional) Version of MSK Kafka. For example 2.4.1.1 or \"2.2.1\" etc. Either preferred_versions or version must be set.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "preferred_versions" {
  description = "(Optional) Ordered list of preferred Kafka versions. The first match in this list will be returned. Either preferred_versions or version must be set."
  value       = aws_msk_kafka_version.aws_msk_kafka_version.preferred_versions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "(Optional) Version of MSK Kafka. For example 2.4.1.1 or \"2.2.1\" etc. Either preferred_versions or version must be set.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_msk_kafka_version.aws_msk_kafka_version.version
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
