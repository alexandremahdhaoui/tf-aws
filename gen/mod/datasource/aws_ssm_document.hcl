datasource "aws_ssm_document" "aws_ssm_document" {
  content          = var.content
  document_format  = var.document_format
  document_version = var.document_version
  name             = var.name
  arn              = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the document. If the document is an AWS managed document, this value will be set to the name of the document instead."
  type        = string
}
variable "content" {
  description = "Contents of the document."
  type        = string
}
variable "document_format" {
  description = "(Optional) Returns the document in the specified format. The document format can be either JSON, YAML and TEXT. JSON is the default format."
  type        = string
  default     = ""
}
variable "document_version" {
  description = "(Optional) Document version for which you want information.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the Systems Manager document."
  type        = string
}
output "content" {
  description = "Contents of the document."
  value       = aws_ssm_document.aws_ssm_document.content
}
output "document_format" {
  description = "(Optional) Returns the document in the specified format. The document format can be either JSON, YAML and TEXT. JSON is the default format."
  value       = aws_ssm_document.aws_ssm_document.document_format
}
output "document_version" {
  description = "(Optional) Document version for which you want information.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_document.aws_ssm_document.document_version
}
output "name" {
  description = "(Required) Name of the Systems Manager document."
  value       = aws_ssm_document.aws_ssm_document.name
}
output "arn" {
  description = "ARN of the document. If the document is an AWS managed document, this value will be set to the name of the document instead."
  value       = aws_ssm_document.aws_ssm_document.arn
}
output "arn" {
  description = "ARN of the document. If the document is an AWS managed document, this value will be set to the name of the document instead."
  value       = aws_ssm_document.aws_ssm_document.arn
}
output "content" {
  description = "Contents of the document."
  value       = aws_ssm_document.aws_ssm_document.content
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
