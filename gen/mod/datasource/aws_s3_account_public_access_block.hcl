datasource "aws_s3_account_public_access_block" "aws_s3_account_public_access_block" {
  block_public_acls   = var.block_public_acls
  block_public_policy = var.block_public_policy
  id                  = var.id
  ignore_public_acls  = var.ignore_public_acls
  account_id          = var.account_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "account_id" {
  description = "(Optional) AWS account ID to configure. Defaults to automatically determined account ID of the Terraform AWS provider.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "block_public_acls" {
  description = "Whether or not Amazon S3 should block public ACLs for buckets in this account is enabled. Returns as true or false."
  type        = string
}
variable "block_public_policy" {
  description = "Whether or not Amazon S3 should block public bucket policies for buckets in this account is enabled. Returns as true or false."
  type        = string
}
variable "id" {
  description = "AWS account ID"
  type        = string
}
variable "ignore_public_acls" {
  description = "Whether or not Amazon S3 should ignore public ACLs for buckets in this account is enabled. Returns as true or false."
  type        = string
}
output "id" {
  description = "AWS account ID"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.id
}
output "ignore_public_acls" {
  description = "Whether or not Amazon S3 should ignore public ACLs for buckets in this account is enabled. Returns as true or false."
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.ignore_public_acls
}
output "account_id" {
  description = "(Optional) AWS account ID to configure. Defaults to automatically determined account ID of the Terraform AWS provider.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.account_id
}
output "block_public_acls" {
  description = "Whether or not Amazon S3 should block public ACLs for buckets in this account is enabled. Returns as true or false."
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.block_public_acls
}
output "block_public_policy" {
  description = "Whether or not Amazon S3 should block public bucket policies for buckets in this account is enabled. Returns as true or false."
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.block_public_policy
}
output "block_public_acls" {
  description = "Whether or not Amazon S3 should block public ACLs for buckets in this account is enabled. Returns as true or false."
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.block_public_acls
}
output "block_public_policy" {
  description = "Whether or not Amazon S3 should block public bucket policies for buckets in this account is enabled. Returns as true or false."
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.block_public_policy
}
output "id" {
  description = "AWS account ID"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.id
}
output "ignore_public_acls" {
  description = "Whether or not Amazon S3 should ignore public ACLs for buckets in this account is enabled. Returns as true or false."
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.ignore_public_acls
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
