resource "aws_datasync_location_fsx_openzfs_file_system" "aws_datasync_location_fsx_openzfs_file_system" {
  tags_all            = var.tags_all
  uri                 = var.uri
  version             = var.version
  protocol            = var.protocol
  fsx_filesystem_arn  = var.fsx_filesystem_arn
  id                  = var.id
  mount_options       = var.mount_options
  nfs                 = var.nfs
  security_group_arns = var.security_group_arns
  subdirectory        = var.subdirectory
  tags                = var.tags
  arn                 = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "subdirectory" {
  description = "(Optional) Subdirectory to perform actions as source or destination. Must start with /fsx."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.protocol"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "fsx_filesystem_arn" {
  description = "(Required) The Amazon Resource Name (ARN) for the FSx for OpenZfs file system."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "mount_options" {
  description = "(Required) Represents the mount options that are available for DataSync to access an NFS location. See below.mount_options"
  type        = string
}
variable "nfs" {
  description = "(Required) Represents the Network File System (NFS) protocol that DataSync uses to access your FSx for OpenZFS file system. See below.nfs"
  type        = string
}
variable "security_group_arns" {
  description = "(Optional) The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system."
  type        = string
}
variable "protocol" {
  description = "(Required) The type of protocol that DataSync uses to access your file system. See below."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "uri" {
  description = "The URL of the FSx for openzfs location that was described."
  type        = string
}
variable "version" {
  description = "(Optional) The specific NFS version that you want DataSync to use for mounting your NFS share. Valid values: AUTOMATIC, NFS3, NFS4_0 and NFS4_1. Default: AUTOMATICIn addition to all arguments above, the following attributes are exported:"
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
output "protocol" {
  description = "(Required) The type of protocol that DataSync uses to access your file system. See below."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uri" {
  description = "The URL of the FSx for openzfs location that was described."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "(Optional) The specific NFS version that you want DataSync to use for mounting your NFS share. Valid values: AUTOMATIC, NFS3, NFS4_0 and NFS4_1. Default: AUTOMATICIn addition to all arguments above, the following attributes are exported:"
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_arns" {
  description = "(Optional) The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.security_group_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subdirectory" {
  description = "(Optional) Subdirectory to perform actions as source or destination. Must start with /fsx."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.subdirectory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.protocol"
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fsx_filesystem_arn" {
  description = "(Required) The Amazon Resource Name (ARN) for the FSx for OpenZfs file system."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.fsx_filesystem_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mount_options" {
  description = "(Required) Represents the mount options that are available for DataSync to access an NFS location. See below.mount_options"
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.mount_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nfs" {
  description = "(Required) Represents the Network File System (NFS) protocol that DataSync uses to access your FSx for OpenZFS file system. See below.nfs"
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.nfs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_time" {
  description = "The time that the FSx for openzfs location was created."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.creation_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uri" {
  description = "The URL of the FSx for openzfs location that was described."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_fsx_openzfs_file_system.aws_datasync_location_fsx_openzfs_file_system.arn
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
      "kind/name"                   = "aws_datasync_location_fsx_openzfs_file_system"
      "kind/version"                = "v0.1.0"
    }
  }
}
