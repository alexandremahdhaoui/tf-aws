datasource "aws_s3_objects" "aws_s3_objects" {
  encoding_type   = var.encoding_type
  fetch_owner     = var.fetch_owner
  keys            = var.keys
  max_keys        = var.max_keys
  start_after     = var.start_after
  bucket          = var.bucket
  delimiter       = var.delimiter
  prefix          = var.prefix
  common_prefixes = var.common_prefixes
  id              = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "common_prefixes" {
  description = "List of any keys between prefix and the next occurrence of delimiter (i.e., similar to subdirectories of the prefix \"directory\"); the list is only returned when you specify delimiter"
  type        = string
}
variable "id" {
  description = "S3 Bucket."
  type        = string
}
variable "prefix" {
  description = "(Optional) Limits results to object keys with this prefix (Default: none)"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) Lists object keys in this S3 bucket. Alternatively, an S3 access point ARN can be specified"
  type        = string
}
variable "delimiter" {
  description = "(Optional) Character used to group keys (Default: none)"
  type        = string
  default     = ""
}
variable "encoding_type" {
  description = "(Optional) Encodes keys using this method (Default: none; besides none, only \"url\" can be used)"
  type        = string
  default     = ""
}
variable "fetch_owner" {
  description = "(Optional) Boolean specifying whether to populate the owner list (Default: false)In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "keys" {
  description = "List of strings representing object keys"
  type        = string
}
variable "max_keys" {
  description = "(Optional) Maximum object keys to return (Default: 1000)"
  type        = string
  default     = ""
}
variable "start_after" {
  description = "(Optional) Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)"
  type        = string
  default     = ""
}
output "bucket" {
  description = "(Required) Lists object keys in this S3 bucket. Alternatively, an S3 access point ARN can be specified"
  value       = aws_s3_objects.aws_s3_objects.bucket
}
output "delimiter" {
  description = "(Optional) Character used to group keys (Default: none)"
  value       = aws_s3_objects.aws_s3_objects.delimiter
}
output "encoding_type" {
  description = "(Optional) Encodes keys using this method (Default: none; besides none, only \"url\" can be used)"
  value       = aws_s3_objects.aws_s3_objects.encoding_type
}
output "fetch_owner" {
  description = "(Optional) Boolean specifying whether to populate the owner list (Default: false)In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_objects.aws_s3_objects.fetch_owner
}
output "keys" {
  description = "List of strings representing object keys"
  value       = aws_s3_objects.aws_s3_objects.keys
}
output "max_keys" {
  description = "(Optional) Maximum object keys to return (Default: 1000)"
  value       = aws_s3_objects.aws_s3_objects.max_keys
}
output "start_after" {
  description = "(Optional) Returns key names lexicographically after a specific object key in your bucket (Default: none; S3 lists object keys in UTF-8 character encoding in lexicographical order)"
  value       = aws_s3_objects.aws_s3_objects.start_after
}
output "common_prefixes" {
  description = "List of any keys between prefix and the next occurrence of delimiter (i.e., similar to subdirectories of the prefix \"directory\"); the list is only returned when you specify delimiter"
  value       = aws_s3_objects.aws_s3_objects.common_prefixes
}
output "id" {
  description = "S3 Bucket."
  value       = aws_s3_objects.aws_s3_objects.id
}
output "prefix" {
  description = "(Optional) Limits results to object keys with this prefix (Default: none)"
  value       = aws_s3_objects.aws_s3_objects.prefix
}
output "common_prefixes" {
  description = "List of any keys between prefix and the next occurrence of delimiter (i.e., similar to subdirectories of the prefix \"directory\"); the list is only returned when you specify delimiter"
  value       = aws_s3_objects.aws_s3_objects.common_prefixes
}
output "id" {
  description = "S3 Bucket."
  value       = aws_s3_objects.aws_s3_objects.id
}
output "keys" {
  description = "List of strings representing object keys"
  value       = aws_s3_objects.aws_s3_objects.keys
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
