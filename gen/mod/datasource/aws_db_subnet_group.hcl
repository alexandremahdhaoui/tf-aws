datasource "aws_db_subnet_group" "aws_db_subnet_group" {
  status                  = var.status
  subnet_ids              = var.subnet_ids
  supported_network_types = var.supported_network_types
  arn                     = var.arn
  description             = var.description
  name                    = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN for the DB subnet group."
  type        = string
}
variable "description" {
  description = "Provides the description of the DB subnet group."
  type        = string
}
variable "name" {
  description = "(Required) Name of the RDS database subnet group.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "status" {
  description = "Provides the status of the DB subnet group."
  type        = string
}
variable "subnet_ids" {
  description = "Contains a list of subnet identifiers."
  type        = string
}
variable "supported_network_types" {
  description = "The network type of the DB subnet group."
  type        = string
}
output "arn" {
  description = "ARN for the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Provides the description of the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the RDS database subnet group.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_subnet_group.aws_db_subnet_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Provides the status of the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Contains a list of subnet identifiers."
  value       = aws_db_subnet_group.aws_db_subnet_group.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "supported_network_types" {
  description = "The network type of the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.supported_network_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN for the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Provides the description of the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Provides the status of the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Contains a list of subnet identifiers."
  value       = aws_db_subnet_group.aws_db_subnet_group.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "supported_network_types" {
  description = "The network type of the DB subnet group."
  value       = aws_db_subnet_group.aws_db_subnet_group.supported_network_types
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
