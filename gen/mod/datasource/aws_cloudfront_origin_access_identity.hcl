datasource "aws_cloudfront_origin_access_identity" "aws_cloudfront_origin_access_identity" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_arn" {
  description = "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E2QWRUHAPOMQZL."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.iam_arn
}
output "caller_reference" {
  description = ""
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.caller_reference
}
output "cloudfront_access_identity_path" {
  description = ""
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.cloudfront_access_identity_path
}
output "comment" {
  description = "An optional comment for the origin access identity."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.comment
}
output "etag" {
  description = "E2QWRUHAPOMQZL."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.etag
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
