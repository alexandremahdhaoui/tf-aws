datasource "aws_fsx_openzfs_snapshot" "aws_fsx_openzfs_snapshot" {
  arn           = var.arn
  creation_time = var.creation_time
  filter        = var.filter
  most_recent   = var.most_recent
  name          = var.name
  snapshot_ids  = var.snapshot_ids
  id            = var.id
  snapshot_id   = var.snapshot_id
  tags          = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Identifier of the snapshot, e.g., fsvolsnap-12345678"
  type        = string
}
variable "snapshot_id" {
  description = "ID of the snapshot."
  type        = string
}
variable "tags" {
  description = "List of Tag values, with a maximum of 50 elements."
  type        = string
}
variable "snapshot_ids" {
  description = "(Optional) Returns information on a specific snapshot_id."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name of the snapshot."
  type        = string
}
variable "creation_time" {
  description = "Time that the resource was created."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more name/value pairs to filter off of. The\nsupported names are file-system-id or volume-id.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "most_recent" {
  description = "(Optional) If more than one result is returned, use the most recent snapshot."
  type        = string
  default     = ""
}
variable "name" {
  description = "Name of the snapshot."
  type        = string
}
output "name" {
  description = "Name of the snapshot."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.name
}
output "snapshot_ids" {
  description = "(Optional) Returns information on a specific snapshot_id."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.snapshot_ids
}
output "arn" {
  description = "Amazon Resource Name of the snapshot."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.arn
}
output "creation_time" {
  description = "Time that the resource was created."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.creation_time
}
output "filter" {
  description = "(Optional) One or more name/value pairs to filter off of. The\nsupported names are file-system-id or volume-id.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.filter
}
output "most_recent" {
  description = "(Optional) If more than one result is returned, use the most recent snapshot."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.most_recent
}
output "id" {
  description = "Identifier of the snapshot, e.g., fsvolsnap-12345678"
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.id
}
output "snapshot_id" {
  description = "ID of the snapshot."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.snapshot_id
}
output "tags" {
  description = "List of Tag values, with a maximum of 50 elements."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.tags
}
output "arn" {
  description = "Amazon Resource Name of the snapshot."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.arn
}
output "creation_time" {
  description = "Time that the resource was created."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.creation_time
}
output "id" {
  description = "Identifier of the snapshot, e.g., fsvolsnap-12345678"
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.id
}
output "name" {
  description = "Name of the snapshot."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.name
}
output "snapshot_id" {
  description = "ID of the snapshot."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.snapshot_id
}
output "tags" {
  description = "List of Tag values, with a maximum of 50 elements."
  value       = aws_fsx_openzfs_snapshot.aws_fsx_openzfs_snapshot.tags
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
