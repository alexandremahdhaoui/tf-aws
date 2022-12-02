datasource "aws_wafv2_regex_pattern_set" "aws_wafv2_regex_pattern_set" {
  id                 = var.id
  name               = var.name
  regular_expression = var.regular_expression
  scope              = var.scope
  arn                = var.arn
  description        = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the entity."
  type        = string
}
variable "description" {
  description = "Description of the set that helps with identification."
  type        = string
}
variable "id" {
  description = "Unique identifier for the set."
  type        = string
}
variable "name" {
  description = "(Required) Name of the WAFv2 Regex Pattern Set."
  type        = string
}
variable "regular_expression" {
  description = "One or more blocks of regular expression patterns that AWS WAF is searching for. See Regular Expression below for details.Regular ExpressionEach regular_expression supports the following argument:"
  type        = string
}
variable "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "regular_expression" {
  description = "One or more blocks of regular expression patterns that AWS WAF is searching for. See Regular Expression below for details.Regular ExpressionEach regular_expression supports the following argument:"
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.regular_expression
}
output "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.scope
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.arn
}
output "description" {
  description = "Description of the set that helps with identification."
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.description
}
output "id" {
  description = "Unique identifier for the set."
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.id
}
output "name" {
  description = "(Required) Name of the WAFv2 Regex Pattern Set."
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.name
}
output "regular_expression" {
  description = "One or more blocks of regular expression patterns that AWS WAF is searching for. See Regular Expression below for details.Regular ExpressionEach regular_expression supports the following argument:"
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.regular_expression
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.arn
}
output "description" {
  description = "Description of the set that helps with identification."
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.description
}
output "id" {
  description = "Unique identifier for the set."
  value       = aws_wafv2_regex_pattern_set.aws_wafv2_regex_pattern_set.id
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
