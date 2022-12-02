datasource "aws_backup_vault" "aws_backup_vault" {
  arn             = var.arn
  kms_key_arn     = var.kms_key_arn
  name            = var.name
  recovery_points = var.recovery_points
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "recovery_points" {
  description = "Number of recovery points that are stored in a backup vault."
  type        = string
}
variable "arn" {
  description = "ARN of the vault."
  type        = string
}
variable "kms_key_arn" {
  description = "Server-side encryption key that is used to protect your backups."
  type        = string
}
variable "name" {
  description = "(Required) Name of the backup vault.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "ARN of the vault."
  value       = aws_backup_vault.aws_backup_vault.arn
}
output "kms_key_arn" {
  description = "Server-side encryption key that is used to protect your backups."
  value       = aws_backup_vault.aws_backup_vault.kms_key_arn
}
output "name" {
  description = "(Required) Name of the backup vault.In addition to all arguments above, the following attributes are exported:"
  value       = aws_backup_vault.aws_backup_vault.name
}
output "recovery_points" {
  description = "Number of recovery points that are stored in a backup vault."
  value       = aws_backup_vault.aws_backup_vault.recovery_points
}
output "arn" {
  description = "ARN of the vault."
  value       = aws_backup_vault.aws_backup_vault.arn
}
output "kms_key_arn" {
  description = "Server-side encryption key that is used to protect your backups."
  value       = aws_backup_vault.aws_backup_vault.kms_key_arn
}
output "recovery_points" {
  description = "Number of recovery points that are stored in a backup vault."
  value       = aws_backup_vault.aws_backup_vault.recovery_points
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
