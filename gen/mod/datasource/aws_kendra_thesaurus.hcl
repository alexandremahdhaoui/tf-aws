datasource "aws_kendra_thesaurus" "aws_kendra_thesaurus" {
  bucket             = var.bucket
  error_message      = var.error_message
  file_size_bytes    = var.file_size_bytes
  index_id           = var.index_id
  status             = var.status
  thesaurus_id       = var.thesaurus_id
  updated_at         = var.updated_at
  arn                = var.arn
  id                 = var.id
  role_arn           = var.role_arn
  source_s3_path     = var.source_s3_path
  synonym_rule_count = var.synonym_rule_count
  tags               = var.tags
  term_count         = var.term_count
  created_at         = var.created_at
  description        = var.description
  name               = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "created_at" {
  description = "Unix datetime that the Thesaurus was created."
  type        = string
}
variable "description" {
  description = "Description of the Thesaurus."
  type        = string
}
variable "name" {
  description = "Name of the Thesaurus."
  type        = string
}
variable "bucket" {
  description = "Name of the S3 bucket that contains the file."
  type        = string
}
variable "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  type        = string
}
variable "file_size_bytes" {
  description = "Size of the Thesaurus file in bytes."
  type        = string
}
variable "index_id" {
  description = "(Required) Identifier of the index that contains the Thesaurus."
  type        = string
}
variable "status" {
  description = "Status of the Thesaurus. It is ready to use when the status is ACTIVE."
  type        = string
}
variable "thesaurus_id" {
  description = "(Required) Identifier of the Thesaurus.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "updated_at" {
  description = "Date and time that the Thesaurus was last updated."
  type        = string
}
variable "arn" {
  description = "ARN of the Thesaurus."
  type        = string
}
variable "id" {
  description = "Unique identifiers of the Thesaurus and index separated by a slash (/)."
  type        = string
}
variable "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see IAM Roles for Amazon Kendra."
  type        = string
}
variable "source_s3_path" {
  description = "S3 location of the Thesaurus input data. Detailed below."
  type        = string
}
variable "synonym_rule_count" {
  description = "Number of synonym rules in the Thesaurus file."
  type        = string
}
variable "tags" {
  description = "Metadata that helps organize the Thesaurus you create.The source_s3_path configuration block supports the following attributes:"
  type        = string
}
variable "term_count" {
  description = "Number of unique terms in the Thesaurus file. For example, the synonyms a,b,c and a=>d, the term count would be 4."
  type        = string
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.bucket
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.error_message
}
output "file_size_bytes" {
  description = "Size of the Thesaurus file in bytes."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.file_size_bytes
}
output "index_id" {
  description = "(Required) Identifier of the index that contains the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.index_id
}
output "status" {
  description = "Status of the Thesaurus. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.status
}
output "thesaurus_id" {
  description = "(Required) Identifier of the Thesaurus.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.thesaurus_id
}
output "updated_at" {
  description = "Date and time that the Thesaurus was last updated."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.updated_at
}
output "arn" {
  description = "ARN of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.arn
}
output "id" {
  description = "Unique identifiers of the Thesaurus and index separated by a slash (/)."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.id
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.role_arn
}
output "source_s3_path" {
  description = "S3 location of the Thesaurus input data. Detailed below."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.source_s3_path
}
output "synonym_rule_count" {
  description = "Number of synonym rules in the Thesaurus file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.synonym_rule_count
}
output "tags" {
  description = "Metadata that helps organize the Thesaurus you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.tags
}
output "term_count" {
  description = "Number of unique terms in the Thesaurus file. For example, the synonyms a,b,c and a=>d, the term count would be 4."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.term_count
}
output "created_at" {
  description = "Unix datetime that the Thesaurus was created."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.created_at
}
output "description" {
  description = "Description of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.description
}
output "name" {
  description = "Name of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.name
}
output "source_s3_path" {
  description = "S3 location of the Thesaurus input data. Detailed below."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.source_s3_path
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.bucket
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.error_message
}
output "name" {
  description = "Name of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.name
}
output "updated_at" {
  description = "Date and time that the Thesaurus was last updated."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.updated_at
}
output "arn" {
  description = "ARN of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.arn
}
output "created_at" {
  description = "Unix datetime that the Thesaurus was created."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.created_at
}
output "tags" {
  description = "Metadata that helps organize the Thesaurus you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.tags
}
output "file_size_bytes" {
  description = "Size of the Thesaurus file in bytes."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.file_size_bytes
}
output "id" {
  description = "Unique identifiers of the Thesaurus and index separated by a slash (/)."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.id
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.role_arn
}
output "term_count" {
  description = "Number of unique terms in the Thesaurus file. For example, the synonyms a,b,c and a=>d, the term count would be 4."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.term_count
}
output "description" {
  description = "Description of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.description
}
output "status" {
  description = "Status of the Thesaurus. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.status
}
output "synonym_rule_count" {
  description = "Number of synonym rules in the Thesaurus file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.synonym_rule_count
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
