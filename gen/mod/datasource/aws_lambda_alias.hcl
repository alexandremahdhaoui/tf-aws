datasource "aws_lambda_alias" "aws_lambda_alias" {
  function_version = var.function_version
  name             = var.name
  arn              = var.arn
  description      = var.description
  function_name    = var.function_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN identifying the Lambda function alias."
  type        = string
}
variable "description" {
  description = "Description of alias."
  type        = string
}
variable "function_name" {
  description = "(Required) Name of the aliased Lambda function."
  type        = string
}
variable "function_version" {
  description = "Lambda function version which the alias uses."
  type        = string
}
variable "name" {
  description = "(Required) Name of the Lambda alias.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "ARN identifying the Lambda function alias."
  value       = aws_lambda_alias.aws_lambda_alias.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of alias."
  value       = aws_lambda_alias.aws_lambda_alias.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "function_name" {
  description = "(Required) Name of the aliased Lambda function."
  value       = aws_lambda_alias.aws_lambda_alias.function_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "function_version" {
  description = "Lambda function version which the alias uses."
  value       = aws_lambda_alias.aws_lambda_alias.function_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the Lambda alias.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_alias.aws_lambda_alias.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN identifying the Lambda function alias."
  value       = aws_lambda_alias.aws_lambda_alias.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of alias."
  value       = aws_lambda_alias.aws_lambda_alias.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "function_version" {
  description = "Lambda function version which the alias uses."
  value       = aws_lambda_alias.aws_lambda_alias.function_version
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
