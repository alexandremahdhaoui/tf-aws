datasource "aws_lex_bot_alias" "aws_lex_bot_alias" {
  bot_name          = var.bot_name
  bot_version       = var.bot_version
  checksum          = var.checksum
  created_date      = var.created_date
  description       = var.description
  last_updated_date = var.last_updated_date
  name              = var.name
  arn               = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the bot alias. The name is case sensitive.The following attributes are exported."
  type        = string
}
variable "arn" {
  description = "ARN of the bot alias."
  type        = string
}
variable "bot_name" {
  description = "Name of the bot."
  type        = string
}
variable "bot_version" {
  description = "Version of the bot that the alias points to."
  type        = string
}
variable "checksum" {
  description = "Checksum of the bot alias."
  type        = string
}
variable "created_date" {
  description = "Date that the bot alias was created."
  type        = string
}
variable "description" {
  description = "Description of the alias."
  type        = string
}
variable "last_updated_date" {
  description = "Date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same."
  type        = string
}
output "name" {
  description = "(Required) Name of the bot alias. The name is case sensitive.The following attributes are exported."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.name
}
output "arn" {
  description = "ARN of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.arn
}
output "bot_name" {
  description = "Name of the bot."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.bot_name
}
output "bot_version" {
  description = "Version of the bot that the alias points to."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.bot_version
}
output "checksum" {
  description = "Checksum of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.checksum
}
output "created_date" {
  description = "Date that the bot alias was created."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.created_date
}
output "description" {
  description = "Description of the alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.description
}
output "last_updated_date" {
  description = "Date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.last_updated_date
}
output "arn" {
  description = "ARN of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.arn
}
output "bot_name" {
  description = "Name of the bot."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.bot_name
}
output "bot_version" {
  description = "Version of the bot that the alias points to."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.bot_version
}
output "checksum" {
  description = "Checksum of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.checksum
}
output "created_date" {
  description = "Date that the bot alias was created."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.created_date
}
output "description" {
  description = "Description of the alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.description
}
output "last_updated_date" {
  description = "Date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.last_updated_date
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
