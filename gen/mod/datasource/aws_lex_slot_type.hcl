datasource "aws_lex_slot_type" "aws_lex_slot_type" {
  description              = var.description
  enumeration_value        = var.enumeration_value
  last_updated_date        = var.last_updated_date
  name                     = var.name
  value_selection_strategy = var.value_selection_strategy
  version                  = var.version
  checksum                 = var.checksum
  created_date             = var.created_date
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "version" {
  description = "(Optional) Version of the slot type.The following attributes are exported."
  type        = string
  default     = ""
}
variable "checksum" {
  description = "Checksum identifying the version of the slot type that was created. The checksum is\nnot included as an argument because the resource will add it automatically when updating the slot type."
  type        = string
}
variable "created_date" {
  description = "Date when the slot type version was created."
  type        = string
}
variable "description" {
  description = "Description of the slot type."
  type        = string
}
variable "enumeration_value" {
  description = ""
  type        = string
}
variable "last_updated_date" {
  description = "Date when the $LATEST version of this slot type was updated."
  type        = string
}
variable "name" {
  description = "Name of the slot type. The name is not case sensitive."
  type        = string
}
variable "value_selection_strategy" {
  description = "Determines the slot resolution strategy that Amazon Lex\nuses to return slot type values. ORIGINAL_VALUETOP_RESOLUTION"
  type        = string
}
output "version" {
  description = "(Optional) Version of the slot type.The following attributes are exported."
  value       = aws_lex_slot_type.aws_lex_slot_type.version
}
output "checksum" {
  description = "Checksum identifying the version of the slot type that was created. The checksum is\nnot included as an argument because the resource will add it automatically when updating the slot type."
  value       = aws_lex_slot_type.aws_lex_slot_type.checksum
}
output "created_date" {
  description = "Date when the slot type version was created."
  value       = aws_lex_slot_type.aws_lex_slot_type.created_date
}
output "description" {
  description = "Description of the slot type."
  value       = aws_lex_slot_type.aws_lex_slot_type.description
}
output "enumeration_value" {
  description = ""
  value       = aws_lex_slot_type.aws_lex_slot_type.enumeration_value
}
output "last_updated_date" {
  description = "Date when the $LATEST version of this slot type was updated."
  value       = aws_lex_slot_type.aws_lex_slot_type.last_updated_date
}
output "name" {
  description = "Name of the slot type. The name is not case sensitive."
  value       = aws_lex_slot_type.aws_lex_slot_type.name
}
output "value_selection_strategy" {
  description = "Determines the slot resolution strategy that Amazon Lex\nuses to return slot type values. ORIGINAL_VALUETOP_RESOLUTION"
  value       = aws_lex_slot_type.aws_lex_slot_type.value_selection_strategy
}
output "name" {
  description = "Name of the slot type. The name is not case sensitive."
  value       = aws_lex_slot_type.aws_lex_slot_type.name
}
output "value_selection_strategy" {
  description = "Determines the slot resolution strategy that Amazon Lex\nuses to return slot type values. ORIGINAL_VALUETOP_RESOLUTION"
  value       = aws_lex_slot_type.aws_lex_slot_type.value_selection_strategy
}
output "checksum" {
  description = "Checksum identifying the version of the slot type that was created. The checksum is\nnot included as an argument because the resource will add it automatically when updating the slot type."
  value       = aws_lex_slot_type.aws_lex_slot_type.checksum
}
output "created_date" {
  description = "Date when the slot type version was created."
  value       = aws_lex_slot_type.aws_lex_slot_type.created_date
}
output "description" {
  description = "Description of the slot type."
  value       = aws_lex_slot_type.aws_lex_slot_type.description
}
output "enumeration_value" {
  description = ""
  value       = aws_lex_slot_type.aws_lex_slot_type.enumeration_value
}
output "last_updated_date" {
  description = "Date when the $LATEST version of this slot type was updated."
  value       = aws_lex_slot_type.aws_lex_slot_type.last_updated_date
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
