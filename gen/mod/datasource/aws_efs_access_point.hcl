datasource "aws_efs_access_point" "aws_efs_access_point" {
  permissions     = var.permissions
  secondary_gids  = var.secondary_gids
  owner_uid       = var.owner_uid
  creation_info   = var.creation_info
  root_directory  = var.root_directory
  access_point_id = var.access_point_id
  file_system_id  = var.file_system_id
  id              = var.id
  owner_gid       = var.owner_gid
  path            = var.path
  posix_user      = var.posix_user
  uid             = var.uid
  arn             = var.arn
  gid             = var.gid
  file_system_arn = var.file_system_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_uid" {
  description = "POSIX owner user ID"
  type        = string
}
variable "permissions" {
  description = "POSIX permissions mode"
  type        = string
}
variable "secondary_gids" {
  description = "Secondary group IDs"
  type        = string
}
variable "access_point_id" {
  description = "(Required) ID that identifies the file system.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  type        = string
}
variable "root_directory" {
  description = ""
  type        = string
}
variable "path" {
  description = "Path exposed as the root directory"
  type        = string
}
variable "posix_user" {
  description = "Single element list containing operating system user and group applied to all file system requests made using the access point.\n"
  type        = string
}
variable "uid" {
  description = "User Id"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  type        = string
}
variable "id" {
  description = "ID of the access point."
  type        = string
}
variable "owner_gid" {
  description = "POSIX owner group ID"
  type        = string
}
variable "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "gid" {
  description = "Group ID"
  type        = string
}
output "uid" {
  description = "User Id"
  value       = aws_efs_access_point.aws_efs_access_point.uid
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.arn
}
output "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_id
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "owner_gid" {
  description = "POSIX owner group ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_gid
}
output "path" {
  description = "Path exposed as the root directory"
  value       = aws_efs_access_point.aws_efs_access_point.path
}
output "posix_user" {
  description = "Single element list containing operating system user and group applied to all file system requests made using the access point.\n"
  value       = aws_efs_access_point.aws_efs_access_point.posix_user
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
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
output "secondary_gids" {
  description = "Secondary group IDs"
  value       = aws_efs_access_point.aws_efs_access_point.secondary_gids
}
output "access_point_id" {
  description = "(Required) ID that identifies the file system.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_access_point.aws_efs_access_point.access_point_id
}
output "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  value       = aws_efs_access_point.aws_efs_access_point.creation_info
}
output "root_directory" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.root_directory
}
output "gid" {
  description = "Group ID"
  value       = aws_efs_access_point.aws_efs_access_point.gid
}
output "owner_gid" {
  description = "POSIX owner group ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_gid
}
output "owner_uid" {
  description = "POSIX owner user ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_uid
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
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
}
output "posix_user" {
  description = "Single element list containing operating system user and group applied to all file system requests made using the access point.\n"
  value       = aws_efs_access_point.aws_efs_access_point.posix_user
}
output "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_id
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "permissions" {
  description = "POSIX permissions mode"
  value       = aws_efs_access_point.aws_efs_access_point.permissions
}
output "path" {
  description = "Path exposed as the root directory"
  value       = aws_efs_access_point.aws_efs_access_point.path
}
output "root_directory" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.root_directory
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
