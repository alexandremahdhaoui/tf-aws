datasource "aws_efs_access_points" "aws_efs_access_points" {
  arns           = var.arns
  file_system_id = var.file_system_id
  id             = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arns" {
  description = "Set of Amazon Resource Names (ARNs)."
  type        = string
}
variable "file_system_id" {
  description = "(Required) EFS File System identifier.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "EFS File System identifier."
  type        = string
}
output "arns" {
  description = "Set of Amazon Resource Names (ARNs)."
  value       = aws_efs_access_points.aws_efs_access_points.arns
}
output "file_system_id" {
  description = "(Required) EFS File System identifier.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_access_points.aws_efs_access_points.file_system_id
}
output "id" {
  description = "EFS File System identifier."
  value       = aws_efs_access_points.aws_efs_access_points.id
}
output "arns" {
  description = "Set of Amazon Resource Names (ARNs)."
  value       = aws_efs_access_points.aws_efs_access_points.arns
}
output "id" {
  description = "EFS File System identifier."
  value       = aws_efs_access_points.aws_efs_access_points.id
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
