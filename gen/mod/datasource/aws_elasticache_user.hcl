datasource "aws_elasticache_user" "aws_elasticache_user" {
  user_id   = var.user_id
  user_name = var.user_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "user_id" {
  description = "Identifier for the user."
  type        = string
}
variable "user_name" {
  description = "User name of the user."
  type        = string
}
output "user_name" {
  description = "User name of the user."
  value       = aws_elasticache_user.aws_elasticache_user.user_name
}
output "user_id" {
  description = "Identifier for the user."
  value       = aws_elasticache_user.aws_elasticache_user.user_id
}
output "user_id" {
  description = "Identifier for the user."
  value       = aws_elasticache_user.aws_elasticache_user.user_id
}
output "user_name" {
  description = "User name of the user."
  value       = aws_elasticache_user.aws_elasticache_user.user_name
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
