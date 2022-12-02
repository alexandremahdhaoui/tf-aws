datasource "aws_efs_access_point" "aws_efs_access_point" {
  path            = var.path
  permissions     = var.permissions
  secondary_gids  = var.secondary_gids
  uid             = var.uid
  access_point_id = var.access_point_id
  gid             = var.gid
  id              = var.id
  owner_gid       = var.owner_gid
  posix_user      = var.posix_user
  arn             = var.arn
  file_system_arn = var.file_system_arn
  file_system_id  = var.file_system_id
  owner_uid       = var.owner_uid
  root_directory  = var.root_directory
  creation_info   = var.creation_info
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_gid" {
  description = "POSIX owner group ID"
  type        = string
}
variable "posix_user" {
  description = ""
  type        = string
}
variable "secondary_gids" {
  description = "Secondary group IDs"
  type        = string
}
variable "uid" {
  description = "User Id"
  type        = string
}
variable "access_point_id" {
  description = "(Required) ID that identifies the file system.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "gid" {
  description = "Group ID"
  type        = string
}
variable "id" {
  description = "ID of the access point."
  type        = string
}
variable "owner_uid" {
  description = "POSIX owner user ID"
  type        = string
}
variable "root_directory" {
  description = ""
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  type        = string
}
variable "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  type        = string
}
variable "path" {
  description = "Path exposed as the root directory"
  type        = string
}
variable "permissions" {
  description = "POSIX permissions mode"
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.arn
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
}
output "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_id
}
output "owner_uid" {
  description = "POSIX owner user ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_uid
}
output "root_directory" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.root_directory
}
output "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  value       = aws_efs_access_point.aws_efs_access_point.creation_info
}
output "path" {
  description = "Path exposed as the root directory"
  value       = aws_efs_access_point.aws_efs_access_point.path
}
output "permissions" {
  description = "POSIX permissions mode"
  value       = aws_efs_access_point.aws_efs_access_point.permissions
}
output "access_point_id" {
  description = "(Required) ID that identifies the file system.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_access_point.aws_efs_access_point.access_point_id
}
output "gid" {
  description = "Group ID"
  value       = aws_efs_access_point.aws_efs_access_point.gid
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "owner_gid" {
  description = "POSIX owner group ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_gid
}
output "posix_user" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.posix_user
}
output "secondary_gids" {
  description = "Secondary group IDs"
  value       = aws_efs_access_point.aws_efs_access_point.secondary_gids
}
output "uid" {
  description = "User Id"
  value       = aws_efs_access_point.aws_efs_access_point.uid
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.arn
}
output "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  value       = aws_efs_access_point.aws_efs_access_point.creation_info
}
output "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_id
}
output "gid" {
  description = "Group ID"
  value       = aws_efs_access_point.aws_efs_access_point.gid
}
output "owner_uid" {
  description = "POSIX owner user ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_uid
}
output "permissions" {
  description = "POSIX permissions mode"
  value       = aws_efs_access_point.aws_efs_access_point.permissions
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "path" {
  description = "Path exposed as the root directory"
  value       = aws_efs_access_point.aws_efs_access_point.path
}
output "posix_user" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.posix_user
}
output "root_directory" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.root_directory
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
}
output "owner_gid" {
  description = "POSIX owner group ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_gid
}
output "secondary_gids" {
  description = "Secondary group IDs"
  value       = aws_efs_access_point.aws_efs_access_point.secondary_gids
}
output "uid" {
  description = "User Id"
  value       = aws_efs_access_point.aws_efs_access_point.uid
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
