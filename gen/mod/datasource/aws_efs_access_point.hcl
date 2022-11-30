datasource "aws_efs_access_point" "aws_efs_access_point" {
  access_point_id = var.access_point_id
  file_system_arn = var.file_system_arn
  permissions     = var.permissions
  uid             = var.uid
  id              = var.id
  root_directory  = var.root_directory
  file_system_id  = var.file_system_id
  owner_uid       = var.owner_uid
  posix_user      = var.posix_user
  secondary_gids  = var.secondary_gids
  arn             = var.arn
  creation_info   = var.creation_info
  gid             = var.gid
  owner_gid       = var.owner_gid
  path            = var.path
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  type        = string
}
variable "owner_uid" {
  description = "POSIX owner user ID"
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
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  type        = string
}
variable "gid" {
  description = "Group ID"
  type        = string
}
variable "owner_gid" {
  description = "POSIX owner group ID"
  type        = string
}
variable "path" {
  description = "Path exposed as the root directory"
  type        = string
}
variable "access_point_id" {
  description = "(Required) ID that identifies the file system.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "permissions" {
  description = "POSIX permissions mode"
  type        = string
}
variable "uid" {
  description = "User Id"
  type        = string
}
variable "id" {
  description = "ID of the access point."
  type        = string
}
variable "root_directory" {
  description = ""
  type        = string
}
output "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_uid" {
  description = "POSIX owner user ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_uid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "posix_user" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.posix_user
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary_gids" {
  description = "Secondary group IDs"
  value       = aws_efs_access_point.aws_efs_access_point.secondary_gids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  value       = aws_efs_access_point.aws_efs_access_point.creation_info
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gid" {
  description = "Group ID"
  value       = aws_efs_access_point.aws_efs_access_point.gid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_gid" {
  description = "POSIX owner group ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_gid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "Path exposed as the root directory"
  value       = aws_efs_access_point.aws_efs_access_point.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_point_id" {
  description = "(Required) ID that identifies the file system.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_access_point.aws_efs_access_point.access_point_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permissions" {
  description = "POSIX permissions mode"
  value       = aws_efs_access_point.aws_efs_access_point.permissions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uid" {
  description = "User Id"
  value       = aws_efs_access_point.aws_efs_access_point.uid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_directory" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.root_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_uid" {
  description = "POSIX owner user ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_uid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "posix_user" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.posix_user
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary_gids" {
  description = "Secondary group IDs"
  value       = aws_efs_access_point.aws_efs_access_point.secondary_gids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_info" {
  description = "Single element list containing information on the creation permissions of the directory\n"
  value       = aws_efs_access_point.aws_efs_access_point.creation_info
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gid" {
  description = "Group ID"
  value       = aws_efs_access_point.aws_efs_access_point.gid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_gid" {
  description = "POSIX owner group ID"
  value       = aws_efs_access_point.aws_efs_access_point.owner_gid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "Path exposed as the root directory"
  value       = aws_efs_access_point.aws_efs_access_point.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_directory" {
  description = ""
  value       = aws_efs_access_point.aws_efs_access_point.root_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permissions" {
  description = "POSIX permissions mode"
  value       = aws_efs_access_point.aws_efs_access_point.permissions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uid" {
  description = "User Id"
  value       = aws_efs_access_point.aws_efs_access_point.uid
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
