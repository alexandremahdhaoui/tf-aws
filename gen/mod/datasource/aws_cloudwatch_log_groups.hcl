datasource "aws_cloudwatch_log_groups" "aws_cloudwatch_log_groups" {
  arns                  = var.arns
  log_group_name_prefix = var.log_group_name_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arns" {
  description = "Set of ARNs of the Cloudwatch log groups"
  type        = string
}
variable "log_group_name_prefix" {
  description = "(Optional) Group prefix of the Cloudwatch log groups to listIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "arns" {
  description = "Set of ARNs of the Cloudwatch log groups"
  value       = aws_cloudwatch_log_groups.aws_cloudwatch_log_groups.arns
}
output "log_group_name_prefix" {
  description = "(Optional) Group prefix of the Cloudwatch log groups to listIn addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_log_groups.aws_cloudwatch_log_groups.log_group_name_prefix
}
output "arns" {
  description = "Set of ARNs of the Cloudwatch log groups"
  value       = aws_cloudwatch_log_groups.aws_cloudwatch_log_groups.arns
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
