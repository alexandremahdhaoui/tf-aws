datasource "aws_memorydb_subnet_group" "aws_memorydb_subnet_group" {
  name        = var.name
  subnet_ids  = var.subnet_ids
  vpc_id      = var.vpc_id
  arn         = var.arn
  description = var.description
  id          = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "subnet_ids" {
  description = "Set of VPC Subnet ID-s of the subnet group."
  type        = string
}
variable "vpc_id" {
  description = "VPC in which the subnet group exists."
  type        = string
}
variable "arn" {
  description = "ARN of the subnet group."
  type        = string
}
variable "description" {
  description = "Description of the subnet group."
  type        = string
}
variable "id" {
  description = "Name of the subnet group."
  type        = string
}
variable "name" {
  description = "(Required) Name of the subnet group.In addition, the following attributes are exported:"
  type        = string
}
output "name" {
  description = "(Required) Name of the subnet group.In addition, the following attributes are exported:"
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.name
}
output "subnet_ids" {
  description = "Set of VPC Subnet ID-s of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.subnet_ids
}
output "vpc_id" {
  description = "VPC in which the subnet group exists."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.vpc_id
}
output "arn" {
  description = "ARN of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.arn
}
output "description" {
  description = "Description of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.description
}
output "id" {
  description = "Name of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.id
}
output "id" {
  description = "Name of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.id
}
output "subnet_ids" {
  description = "Set of VPC Subnet ID-s of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.subnet_ids
}
output "vpc_id" {
  description = "VPC in which the subnet group exists."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.vpc_id
}
output "arn" {
  description = "ARN of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.arn
}
output "description" {
  description = "Description of the subnet group."
  value       = aws_memorydb_subnet_group.aws_memorydb_subnet_group.description
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
