datasource "aws_s3_bucket_objects" "aws_s3_bucket_objects" {
  common_prefixes = var.common_prefixes
  delimiter       = var.delimiter
  encoding_type   = var.encoding_type
  fetch_owner     = var.fetch_owner
  keys            = var.keys
  start_after     = var.start_after
  bucket          = var.bucket
  id              = var.id
  max_keys        = var.max_keys
  prefix          = var.prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "common_prefixes" {
  description = "List of any keys between prefix and the next occurrence of delimiter (i.e., similar to subdirectories of the prefix \"directory\"); the list is only returned when you specify delimiter"
  type        = string
}
variable "delimiter" {
  description = "(Optional) Character used to group keys (Default: none)"
  type        = string
}
variable "encoding_type" {
  description = "(Optional) Encodes keys using this method (Default: none; besides none, only \"url\" can be used)"
  type        = string
}
variable "fetch_owner" {
  description = "(Optional) Boolean specifying whether to populate the owner list (Default: false)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "keys" {
  description = "List of strings representing object keys"
  type        = string
}
variable "start_after" {
  description = "(Optional) Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)"
  type        = string
}
variable "bucket" {
  description = "(Required) Lists object keys in this S3 bucket. Alternatively, an S3 access point ARN can be specified"
  type        = string
}
variable "id" {
  description = "S3 Bucket."
  type        = string
}
variable "max_keys" {
  description = "(Optional) Maximum object keys to return (Default: 1000)"
  type        = string
}
variable "prefix" {
  description = "(Optional) Limits results to object keys with this prefix (Default: none)"
  type        = string
}
output "common_prefixes" {
  description = "List of any keys between prefix and the next occurrence of delimiter (i.e., similar to subdirectories of the prefix \"directory\"); the list is only returned when you specify delimiter"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.common_prefixes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delimiter" {
  description = "(Optional) Character used to group keys (Default: none)"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.delimiter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encoding_type" {
  description = "(Optional) Encodes keys using this method (Default: none; besides none, only \"url\" can be used)"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.encoding_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fetch_owner" {
  description = "(Optional) Boolean specifying whether to populate the owner list (Default: false)In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.fetch_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "keys" {
  description = "List of strings representing object keys"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.keys
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_after" {
  description = "(Optional) Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.start_after
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) Lists object keys in this S3 bucket. Alternatively, an S3 access point ARN can be specified"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "S3 Bucket."
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_keys" {
  description = "(Optional) Maximum object keys to return (Default: 1000)"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.max_keys
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix" {
  description = "(Optional) Limits results to object keys with this prefix (Default: none)"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "common_prefixes" {
  description = "List of any keys between prefix and the next occurrence of delimiter (i.e., similar to subdirectories of the prefix \"directory\"); the list is only returned when you specify delimiter"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.common_prefixes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "S3 Bucket."
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "keys" {
  description = "List of strings representing object keys"
  value       = aws_s3_bucket_objects.aws_s3_bucket_objects.keys
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
