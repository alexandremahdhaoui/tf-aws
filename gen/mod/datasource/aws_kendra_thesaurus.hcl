datasource "aws_kendra_thesaurus" "aws_kendra_thesaurus" {
  description        = var.description
  error_message      = var.error_message
  tags               = var.tags
  term_count         = var.term_count
  updated_at         = var.updated_at
  bucket             = var.bucket
  synonym_rule_count = var.synonym_rule_count
  file_size_bytes    = var.file_size_bytes
  id                 = var.id
  index_id           = var.index_id
  thesaurus_id       = var.thesaurus_id
  arn                = var.arn
  name               = var.name
  role_arn           = var.role_arn
  source_s3_path     = var.source_s3_path
  status             = var.status
  created_at         = var.created_at
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket" {
  description = "Name of the S3 bucket that contains the file."
  type        = string
}
variable "description" {
  description = "Description of the Thesaurus."
  type        = string
}
variable "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
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
variable "updated_at" {
  description = "Date and time that the Thesaurus was last updated."
  type        = string
}
variable "file_size_bytes" {
  description = "Size of the Thesaurus file in bytes."
  type        = string
}
variable "synonym_rule_count" {
  description = "Number of synonym rules in the Thesaurus file."
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
variable "index_id" {
  description = "(Required) Identifier of the index that contains the Thesaurus."
  type        = string
}
variable "thesaurus_id" {
  description = "(Required) Identifier of the Thesaurus.In addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "created_at" {
  description = "Unix datetime that the Thesaurus was created."
  type        = string
}
variable "name" {
  description = "Name of the Thesaurus."
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
variable "status" {
  description = "Status of the Thesaurus. It is ready to use when the status is ACTIVE."
  type        = string
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.error_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Metadata that helps organize the Thesaurus you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "term_count" {
  description = "Number of unique terms in the Thesaurus file. For example, the synonyms a,b,c and a=>d, the term count would be 4."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.term_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_at" {
  description = "Date and time that the Thesaurus was last updated."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.updated_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_size_bytes" {
  description = "Size of the Thesaurus file in bytes."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.file_size_bytes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "synonym_rule_count" {
  description = "Number of synonym rules in the Thesaurus file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.synonym_rule_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifiers of the Thesaurus and index separated by a slash (/)."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "index_id" {
  description = "(Required) Identifier of the index that contains the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.index_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "thesaurus_id" {
  description = "(Required) Identifier of the Thesaurus.In addition to all of the arguments above, the following attributes are exported:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.thesaurus_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Unix datetime that the Thesaurus was created."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_s3_path" {
  description = "S3 location of the Thesaurus input data. Detailed below."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.source_s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the Thesaurus. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Unix datetime that the Thesaurus was created."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_s3_path" {
  description = "S3 location of the Thesaurus input data. Detailed below."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.source_s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "Name of the S3 bucket that contains the file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "updated_at" {
  description = "Date and time that the Thesaurus was last updated."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.updated_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_size_bytes" {
  description = "Size of the Thesaurus file in bytes."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.file_size_bytes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifiers of the Thesaurus and index separated by a slash (/)."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the Thesaurus. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "term_count" {
  description = "Number of unique terms in the Thesaurus file. For example, the synonyms a,b,c and a=>d, the term count would be 4."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.term_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_message" {
  description = "When the status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.error_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "synonym_rule_count" {
  description = "Number of synonym rules in the Thesaurus file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.synonym_rule_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Metadata that helps organize the Thesaurus you create.The source_s3_path configuration block supports the following attributes:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.tags
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
