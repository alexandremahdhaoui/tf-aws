datasource "aws_kendra_faq" "aws_kendra_faq" {
  bucket        = var.bucket
  faq_id        = var.faq_id
  id            = var.id
  language_code = var.language_code
  tags          = var.tags
  arn           = var.arn
  description   = var.description
  error_message = var.error_message
  file_format   = var.file_format
  s3_path       = var.s3_path
  status        = var.status
  role_arn      = var.role_arn
  updated_at    = var.updated_at
  created_at    = var.created_at
  index_id      = var.index_id
  name          = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket" {
  description = "Name of the S3 bucket that contains the file."
  type        = string
}
variable "faq_id" {
  description = "(Required) Identifier of the FAQ."
  type        = string
}
variable "id" {
  description = "Unique identifiers of the FAQ and index separated by a slash (/)."
  type        = string
}
variable "arn" {
  description = "ARN of the FAQ."
  type        = string
}
variable "description" {
  description = "Description of the FAQ."
  type        = string
}
variable "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  type        = string
}
variable "language_code" {
  description = "Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  type        = string
}
variable "tags" {
  description = "Metadata that helps organize the FAQs you create.The s3_path configuration block supports the following attributes:"
  type        = string
}
variable "file_format" {
  description = "File format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
  type        = string
}
variable "s3_path" {
  description = "S3 location of the FAQ input data. Detailed below."
  type        = string
}
variable "status" {
  description = "Status of the FAQ. It is ready to use when the status is ACTIVE."
  type        = string
}
variable "created_at" {
  description = "Unix datetime that the faq was created."
  type        = string
}
variable "index_id" {
  description = "(Required) Identifier of the index that contains the FAQ.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "Name of the FAQ."
  type        = string
}
variable "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  type        = string
}
variable "updated_at" {
  description = "Date and time that the FAQ was last updated."
  type        = string
}
output "arn" {
  description = "ARN of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.arn
}
output "description" {
  description = "Description of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.description
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_faq.aws_kendra_faq.error_message
}
output "language_code" {
  description = "Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  value       = aws_kendra_faq.aws_kendra_faq.language_code
}
output "tags" {
  description = "Metadata that helps organize the FAQs you create.The s3_path configuration block supports the following attributes:"
  value       = aws_kendra_faq.aws_kendra_faq.tags
}
output "file_format" {
  description = "File format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
  value       = aws_kendra_faq.aws_kendra_faq.file_format
}
output "s3_path" {
  description = "S3 location of the FAQ input data. Detailed below."
  value       = aws_kendra_faq.aws_kendra_faq.s3_path
}
output "status" {
  description = "Status of the FAQ. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_faq.aws_kendra_faq.status
}
output "created_at" {
  description = "Unix datetime that the faq was created."
  value       = aws_kendra_faq.aws_kendra_faq.created_at
}
output "index_id" {
  description = "(Required) Identifier of the index that contains the FAQ.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_kendra_faq.aws_kendra_faq.index_id
}
output "name" {
  description = "Name of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.name
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_faq.aws_kendra_faq.role_arn
}
output "updated_at" {
  description = "Date and time that the FAQ was last updated."
  value       = aws_kendra_faq.aws_kendra_faq.updated_at
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_faq.aws_kendra_faq.bucket
}
output "faq_id" {
  description = "(Required) Identifier of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.faq_id
}
output "id" {
  description = "Unique identifiers of the FAQ and index separated by a slash (/)."
  value       = aws_kendra_faq.aws_kendra_faq.id
}
output "created_at" {
  description = "Unix datetime that the faq was created."
  value       = aws_kendra_faq.aws_kendra_faq.created_at
}
output "id" {
  description = "Unique identifiers of the FAQ and index separated by a slash (/)."
  value       = aws_kendra_faq.aws_kendra_faq.id
}
output "language_code" {
  description = "Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  value       = aws_kendra_faq.aws_kendra_faq.language_code
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_faq.aws_kendra_faq.role_arn
}
output "arn" {
  description = "ARN of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.arn
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_faq.aws_kendra_faq.error_message
}
output "description" {
  description = "Description of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.description
}
output "s3_path" {
  description = "S3 location of the FAQ input data. Detailed below."
  value       = aws_kendra_faq.aws_kendra_faq.s3_path
}
output "status" {
  description = "Status of the FAQ. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_faq.aws_kendra_faq.status
}
output "updated_at" {
  description = "Date and time that the FAQ was last updated."
  value       = aws_kendra_faq.aws_kendra_faq.updated_at
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_faq.aws_kendra_faq.bucket
}
output "name" {
  description = "Name of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.name
}
output "tags" {
  description = "Metadata that helps organize the FAQs you create.The s3_path configuration block supports the following attributes:"
  value       = aws_kendra_faq.aws_kendra_faq.tags
}
output "file_format" {
  description = "File format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
  value       = aws_kendra_faq.aws_kendra_faq.file_format
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
