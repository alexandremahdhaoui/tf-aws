datasource "aws_elasticache_subnet_group" "aws_elasticache_subnet_group" {
  arn         = var.arn
  description = var.description
  id          = var.id
  name        = var.name
  subnet_ids  = var.subnet_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
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
variable "subnet_ids" {
  description = "Set of VPC Subnet ID-s of the subnet group."
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
output "arn" {
  description = "ARN of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the subnet group.In addition, the following attributes are exported:"
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Set of VPC Subnet ID-s of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Set of VPC Subnet ID-s of the subnet group."
  value       = aws_elasticache_subnet_group.aws_elasticache_subnet_group.subnet_ids
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
