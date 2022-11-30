datasource "aws_ebs_snapshot_ids" "aws_ebs_snapshot_ids" {
  filter                 = var.filter
  id                     = var.id
  ids                    = var.ids
  owners                 = var.owners
  restorable_by_user_ids = var.restorable_by_user_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "describe-volumes in the AWS CLI reference."
  type        = string
}
variable "id" {
  description = "AWS Region."
  type        = string
}
variable "ids" {
  description = "Set of EBS snapshot IDs, sorted by creation time in descending order.TimeoutsConfiguration options:"
  type        = string
}
variable "owners" {
  description = "(Optional) Returns the snapshots owned by the specified owner id. Multiple owners can be specified."
  type        = string
}
variable "restorable_by_user_ids" {
  description = "(Optional) One or more AWS accounts IDs that can create volumes from the snapshot."
  type        = string
}
output "restorable_by_user_ids" {
  description = "(Optional) One or more AWS accounts IDs that can create volumes from the snapshot."
  value       = aws_ebs_snapshot_ids.aws_ebs_snapshot_ids.restorable_by_user_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "describe-volumes in the AWS CLI reference."
  value       = aws_ebs_snapshot_ids.aws_ebs_snapshot_ids.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ebs_snapshot_ids.aws_ebs_snapshot_ids.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ids" {
  description = "Set of EBS snapshot IDs, sorted by creation time in descending order.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot_ids.aws_ebs_snapshot_ids.ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owners" {
  description = "(Optional) Returns the snapshots owned by the specified owner id. Multiple owners can be specified."
  value       = aws_ebs_snapshot_ids.aws_ebs_snapshot_ids.owners
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ebs_snapshot_ids.aws_ebs_snapshot_ids.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ids" {
  description = "Set of EBS snapshot IDs, sorted by creation time in descending order.TimeoutsConfiguration options:"
  value       = aws_ebs_snapshot_ids.aws_ebs_snapshot_ids.ids
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
