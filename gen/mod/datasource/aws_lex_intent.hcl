datasource "aws_lex_intent" "aws_lex_intent" {
  parent_intent_signature = var.parent_intent_signature
  version                 = var.version
  arn                     = var.arn
  checksum                = var.checksum
  created_date            = var.created_date
  description             = var.description
  last_updated_date       = var.last_updated_date
  name                    = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of the intent."
  type        = string
}
variable "last_updated_date" {
  description = "Date when the $LATEST version of this intent was updated."
  type        = string
}
variable "name" {
  description = "Name of the intent, not case sensitive."
  type        = string
}
variable "parent_intent_signature" {
  description = "Standard Built-in Intents"
  type        = string
}
variable "version" {
  description = "(Optional) Version of the intent.The following attributes are exported."
  type        = string
}
variable "arn" {
  description = "ARN of the Lex intent."
  type        = string
}
variable "checksum" {
  description = "Checksum identifying the version of the intent that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the intent."
  type        = string
}
variable "created_date" {
  description = "Date when the intent version was created."
  type        = string
}
output "arn" {
  description = "ARN of the Lex intent."
  value       = aws_lex_intent.aws_lex_intent.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checksum" {
  description = "Checksum identifying the version of the intent that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the intent."
  value       = aws_lex_intent.aws_lex_intent.checksum
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Date when the intent version was created."
  value       = aws_lex_intent.aws_lex_intent.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the intent."
  value       = aws_lex_intent.aws_lex_intent.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Date when the $LATEST version of this intent was updated."
  value       = aws_lex_intent.aws_lex_intent.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the intent, not case sensitive."
  value       = aws_lex_intent.aws_lex_intent.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_intent_signature" {
  description = "Standard Built-in Intents"
  value       = aws_lex_intent.aws_lex_intent.parent_intent_signature
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "(Optional) Version of the intent.The following attributes are exported."
  value       = aws_lex_intent.aws_lex_intent.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the intent, not case sensitive."
  value       = aws_lex_intent.aws_lex_intent.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_intent_signature" {
  description = "Standard Built-in Intents"
  value       = aws_lex_intent.aws_lex_intent.parent_intent_signature
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Lex intent."
  value       = aws_lex_intent.aws_lex_intent.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checksum" {
  description = "Checksum identifying the version of the intent that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the intent."
  value       = aws_lex_intent.aws_lex_intent.checksum
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Date when the intent version was created."
  value       = aws_lex_intent.aws_lex_intent.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the intent."
  value       = aws_lex_intent.aws_lex_intent.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Date when the $LATEST version of this intent was updated."
  value       = aws_lex_intent.aws_lex_intent.last_updated_date
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
