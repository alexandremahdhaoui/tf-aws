datasource "aws_kendra_query_suggestions_block_list" "aws_kendra_query_suggestions_block_list" {
  bucket                          = var.bucket
  description                     = var.description
  item_count                      = var.item_count
  query_suggestions_block_list_id = var.query_suggestions_block_list_id
  source_s3_path                  = var.source_s3_path
  error_message                   = var.error_message
  name                            = var.name
  tags                            = var.tags
  created_at                      = var.created_at
  id                              = var.id
  role_arn                        = var.role_arn
  status                          = var.status
  updated_at                      = var.updated_at
  arn                             = var.arn
  file_size_bytes                 = var.file_size_bytes
  index_id                        = var.index_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "created_at" {
  description = "Date-time a block list was created."
  type        = string
}
variable "id" {
  description = "Unique identifiers of the block list and index separated by a slash (/)."
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
variable "updated_at" {
  description = "Date and time that the block list was last updated."
  type        = string
}
variable "arn" {
  description = "ARN of the block list."
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
variable "bucket" {
  description = "Name of the S3 bucket that contains the file."
  type        = string
}
variable "description" {
  description = "Description for the block list."
  type        = string
}
variable "item_count" {
  description = "Current number of valid, non-empty words or phrases in the block list text file."
  type        = string
}
variable "query_suggestions_block_list_id" {
  description = "(Required) Identifier of the block list.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "source_s3_path" {
  description = "S3 location of the block list input data. Detailed below."
  type        = string
}
variable "error_message" {
  description = "Error message containing details if there are issues processing the block list."
  type        = string
}
variable "name" {
  description = "Name of the block list."
  type        = string
}
variable "tags" {
  description = "Metadata that helps organize the block list you create.The source_s3_path configuration block supports the following attributes:"
  type        = string
}
output "updated_at" {
  description = "Date and time that the block list was last updated."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.updated_at
}
output "created_at" {
  description = "Date-time a block list was created."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.created_at
}
output "id" {
  description = "Unique identifiers of the block list and index separated by a slash (/)."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.id
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.role_arn
}
output "status" {
  description = "Current status of the block list. When the value is ACTIVE, the block list is ready for use."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.status
}
output "arn" {
  description = "ARN of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.arn
}
output "file_size_bytes" {
  description = "Current size of the block list text file in S3."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.file_size_bytes
}
output "index_id" {
  description = "(Required) Identifier of the index that contains the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.index_id
}
output "source_s3_path" {
  description = "S3 location of the block list input data. Detailed below."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.source_s3_path
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.bucket
}
output "description" {
  description = "Description for the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.description
}
output "item_count" {
  description = "Current number of valid, non-empty words or phrases in the block list text file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.item_count
}
output "query_suggestions_block_list_id" {
  description = "(Required) Identifier of the block list.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.query_suggestions_block_list_id
}
output "error_message" {
  description = "Error message containing details if there are issues processing the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.error_message
}
output "name" {
  description = "Name of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.name
}
output "tags" {
  description = "Metadata that helps organize the block list you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.tags
}
output "created_at" {
  description = "Date-time a block list was created."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.created_at
}
output "error_message" {
  description = "Error message containing details if there are issues processing the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.error_message
}
output "id" {
  description = "Unique identifiers of the block list and index separated by a slash (/)."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.id
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.bucket
}
output "item_count" {
  description = "Current number of valid, non-empty words or phrases in the block list text file."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.item_count
}
output "name" {
  description = "Name of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.name
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.role_arn
}
output "source_s3_path" {
  description = "S3 location of the block list input data. Detailed below."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.source_s3_path
}
output "status" {
  description = "Current status of the block list. When the value is ACTIVE, the block list is ready for use."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.status
}
output "tags" {
  description = "Metadata that helps organize the block list you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.tags
}
output "arn" {
  description = "ARN of the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.arn
}
output "description" {
  description = "Description for the block list."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.description
}
output "file_size_bytes" {
  description = "Current size of the block list text file in S3."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.file_size_bytes
}
output "updated_at" {
  description = "Date and time that the block list was last updated."
  value       = aws_kendra_query_suggestions_block_list.aws_kendra_query_suggestions_block_list.updated_at
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
