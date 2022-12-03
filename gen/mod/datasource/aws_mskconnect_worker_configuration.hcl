datasource "aws_mskconnect_worker_configuration" "aws_mskconnect_worker_configuration" {
  arn             = var.arn
  description     = var.description
  latest_revision = var.latest_revision
  name            = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "the ARN of the worker configuration."
  type        = string
}
variable "description" {
  description = "a summary description of the worker configuration."
  type        = string
}
variable "latest_revision" {
  description = "an ID of the latest successfully created revision of the worker configuration."
  type        = string
}
variable "name" {
  description = "(Required) Name of the worker configuration.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "description" {
  description = "a summary description of the worker configuration."
  value       = aws_mskconnect_worker_configuration.aws_mskconnect_worker_configuration.description
}
output "latest_revision" {
  description = "an ID of the latest successfully created revision of the worker configuration."
  value       = aws_mskconnect_worker_configuration.aws_mskconnect_worker_configuration.latest_revision
}
output "name" {
  description = "(Required) Name of the worker configuration.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_mskconnect_worker_configuration.aws_mskconnect_worker_configuration.name
}
output "arn" {
  description = "the ARN of the worker configuration."
  value       = aws_mskconnect_worker_configuration.aws_mskconnect_worker_configuration.arn
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
