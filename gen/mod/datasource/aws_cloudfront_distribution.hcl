datasource "aws_cloudfront_distribution" "aws_cloudfront_distribution" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aliases" {
  description = "List that contains information about CNAMEs (alternate domain names), if any, for this distribution."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.aliases
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "Domain name corresponding to the distribution. For\nexample: d604721fxaaqy9.cloudfront.net."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "E2QWRUHAPOMQZL."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier for the distribution. For example: EDFDVBD632BHDS5."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "in_progress_validation_batches" {
  description = "The number of invalidation batches\ncurrently in progress."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.in_progress_validation_batches
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_time" {
  description = "Date and time the distribution was last modified."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.last_modified_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current status of the distribution. Deployed"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.status
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
