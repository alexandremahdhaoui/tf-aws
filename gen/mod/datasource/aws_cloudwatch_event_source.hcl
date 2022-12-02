datasource "aws_cloudwatch_event_source" "aws_cloudwatch_event_source" {
  arn         = var.arn
  created_by  = var.created_by
  name        = var.name
  name_prefix = var.name_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Specifying this limits the results to only those partner event sources with names that start with the specified prefixIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the partner event source"
  type        = string
}
variable "created_by" {
  description = "Name of the SaaS partner that created the event source"
  type        = string
}
variable "name" {
  description = "Name of the event source"
  type        = string
}
output "arn" {
  description = "ARN of the partner event source"
  value       = aws_cloudwatch_event_source.aws_cloudwatch_event_source.arn
}
output "created_by" {
  description = "Name of the SaaS partner that created the event source"
  value       = aws_cloudwatch_event_source.aws_cloudwatch_event_source.created_by
}
output "name" {
  description = "Name of the event source"
  value       = aws_cloudwatch_event_source.aws_cloudwatch_event_source.name
}
output "name_prefix" {
  description = "(Optional) Specifying this limits the results to only those partner event sources with names that start with the specified prefixIn addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_event_source.aws_cloudwatch_event_source.name_prefix
}
output "arn" {
  description = "ARN of the partner event source"
  value       = aws_cloudwatch_event_source.aws_cloudwatch_event_source.arn
}
output "created_by" {
  description = "Name of the SaaS partner that created the event source"
  value       = aws_cloudwatch_event_source.aws_cloudwatch_event_source.created_by
}
output "name" {
  description = "Name of the event source"
  value       = aws_cloudwatch_event_source.aws_cloudwatch_event_source.name
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
