datasource "aws_memorydb_user" "aws_memorydb_user" {
  access_string          = var.access_string
  arn                    = var.arn
  authentication_mode    = var.authentication_mode
  id                     = var.id
  minimum_engine_version = var.minimum_engine_version
  password_count         = var.password_count
  type                   = var.type
  user_name              = var.user_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "password_count" {
  description = "The number of passwords belonging to the user."
  type        = string
}
variable "type" {
  description = "Whether the user requires a password to authenticate."
  type        = string
}
variable "user_name" {
  description = "(Required) Name of the user.In addition, the following attributes are exported:"
  type        = string
}
variable "access_string" {
  description = "Access permissions string used for this user."
  type        = string
}
variable "arn" {
  description = "ARN of the user."
  type        = string
}
variable "authentication_mode" {
  description = "Denotes the user's authentication properties.\n"
  type        = string
}
variable "id" {
  description = "Name of the user."
  type        = string
}
variable "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  type        = string
}
output "id" {
  description = "Name of the user."
  value       = aws_memorydb_user.aws_memorydb_user.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  value       = aws_memorydb_user.aws_memorydb_user.minimum_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password_count" {
  description = "The number of passwords belonging to the user."
  value       = aws_memorydb_user.aws_memorydb_user.password_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Whether the user requires a password to authenticate."
  value       = aws_memorydb_user.aws_memorydb_user.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_name" {
  description = "(Required) Name of the user.In addition, the following attributes are exported:"
  value       = aws_memorydb_user.aws_memorydb_user.user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_string" {
  description = "Access permissions string used for this user."
  value       = aws_memorydb_user.aws_memorydb_user.access_string
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the user."
  value       = aws_memorydb_user.aws_memorydb_user.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_mode" {
  description = "Denotes the user's authentication properties.\n"
  value       = aws_memorydb_user.aws_memorydb_user.authentication_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password_count" {
  description = "The number of passwords belonging to the user."
  value       = aws_memorydb_user.aws_memorydb_user.password_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Whether the user requires a password to authenticate."
  value       = aws_memorydb_user.aws_memorydb_user.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_string" {
  description = "Access permissions string used for this user."
  value       = aws_memorydb_user.aws_memorydb_user.access_string
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the user."
  value       = aws_memorydb_user.aws_memorydb_user.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_mode" {
  description = "Denotes the user's authentication properties.\n"
  value       = aws_memorydb_user.aws_memorydb_user.authentication_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the user."
  value       = aws_memorydb_user.aws_memorydb_user.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  value       = aws_memorydb_user.aws_memorydb_user.minimum_engine_version
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
