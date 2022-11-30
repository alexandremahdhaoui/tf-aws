datasource "aws_secretsmanager_secrets" "aws_secretsmanager_secrets" {
  arns   = var.arns
  filter = var.filter
  name   = var.name
  values = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arns" {
  description = "Set of ARNs of the matched Secrets Manager secrets."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the Secrets Manager ListSecrets API Reference."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  type        = string
}
output "arns" {
  description = "Set of ARNs of the matched Secrets Manager secrets."
  value       = aws_secretsmanager_secrets.aws_secretsmanager_secrets.arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = " configuration block:"
  value       = aws_secretsmanager_secrets.aws_secretsmanager_secrets.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the Secrets Manager ListSecrets API Reference."
  value       = aws_secretsmanager_secrets.aws_secretsmanager_secrets.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  value       = aws_secretsmanager_secrets.aws_secretsmanager_secrets.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "Set of ARNs of the matched Secrets Manager secrets."
  value       = aws_secretsmanager_secrets.aws_secretsmanager_secrets.arns
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
