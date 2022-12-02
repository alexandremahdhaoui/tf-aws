datasource "aws_cloudfront_origin_access_identity" "aws_cloudfront_origin_access_identity" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "caller_reference" {
  description = "Internal value used by CloudFront to allow future\nupdates to the origin access identity."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.caller_reference
}
output "cloudfront_access_identity_path" {
  description = "A shortcut to the full path for the\norigin access identity to use in CloudFront, see below."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.cloudfront_access_identity_path
}
output "comment" {
  description = "An optional comment for the origin access identity."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.comment
}
output "etag" {
  description = "Current version of the origin access identity's information.\nFor example: E2QWRUHAPOMQZL."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.etag
}
output "iam_arn" {
  description = "Pre-generated ARN for use in S3 bucket policies (see below).\nExample: arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E2QWRUHAPOMQZL."
  value       = aws_cloudfront_origin_access_identity.aws_cloudfront_origin_access_identity.iam_arn
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
