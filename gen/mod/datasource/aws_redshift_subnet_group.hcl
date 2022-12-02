datasource "aws_redshift_subnet_group" "aws_redshift_subnet_group" {
  name        = var.name
  subnet_ids  = var.subnet_ids
  arn         = var.arn
  description = var.description
  id          = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Redshift Subnet group Name."
  type        = string
}
variable "name" {
  description = "(Required) Name of the cluster subnet group for which information is requested.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "subnet_ids" {
  description = "An array of VPC subnet IDs."
  type        = string
}
variable "arn" {
  description = "ARN of the Redshift Subnet Group name."
  type        = string
}
variable "description" {
  description = "Description of the Redshift Subnet group."
  type        = string
}
output "arn" {
  description = "ARN of the Redshift Subnet Group name."
  value       = aws_redshift_subnet_group.aws_redshift_subnet_group.arn
}
output "description" {
  description = "Description of the Redshift Subnet group."
  value       = aws_redshift_subnet_group.aws_redshift_subnet_group.description
}
output "id" {
  description = "Redshift Subnet group Name."
  value       = aws_redshift_subnet_group.aws_redshift_subnet_group.id
}
output "name" {
  description = "(Required) Name of the cluster subnet group for which information is requested.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_subnet_group.aws_redshift_subnet_group.name
}
output "subnet_ids" {
  description = "An array of VPC subnet IDs."
  value       = aws_redshift_subnet_group.aws_redshift_subnet_group.subnet_ids
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
