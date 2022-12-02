resource "aws_fsx_openzfs_volume" "aws_fsx_openzfs_volume" {
  parent_volume_id                 = var.parent_volume_id
  user_and_group_quotas            = var.user_and_group_quotas
  client_configurations            = var.client_configurations
  options                          = var.options
  data_compression_type            = var.data_compression_type
  id                               = var.id
  storage_capacity_reservation_gib = var.storage_capacity_reservation_gib
  tags                             = var.tags
  tags_all                         = var.tags_all
  Type                             = var.Type
  arn                              = var.arn
  name                             = var.name
  nfs_exports                      = var.nfs_exports
  storage_capacity_quota_gib       = var.storage_capacity_quota_gib
  update                           = var.update
  clients                          = var.clients
  copy_tags_to_snapshots           = var.copy_tags_to_snapshots
  read_only                        = var.read_only
  record_size_kib                  = var.record_size_kib
  create                           = var.create
  origin_snapshot                  = var.origin_snapshot
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "clients" {
  description = "(Required) - A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client."
  type        = string
}
variable "copy_tags_to_snapshots" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character."
  type        = string
}
variable "nfs_exports" {
  description = "(Optional) NFS export configuration for the root volume. Exactly 1 item. See NFS Exports Below."
  type        = string
  default     = ""
}
variable "storage_capacity_quota_gib" {
  description = "(Required) - The amount of storage that the user or group can use in gibibytes (GiB). Valid values between 0 and 2147483647"
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "origin_snapshot" {
  description = "(Optional) The ARN of the source snapshot to create the volume from."
  type        = string
  default     = ""
}
variable "read_only" {
  description = "(Optional) specifies whether the volume is read-only. Default is false."
  type        = string
  default     = ""
}
variable "record_size_kib" {
  description = "(Optional) The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are 4, 8, 16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB."
  type        = string
  default     = ""
}
variable "client_configurations" {
  description = "(Required) - A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See [Client Configurations](#client configurations) Below.Client Configurations"
  type        = string
}
variable "options" {
  description = "(Required) -  The options to use when mounting the file system. Maximum of 20 items. See the Linix NFS exports man page for more information. crossmount and sync are used by default.User and Group Quotas"
  type        = string
}
variable "parent_volume_id" {
  description = "(Required) The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the aws_fsx_openzfs_file_system resource with the root_volume_id or the id property of another aws_fsx_openzfs_volume."
  type        = string
}
variable "user_and_group_quotas" {
  description = "(Optional) - Specify how much storage users or groups can use on the volume. Maximum of 100 items. See User and Group Quotas Below."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.NFS Exports"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "Type" {
  description = "(Required) - A value that specifies whether the quota applies to a user or group. Valid values are USER or GROUP.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "data_compression_type" {
  description = "(Optional) Method used to compress the data on the volume. Valid values are NONE or ZSTD. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume."
  type        = string
  default     = ""
}
variable "id" {
  description = "Identifier of the file system, e.g., fsvol-12345678"
  type        = string
}
variable "storage_capacity_reservation_gib" {
  description = "  - (Optional) The amount of storage in gibibytes (GiB) to reserve from the parent volume."
  type        = string
  default     = ""
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
output "record_size_kib" {
  description = "(Optional) The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are 4, 8, 16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.record_size_kib
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.create
}
output "origin_snapshot" {
  description = "(Optional) The ARN of the source snapshot to create the volume from."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.origin_snapshot
}
output "read_only" {
  description = "(Optional) specifies whether the volume is read-only. Default is false."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.read_only
}
output "user_and_group_quotas" {
  description = "(Optional) - Specify how much storage users or groups can use on the volume. Maximum of 100 items. See User and Group Quotas Below."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.user_and_group_quotas
}
output "client_configurations" {
  description = "(Required) - A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See [Client Configurations](#client configurations) Below.Client Configurations"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.client_configurations
}
output "options" {
  description = "(Required) -  The options to use when mounting the file system. Maximum of 20 items. See the Linix NFS exports man page for more information. crossmount and sync are used by default.User and Group Quotas"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.options
}
output "parent_volume_id" {
  description = "(Required) The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the aws_fsx_openzfs_file_system resource with the root_volume_id or the id property of another aws_fsx_openzfs_volume."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.parent_volume_id
}
output "id" {
  description = "Identifier of the file system, e.g., fsvol-12345678"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.id
}
output "storage_capacity_reservation_gib" {
  description = "  - (Optional) The amount of storage in gibibytes (GiB) to reserve from the parent volume."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.storage_capacity_reservation_gib
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.NFS Exports"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.tags_all
}
output "Type" {
  description = "(Required) - A value that specifies whether the quota applies to a user or group. Valid values are USER or GROUP.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.Type
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.arn
}
output "data_compression_type" {
  description = "(Optional) Method used to compress the data on the volume. Valid values are NONE or ZSTD. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.data_compression_type
}
output "nfs_exports" {
  description = "(Optional) NFS export configuration for the root volume. Exactly 1 item. See NFS Exports Below."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.nfs_exports
}
output "storage_capacity_quota_gib" {
  description = "(Required) - The amount of storage that the user or group can use in gibibytes (GiB). Valid values between 0 and 2147483647"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.storage_capacity_quota_gib
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.update
}
output "clients" {
  description = "(Required) - A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.clients
}
output "copy_tags_to_snapshots" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.copy_tags_to_snapshots
}
output "name" {
  description = "(Required) The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.tags_all
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.update
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.delete
}
output "id" {
  description = "Identifier of the file system, e.g., fsvol-12345678"
  value       = aws_fsx_openzfs_volume.aws_fsx_openzfs_volume.id
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
      "kind/name"                   = "aws_fsx_openzfs_volume"
      "kind/version"                = "v0.1.0"
    }
  }
}
