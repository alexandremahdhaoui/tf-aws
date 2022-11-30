datasource "aws_cloudfront_function" "aws_cloudfront_function" {
  etag               = var.etag
  last_modified_time = var.last_modified_time
  name               = var.name
  runtime            = var.runtime
  stage              = var.stage
  arn                = var.arn
  comment            = var.comment
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "last_modified_time" {
  description = "When this resource was last modified."
  type        = string
}
variable "name" {
  description = "(Required) Name of the CloudFront function."
  type        = string
}
variable "runtime" {
  description = "Identifier of the function's runtime."
  type        = string
}
variable "stage" {
  description = "(Required) Function’s stage, either DEVELOPMENT or LIVE.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN identifying your CloudFront Function."
  type        = string
}
variable "comment" {
  description = "Comment."
  type        = string
}
variable "etag" {
  description = "ETag hash of the function"
  type        = string
}
output "stage" {
  description = "(Required) Function’s stage, either DEVELOPMENT or LIVE.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_function.aws_cloudfront_function.stage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN identifying your CloudFront Function."
  value       = aws_cloudfront_function.aws_cloudfront_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "Comment."
  value       = aws_cloudfront_function.aws_cloudfront_function.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "ETag hash of the function"
  value       = aws_cloudfront_function.aws_cloudfront_function.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_time" {
  description = "When this resource was last modified."
  value       = aws_cloudfront_function.aws_cloudfront_function.last_modified_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the CloudFront function."
  value       = aws_cloudfront_function.aws_cloudfront_function.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime" {
  description = "Identifier of the function's runtime."
  value       = aws_cloudfront_function.aws_cloudfront_function.runtime
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN identifying your CloudFront Function."
  value       = aws_cloudfront_function.aws_cloudfront_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "Comment."
  value       = aws_cloudfront_function.aws_cloudfront_function.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "ETag hash of the function"
  value       = aws_cloudfront_function.aws_cloudfront_function.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_time" {
  description = "When this resource was last modified."
  value       = aws_cloudfront_function.aws_cloudfront_function.last_modified_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime" {
  description = "Identifier of the function's runtime."
  value       = aws_cloudfront_function.aws_cloudfront_function.runtime
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
