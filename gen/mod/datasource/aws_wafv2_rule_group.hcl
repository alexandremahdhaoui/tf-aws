datasource "aws_wafv2_rule_group" "aws_wafv2_rule_group" {
  arn         = var.arn
  description = var.description
  name        = var.name
  scope       = var.scope
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of the rule group that helps with identification."
  type        = string
}
variable "name" {
  description = "(Required) Name of the WAFv2 Rule Group."
  type        = string
}
variable "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the entity."
  type        = string
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.arn
}
output "description" {
  description = "Description of the rule group that helps with identification."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.description
}
output "name" {
  description = "(Required) Name of the WAFv2 Rule Group."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.name
}
output "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.scope
}
output "description" {
  description = "Description of the rule group that helps with identification."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.description
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_rule_group.aws_wafv2_rule_group.arn
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
