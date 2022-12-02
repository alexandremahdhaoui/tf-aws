datasource "aws_s3_bucket_policy" "aws_s3_bucket_policy" {
  bucket = var.bucket
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket" {
  description = "(Required) Bucket name.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "bucket" {
  description = "(Required) Bucket name.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_policy.aws_s3_bucket_policy.bucket
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
