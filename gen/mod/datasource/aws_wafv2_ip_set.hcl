datasource "aws_wafv2_ip_set" "aws_wafv2_ip_set" {
  addresses   = var.addresses
  arn         = var.arn
  description = var.description
  id          = var.id
  name        = var.name
  scope       = var.scope
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "addresses" {
  description = "An array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation."
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
  description = "(Required) Name of the WAFv2 IP Set."
  type        = string
}
variable "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the set that helps with identification."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier for the set."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the WAFv2 IP Set."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the region us-east-1 (N. Virginia) on the AWS provider.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "addresses" {
  description = "An array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the entity."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the set that helps with identification."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier for the set."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "addresses" {
  description = "An array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation."
  value       = aws_wafv2_ip_set.aws_wafv2_ip_set.addresses
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
