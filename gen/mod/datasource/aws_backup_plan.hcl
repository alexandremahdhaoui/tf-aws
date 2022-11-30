datasource "aws_backup_plan" "aws_backup_plan" {
  plan_id = var.plan_id
  tags    = var.tags
  arn     = var.arn
  name    = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "plan_id" {
  description = "(Required) Backup plan ID.In addition to the arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "Metadata that you can assign to help organize the plans you create."
  type        = string
}
variable "arn" {
  description = "ARN of the backup plan."
  type        = string
}
variable "name" {
  description = "Display name of a backup plan."
  type        = string
}
output "tags" {
  description = "Metadata that you can assign to help organize the plans you create."
  value       = aws_backup_plan.aws_backup_plan.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the backup plan."
  value       = aws_backup_plan.aws_backup_plan.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Display name of a backup plan."
  value       = aws_backup_plan.aws_backup_plan.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "plan_id" {
  description = "(Required) Backup plan ID.In addition to the arguments above, the following attributes are exported:"
  value       = aws_backup_plan.aws_backup_plan.plan_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the backup plan."
  value       = aws_backup_plan.aws_backup_plan.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Display name of a backup plan."
  value       = aws_backup_plan.aws_backup_plan.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Metadata that you can assign to help organize the plans you create."
  value       = aws_backup_plan.aws_backup_plan.tags
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
