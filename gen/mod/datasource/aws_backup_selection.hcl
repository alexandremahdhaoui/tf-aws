datasource "aws_backup_selection" "aws_backup_selection" {
  iam_role_arn = var.iam_role_arn
  name         = var.name
  plan_id      = var.plan_id
  selection_id = var.selection_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "plan_id" {
  description = "(Required) Backup plan ID associated with the selection of resources."
  type        = string
}
variable "selection_id" {
  description = "(Required) Backup selection ID.In addition to all arguments above, the following attributes are available:"
  type        = string
}
variable "iam_role_arn" {
  description = "ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the AWS Backup Developer Guide for additional information about using AWS managed policies or creating custom policies attached to the IAM role."
  type        = string
}
variable "name" {
  description = "Display name of a resource selection document."
  type        = string
}
output "plan_id" {
  description = "(Required) Backup plan ID associated with the selection of resources."
  value       = aws_backup_selection.aws_backup_selection.plan_id
}
output "selection_id" {
  description = "(Required) Backup selection ID.In addition to all arguments above, the following attributes are available:"
  value       = aws_backup_selection.aws_backup_selection.selection_id
}
output "iam_role_arn" {
  description = "ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the AWS Backup Developer Guide for additional information about using AWS managed policies or creating custom policies attached to the IAM role."
  value       = aws_backup_selection.aws_backup_selection.iam_role_arn
}
output "name" {
  description = "Display name of a resource selection document."
  value       = aws_backup_selection.aws_backup_selection.name
}
output "iam_role_arn" {
  description = "ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the AWS Backup Developer Guide for additional information about using AWS managed policies or creating custom policies attached to the IAM role."
  value       = aws_backup_selection.aws_backup_selection.iam_role_arn
}
output "name" {
  description = "Display name of a resource selection document."
  value       = aws_backup_selection.aws_backup_selection.name
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
