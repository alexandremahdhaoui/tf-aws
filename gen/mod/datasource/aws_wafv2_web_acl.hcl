datasource "aws_wafv2_web_acl" "aws_wafv2_web_acl" {
  arn         = var.arn
  description = var.description
  name        = var.name
  scope       = var.scope
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
  description = "Description of the WebACL that helps with identification."
  type        = string
}
variable "name" {
  description = "(Required) Name of the WAFv2 Web ACL."
  type        = string
}
variable "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the WebACL that helps with identification."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the WAFv2 Web ACL."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the WebACL that helps with identification."
  value       = aws_wafv2_web_acl.aws_wafv2_web_acl.description
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
