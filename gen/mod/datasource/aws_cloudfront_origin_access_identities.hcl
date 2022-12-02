datasource "aws_cloudfront_origin_access_identities" "aws_cloudfront_origin_access_identities" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_arns" {
  description = "Set of ARNs of the matched origin access identities."
  value       = aws_cloudfront_origin_access_identities.aws_cloudfront_origin_access_identities.iam_arns
}
output "ids" {
  description = "Set of ids of the matched origin access identities."
  value       = aws_cloudfront_origin_access_identities.aws_cloudfront_origin_access_identities.ids
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
