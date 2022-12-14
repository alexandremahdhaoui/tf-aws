datasource "aws_efs_file_system" "aws_efs_file_system" {
  arn                             = var.arn
  availability_zone_id            = var.availability_zone_id
  availability_zone_name          = var.availability_zone_name
  creation_token                  = var.creation_token
  dns_name                        = var.dns_name
  encrypted                       = var.encrypted
  file_system_id                  = var.file_system_id
  lifecycle_policy                = var.lifecycle_policy
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  tags                            = var.tags
  kms_key_id                      = var.kms_key_id
  performance_mode                = var.performance_mode
  throughput_mode                 = var.throughput_mode
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "file_system_id" {
  description = "(Optional) ID that identifies the file system (e.g., fs-ccfc0d65)."
  type        = string
  default     = ""
}
variable "lifecycle_policy" {
  description = "File system lifecycle policy object."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "availability_zone_id" {
  description = "The identifier of the Availability Zone in which the file system's One Zone storage classes exist."
  type        = string
}
variable "availability_zone_name" {
  description = "The Availability Zone name in which the file system's One Zone storage classes exist."
  type        = string
}
variable "creation_token" {
  description = "(Optional) Restricts the list to the file system with this creation token."
  type        = string
  default     = ""
}
variable "dns_name" {
  description = "DNS name for the filesystem per documented convention."
  type        = string
}
variable "encrypted" {
  description = "Whether EFS is encrypted."
  type        = string
}
variable "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, that you want to provision for the file system."
  type        = string
}
variable "tags" {
  description = " -A map of tags to assign to the file system."
  type        = string
}
variable "kms_key_id" {
  description = "ARN for the KMS encryption key."
  type        = string
}
variable "performance_mode" {
  description = "File system performance mode."
  type        = string
}
variable "throughput_mode" {
  description = "Throughput mode for the file system."
  type        = string
}
output "availability_zone_id" {
  description = "The identifier of the Availability Zone in which the file system's One Zone storage classes exist."
  value       = aws_efs_file_system.aws_efs_file_system.availability_zone_id
}
output "availability_zone_name" {
  description = "The Availability Zone name in which the file system's One Zone storage classes exist."
  value       = aws_efs_file_system.aws_efs_file_system.availability_zone_name
}
output "creation_token" {
  description = "(Optional) Restricts the list to the file system with this creation token."
  value       = aws_efs_file_system.aws_efs_file_system.creation_token
}
output "dns_name" {
  description = "DNS name for the filesystem per documented convention."
  value       = aws_efs_file_system.aws_efs_file_system.dns_name
}
output "encrypted" {
  description = "Whether EFS is encrypted."
  value       = aws_efs_file_system.aws_efs_file_system.encrypted
}
output "file_system_id" {
  description = "(Optional) ID that identifies the file system (e.g., fs-ccfc0d65)."
  value       = aws_efs_file_system.aws_efs_file_system.file_system_id
}
output "lifecycle_policy" {
  description = "File system lifecycle policy object."
  value       = aws_efs_file_system.aws_efs_file_system.lifecycle_policy
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_file_system.aws_efs_file_system.arn
}
output "tags" {
  description = " -A map of tags to assign to the file system."
  value       = aws_efs_file_system.aws_efs_file_system.tags
}
output "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, that you want to provision for the file system."
  value       = aws_efs_file_system.aws_efs_file_system.provisioned_throughput_in_mibps
}
output "performance_mode" {
  description = "File system performance mode."
  value       = aws_efs_file_system.aws_efs_file_system.performance_mode
}
output "throughput_mode" {
  description = "Throughput mode for the file system."
  value       = aws_efs_file_system.aws_efs_file_system.throughput_mode
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_efs_file_system.aws_efs_file_system.kms_key_id
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_efs_file_system.aws_efs_file_system.kms_key_id
}
output "performance_mode" {
  description = "File system performance mode."
  value       = aws_efs_file_system.aws_efs_file_system.performance_mode
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_file_system.aws_efs_file_system.arn
}
output "availability_zone_id" {
  description = "The identifier of the Availability Zone in which the file system's One Zone storage classes exist."
  value       = aws_efs_file_system.aws_efs_file_system.availability_zone_id
}
output "availability_zone_name" {
  description = "The Availability Zone name in which the file system's One Zone storage classes exist."
  value       = aws_efs_file_system.aws_efs_file_system.availability_zone_name
}
output "dns_name" {
  description = "DNS name for the filesystem per documented convention."
  value       = aws_efs_file_system.aws_efs_file_system.dns_name
}
output "encrypted" {
  description = "Whether EFS is encrypted."
  value       = aws_efs_file_system.aws_efs_file_system.encrypted
}
output "lifecycle_policy" {
  description = "File system lifecycle policy object."
  value       = aws_efs_file_system.aws_efs_file_system.lifecycle_policy
}
output "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, that you want to provision for the file system."
  value       = aws_efs_file_system.aws_efs_file_system.provisioned_throughput_in_mibps
}
output "tags" {
  description = " -A map of tags to assign to the file system."
  value       = aws_efs_file_system.aws_efs_file_system.tags
}
output "throughput_mode" {
  description = "Throughput mode for the file system."
  value       = aws_efs_file_system.aws_efs_file_system.throughput_mode
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
