datasource "aws_efs_mount_target" "aws_efs_mount_target" {
  availability_zone_id   = var.availability_zone_id
  availability_zone_name = var.availability_zone_name
  dns_name               = var.dns_name
  mount_target_id        = var.mount_target_id
  network_interface_id   = var.network_interface_id
  subnet_id              = var.subnet_id
  access_point_id        = var.access_point_id
  file_system_id         = var.file_system_id
  ip_address             = var.ip_address
  mount_target_dns_name  = var.mount_target_dns_name
  security_groups        = var.security_groups
  file_system_arn        = var.file_system_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "mount_target_id" {
  description = "(Optional) ID or ARN of the mount target that you want to find. It must be included in your request if an access_point_id and file_system_id are not included.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "network_interface_id" {
  description = "The ID of the network interface that Amazon EFS created when it created the mount target."
  type        = string
}
variable "subnet_id" {
  description = "ID of the mount target's subnet."
  type        = string
}
variable "access_point_id" {
  description = "(Optional) ID or ARN of the access point whose mount target that you want to find. It must be included if a file_system_id and mount_target_id are not included."
  type        = string
  default     = ""
}
variable "availability_zone_id" {
  description = "The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in."
  type        = string
}
variable "availability_zone_name" {
  description = "The name of the Availability Zone (AZ) that the mount target resides in."
  type        = string
}
variable "dns_name" {
  description = "DNS name for the EFS file system."
  type        = string
}
variable "security_groups" {
  description = "List of VPC security group IDs attached to the mount target."
  type        = string
}
variable "file_system_arn" {
  description = "Amazon Resource Name of the file system for which the mount target is intended."
  type        = string
}
variable "file_system_id" {
  description = "(Optional) ID or ARN of the file system whose mount target that you want to find. It must be included if an access_point_id and mount_target_id are not included."
  type        = string
  default     = ""
}
variable "ip_address" {
  description = "Address at which the file system may be mounted via the mount target."
  type        = string
}
variable "mount_target_dns_name" {
  description = "The DNS name for the given subnet/AZ per documented convention."
  type        = string
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system for which the mount target is intended."
  value       = aws_efs_mount_target.aws_efs_mount_target.file_system_arn
}
output "file_system_id" {
  description = "(Optional) ID or ARN of the file system whose mount target that you want to find. It must be included if an access_point_id and mount_target_id are not included."
  value       = aws_efs_mount_target.aws_efs_mount_target.file_system_id
}
output "ip_address" {
  description = "Address at which the file system may be mounted via the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.ip_address
}
output "mount_target_dns_name" {
  description = "The DNS name for the given subnet/AZ per documented convention."
  value       = aws_efs_mount_target.aws_efs_mount_target.mount_target_dns_name
}
output "security_groups" {
  description = "List of VPC security group IDs attached to the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.security_groups
}
output "access_point_id" {
  description = "(Optional) ID or ARN of the access point whose mount target that you want to find. It must be included if a file_system_id and mount_target_id are not included."
  value       = aws_efs_mount_target.aws_efs_mount_target.access_point_id
}
output "availability_zone_id" {
  description = "The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in."
  value       = aws_efs_mount_target.aws_efs_mount_target.availability_zone_id
}
output "availability_zone_name" {
  description = "The name of the Availability Zone (AZ) that the mount target resides in."
  value       = aws_efs_mount_target.aws_efs_mount_target.availability_zone_name
}
output "dns_name" {
  description = "DNS name for the EFS file system."
  value       = aws_efs_mount_target.aws_efs_mount_target.dns_name
}
output "mount_target_id" {
  description = "(Optional) ID or ARN of the mount target that you want to find. It must be included in your request if an access_point_id and file_system_id are not included.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_mount_target.aws_efs_mount_target.mount_target_id
}
output "network_interface_id" {
  description = "The ID of the network interface that Amazon EFS created when it created the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.network_interface_id
}
output "subnet_id" {
  description = "ID of the mount target's subnet."
  value       = aws_efs_mount_target.aws_efs_mount_target.subnet_id
}
output "availability_zone_id" {
  description = "The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in."
  value       = aws_efs_mount_target.aws_efs_mount_target.availability_zone_id
}
output "ip_address" {
  description = "Address at which the file system may be mounted via the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.ip_address
}
output "mount_target_dns_name" {
  description = "The DNS name for the given subnet/AZ per documented convention."
  value       = aws_efs_mount_target.aws_efs_mount_target.mount_target_dns_name
}
output "availability_zone_name" {
  description = "The name of the Availability Zone (AZ) that the mount target resides in."
  value       = aws_efs_mount_target.aws_efs_mount_target.availability_zone_name
}
output "dns_name" {
  description = "DNS name for the EFS file system."
  value       = aws_efs_mount_target.aws_efs_mount_target.dns_name
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system for which the mount target is intended."
  value       = aws_efs_mount_target.aws_efs_mount_target.file_system_arn
}
output "network_interface_id" {
  description = "The ID of the network interface that Amazon EFS created when it created the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.network_interface_id
}
output "security_groups" {
  description = "List of VPC security group IDs attached to the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.security_groups
}
output "subnet_id" {
  description = "ID of the mount target's subnet."
  value       = aws_efs_mount_target.aws_efs_mount_target.subnet_id
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
