datasource "aws_kendra_faq" "aws_kendra_faq" {
  language_code = var.language_code
  s3_path       = var.s3_path
  tags          = var.tags
  updated_at    = var.updated_at
  created_at    = var.created_at
  description   = var.description
  error_message = var.error_message
  name          = var.name
  status        = var.status
  arn           = var.arn
  bucket        = var.bucket
  id            = var.id
  faq_id        = var.faq_id
  index_id      = var.index_id
  file_format   = var.file_format
  role_arn      = var.role_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "updated_at" {
  description = "Date and time that the FAQ was last updated."
  type        = string
}
variable "created_at" {
  description = "Unix datetime that the faq was created."
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
variable "s3_path" {
  description = "S3 location of the FAQ input data. Detailed below."
  type        = string
}
variable "tags" {
  description = "Metadata that helps organize the FAQs you create.The s3_path configuration block supports the following attributes:"
  type        = string
}
variable "arn" {
  description = "ARN of the FAQ."
  type        = string
}
variable "bucket" {
  description = "Name of the S3 bucket that contains the file."
  type        = string
}
variable "id" {
  description = "Unique identifiers of the FAQ and index separated by a slash (/)."
  type        = string
}
variable "name" {
  description = "Name of the FAQ."
  type        = string
}
variable "status" {
  description = "Status of the FAQ. It is ready to use when the status is ACTIVE."
  type        = string
}
variable "faq_id" {
  description = "(Required) Identifier of the FAQ."
  type        = string
}
variable "index_id" {
  description = "(Required) Identifier of the index that contains the FAQ.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "file_format" {
  description = "File format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
  type        = string
}
variable "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  type        = string
}
output "faq_id" {
  description = "(Required) Identifier of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.faq_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "index_id" {
  description = "(Required) Identifier of the index that contains the FAQ.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_kendra_faq.aws_kendra_faq.index_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_format" {
  description = "File format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
  value       = aws_kendra_faq.aws_kendra_faq.file_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_faq.aws_kendra_faq.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Unix datetime that the faq was created."
  value       = aws_kendra_faq.aws_kendra_faq.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_faq.aws_kendra_faq.error_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "language_code" {
  description = "Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  value       = aws_kendra_faq.aws_kendra_faq.language_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_path" {
  description = "S3 location of the FAQ input data. Detailed below."
  value       = aws_kendra_faq.aws_kendra_faq.s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Metadata that helps organize the FAQs you create.The s3_path configuration block supports the following attributes:"
  value       = aws_kendra_faq.aws_kendra_faq.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_at" {
  description = "Date and time that the FAQ was last updated."
  value       = aws_kendra_faq.aws_kendra_faq.updated_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_faq.aws_kendra_faq.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifiers of the FAQ and index separated by a slash (/)."
  value       = aws_kendra_faq.aws_kendra_faq.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the FAQ. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_faq.aws_kendra_faq.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Metadata that helps organize the FAQs you create.The s3_path configuration block supports the following attributes:"
  value       = aws_kendra_faq.aws_kendra_faq.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_at" {
  description = "Date and time that the FAQ was last updated."
  value       = aws_kendra_faq.aws_kendra_faq.updated_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Unix datetime that the faq was created."
  value       = aws_kendra_faq.aws_kendra_faq.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_format" {
  description = "File format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
  value       = aws_kendra_faq.aws_kendra_faq.file_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "language_code" {
  description = "Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  value       = aws_kendra_faq.aws_kendra_faq.language_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_faq.aws_kendra_faq.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_path" {
  description = "S3 location of the FAQ input data. Detailed below."
  value       = aws_kendra_faq.aws_kendra_faq.s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifiers of the FAQ and index separated by a slash (/)."
  value       = aws_kendra_faq.aws_kendra_faq.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_faq.aws_kendra_faq.error_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the FAQ. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_faq.aws_kendra_faq.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_faq.aws_kendra_faq.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.name
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
