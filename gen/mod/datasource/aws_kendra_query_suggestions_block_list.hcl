datasource "aws_kendra_query_suggestions_block_list" "aws_kendra_query_suggestions_block_list" {
  name                            = var.name
  query_suggestions_block_list_id = var.query_suggestions_block_list_id
  arn                             = var.arn
  bucket                          = var.bucket
  item_count                      = var.item_count
  role_arn                        = var.role_arn
  status                          = var.status
  tags                            = var.tags
  created_at                      = var.created_at
  description                     = var.description
  error_message                   = var.error_message
  id                              = var.id
  file_size_bytes                 = var.file_size_bytes
  index_id                        = var.index_id
  source_s3_path                  = var.source_s3_path
  updated_at                      = var.updated_at
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "Name of the block list."
  type        = string
}
variable "query_suggestions_block_list_id" {
  description = "(Required) Identifier of the block list.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the block list."
  type        = string
}
variable "bucket" {
  description = "Name of the S3 bucket that contains the file."
  type        = string
}
variable "item_count" {
  description = "Current number of valid, non-empty words or phrases in the block list text file."
  type        = string
}
variable "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see IAM Roles for Amazon Kendra."
  type        = string
}
variable "status" {
  description = "Current status of the block list. When the value is ACTIVE, the block list is ready for use."
  type        = string
}
variable "tags" {
  description = "Metadata that helps organize the block list you create.The source_s3_path configuration block supports the following attributes:"
  type        = string
}
variable "created_at" {
  description = "Date-time a block list was created."
  type        = string
}
variable "description" {
  description = "Description for the block list."
  type        = string
}
variable "error_message" {
  description = "Error message containing details if there are issues processing the block list."
  type        = string
}
variable "id" {
  description = "Unique identifiers of the block list and index separated by a slash (/)."
  type        = string
}
variable "file_size_bytes" {
  description = "Current size of the block list text file in S3."
  type        = string
}
variable "index_id" {
  description = "(Required) Identifier of the index that contains the block list."
  type        = string
}
variable "source_s3_path" {
  description = "S3 location of the block list input data. Detailed below."
  type        = string
}
variable "updated_at" {
  description = "Date and time that the block list was last updated."
  type        = string
}
output "file_size_bytes" {
  description = "Current size of the block list text file in S3."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.file_size_bytes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "index_id" {
  description = "(Required) Identifier of the index that contains the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.index_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_s3_path" {
  description = "S3 location of the block list input data. Detailed below."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.source_s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_at" {
  description = "Date and time that the block list was last updated."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.updated_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_suggestions_block_list_id" {
  description = "(Required) Identifier of the block list.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.query_suggestions_block_list_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "item_count" {
  description = "Current number of valid, non-empty words or phrases in the block list text file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.item_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current status of the block list. When the value is ACTIVE, the block list is ready for use."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Metadata that helps organize the block list you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Date-time a block list was created."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description for the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_message" {
  description = "Error message containing details if there are issues processing the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.error_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifiers of the block list and index separated by a slash (/)."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_message" {
  description = "Error message containing details if there are issues processing the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.error_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_size_bytes" {
  description = "Current size of the block list text file in S3."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.file_size_bytes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "item_count" {
  description = "Current number of valid, non-empty words or phrases in the block list text file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.item_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_s3_path" {
  description = "S3 location of the block list input data. Detailed below."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.source_s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current status of the block list. When the value is ACTIVE, the block list is ready for use."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_at" {
  description = "Date and time that the block list was last updated."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.updated_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Date-time a block list was created."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Metadata that helps organize the block list you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description for the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifiers of the block list and index separated by a slash (/)."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.role_arn
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
