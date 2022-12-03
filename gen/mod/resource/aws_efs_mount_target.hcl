resource "aws_efs_mount_target" "aws_efs_mount_target" {
  dns_name               = var.dns_name
  file_system_arn        = var.file_system_arn
  ip_address             = var.ip_address
  subnet_id              = var.subnet_id
  availability_zone_id   = var.availability_zone_id
  availability_zone_name = var.availability_zone_name
  mount_target_dns_name  = var.mount_target_dns_name
  network_interface_id   = var.network_interface_id
  security_groups        = var.security_groups
  file_system_id         = var.file_system_id
  id                     = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
  description = "The DNS name for the EFS file system."
  type        = string
}
variable "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "ip_address" {
  description = ""
  type        = string
}
variable "subnet_id" {
  description = "(Required) The ID of the subnet to add the mount target in."
  type        = string
}
variable "file_system_id" {
  description = "(Required) The ID of the file system for which the mount target is intended."
  type        = string
}
variable "id" {
  description = "The ID of the mount target."
  type        = string
}
variable "mount_target_dns_name" {
  description = "The DNS name for the given subnet/AZ per documented convention."
  type        = string
}
variable "network_interface_id" {
  description = "The ID of the network interface that Amazon EFS created when it created the mount target."
  type        = string
}
variable "security_groups" {
  description = "~> strongNote: The dns_name and mount_target_dns_nameUsing DNS with Your VPCVPC resource in Terraform for more information.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "file_system_id" {
  description = "(Required) The ID of the file system for which the mount target is intended."
  value       = aws_efs_mount_target.aws_efs_mount_target.file_system_id
}
output "id" {
  description = "The ID of the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.id
}
output "mount_target_dns_name" {
  description = "The DNS name for the given subnet/AZ per documented convention."
  value       = aws_efs_mount_target.aws_efs_mount_target.mount_target_dns_name
}
output "network_interface_id" {
  description = "The ID of the network interface that Amazon EFS created when it created the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.network_interface_id
}
output "security_groups" {
  description = "~> strongNote: The dns_name and mount_target_dns_nameUsing DNS with Your VPCVPC resource in Terraform for more information.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_mount_target.aws_efs_mount_target.security_groups
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
  description = "The DNS name for the EFS file system."
  value       = aws_efs_mount_target.aws_efs_mount_target.dns_name
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_mount_target.aws_efs_mount_target.file_system_arn
}
output "ip_address" {
  description = ""
  value       = aws_efs_mount_target.aws_efs_mount_target.ip_address
}
output "subnet_id" {
  description = "(Required) The ID of the subnet to add the mount target in."
  value       = aws_efs_mount_target.aws_efs_mount_target.subnet_id
}
output "dns_name" {
  description = "The DNS name for the EFS file system."
  value       = aws_efs_mount_target.aws_efs_mount_target.dns_name
}
output "file_system_arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_mount_target.aws_efs_mount_target.file_system_arn
}
output "id" {
  description = "The ID of the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.id
}
output "mount_target_dns_name" {
  description = "The DNS name for the given subnet/AZ per documented convention."
  value       = aws_efs_mount_target.aws_efs_mount_target.mount_target_dns_name
}
output "network_interface_id" {
  description = "The ID of the network interface that Amazon EFS created when it created the mount target."
  value       = aws_efs_mount_target.aws_efs_mount_target.network_interface_id
}
output "owner_id" {
  description = "AWS account ID that owns the resource."
  value       = aws_efs_mount_target.aws_efs_mount_target.owner_id
}
output "availability_zone_id" {
  description = "The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in."
  value       = aws_efs_mount_target.aws_efs_mount_target.availability_zone_id
}
output "availability_zone_name" {
  description = "The name of the Availability Zone (AZ) that the mount target resides in."
  value       = aws_efs_mount_target.aws_efs_mount_target.availability_zone_name
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
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_efs_mount_target"
      "kind/version"                = "v0.1.0"
    }
  }
}
