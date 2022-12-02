datasource "aws_memorydb_parameter_group" "aws_memorydb_parameter_group" {
  family      = var.family
  id          = var.id
  name        = var.name
  parameter   = var.parameter
  value       = var.value
  arn         = var.arn
  description = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of the parameter group."
  type        = string
}
variable "family" {
  description = "Engine version that the parameter group can be used with."
  type        = string
}
variable "id" {
  description = "Name of the parameter group."
  type        = string
}
variable "name" {
  description = "Name of the parameter."
  type        = string
}
variable "parameter" {
  description = "Set of user-defined MemoryDB parameters applied by the parameter group.\n"
  type        = string
}
variable "value" {
  description = "Value of the parameter."
  type        = string
}
variable "arn" {
  description = "ARN of the parameter group."
  type        = string
}
output "value" {
  description = "Value of the parameter."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.value
}
output "arn" {
  description = "ARN of the parameter group."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.arn
}
output "description" {
  description = "Description of the parameter group."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.description
}
output "family" {
  description = "Engine version that the parameter group can be used with."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.family
}
output "id" {
  description = "Name of the parameter group."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.id
}
output "name" {
  description = "Name of the parameter."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.name
}
output "parameter" {
  description = "Set of user-defined MemoryDB parameters applied by the parameter group.\n"
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.parameter
}
output "value" {
  description = "Value of the parameter."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.value
}
output "arn" {
  description = "ARN of the parameter group."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.arn
}
output "description" {
  description = "Description of the parameter group."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.description
}
output "family" {
  description = "Engine version that the parameter group can be used with."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.family
}
output "id" {
  description = "Name of the parameter group."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.id
}
output "name" {
  description = "Name of the parameter."
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.name
}
output "parameter" {
  description = "Set of user-defined MemoryDB parameters applied by the parameter group.\n"
  value       = aws_memorydb_parameter_group.aws_memorydb_parameter_group.parameter
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
