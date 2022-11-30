datasource "aws_mskconnect_custom_plugin" "aws_mskconnect_custom_plugin" {
  name            = var.name
  arn             = var.arn
  description     = var.description
  latest_revision = var.latest_revision
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "the ARN of the custom plugin."
  type        = string
}
variable "description" {
  description = "a summary description of the custom plugin."
  type        = string
}
variable "latest_revision" {
  description = "an ID of the latest successfully created revision of the custom plugin."
  type        = string
}
variable "name" {
  description = "(Required) Name of the custom plugin.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "the ARN of the custom plugin."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "a summary description of the custom plugin."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "latest_revision" {
  description = "an ID of the latest successfully created revision of the custom plugin."
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.latest_revision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the custom plugin.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_mskconnect_custom_plugin.aws_mskconnect_custom_plugin.name
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
