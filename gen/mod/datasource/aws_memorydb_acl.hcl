datasource "aws_memorydb_acl" "aws_memorydb_acl" {
  arn                    = var.arn
  id                     = var.id
  minimum_engine_version = var.minimum_engine_version
  name                   = var.name
  tags                   = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "Map of tags assigned to the ACL."
  type        = string
}
variable "arn" {
  description = "ARN of the ACL."
  type        = string
}
variable "id" {
  description = "Name of the ACL."
  type        = string
}
variable "minimum_engine_version" {
  description = "The minimum engine version supported by the ACL."
  type        = string
}
variable "name" {
  description = "(Required) Name of the ACL.In addition, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "ARN of the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_engine_version" {
  description = "The minimum engine version supported by the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.minimum_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the ACL.In addition, the following attributes are exported:"
  value       = aws_memorydb_acl.aws_memorydb_acl.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags assigned to the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_engine_version" {
  description = "The minimum engine version supported by the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.minimum_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags assigned to the ACL."
  value       = aws_memorydb_acl.aws_memorydb_acl.tags
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
