datasource "aws_s3_bucket" "aws_s3_bucket" {
  bucket_regional_domain_name = var.bucket_regional_domain_name
  hosted_zone_id              = var.hosted_zone_id
  id                          = var.id
  region                      = var.region
  website_endpoint            = var.website_endpoint
  arn                         = var.arn
  bucket                      = var.bucket
  bucket_domain_name          = var.bucket_domain_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket_domain_name" {
  description = "Bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  type        = string
}
variable "bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  type        = string
}
variable "hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  type        = string
}
variable "id" {
  description = "Name of the bucket."
  type        = string
}
variable "region" {
  description = "AWS region this bucket resides in."
  type        = string
}
variable "website_endpoint" {
  description = "Website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  type        = string
}
variable "arn" {
  description = "ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  type        = string
}
variable "bucket" {
  description = "(Required) Name of the bucketAttribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "id" {
  description = "Name of the bucket."
  value       = aws_s3_bucket.aws_s3_bucket.id
}
output "region" {
  description = "AWS region this bucket resides in."
  value       = aws_s3_bucket.aws_s3_bucket.region
}
output "website_endpoint" {
  description = "Website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.aws_s3_bucket.website_endpoint
}
output "arn" {
  description = "ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.aws_s3_bucket.arn
}
output "bucket" {
  description = "(Required) Name of the bucketAttribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket.aws_s3_bucket.bucket
}
output "bucket_domain_name" {
  description = "Bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = aws_s3_bucket.aws_s3_bucket.bucket_domain_name
}
output "bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value       = aws_s3_bucket.aws_s3_bucket.bucket_regional_domain_name
}
output "hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  value       = aws_s3_bucket.aws_s3_bucket.hosted_zone_id
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
