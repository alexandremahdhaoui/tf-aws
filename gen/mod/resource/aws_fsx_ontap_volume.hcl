resource "aws_fsx_ontap_volume" "aws_fsx_ontap_volume" {
  cooling_policy             = var.cooling_policy
  create                     = var.create
  size_in_megabytes          = var.size_in_megabytes
  storage_virtual_machine_id = var.storage_virtual_machine_id
  tags                       = var.tags
  ontap_volume_type          = var.ontap_volume_type
  uuid                       = var.uuid
  arn                        = var.arn
  file_system_id             = var.file_system_id
  flexcache_endpoint_type    = var.flexcache_endpoint_type
  id                         = var.id
  name                       = var.name
  volume_type                = var.volume_type
  delete                     = var.delete
  junction_path              = var.junction_path
  security_style             = var.security_style
  storage_efficiency_enabled = var.storage_efficiency_enabled
  tags_all                   = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "junction_path" {
  description = "(Required) Specifies the location in the storage virtual machine's namespace where the volume is mounted. The junction_path must have a leading forward slash, such as /vol3"
  type        = string
}
variable "security_style" {
  description = "(Optional) Specifies the volume security style, Valid values are UNIX, NTFS, and MIXED. Default value is UNIX."
  type        = string
}
variable "storage_efficiency_enabled" {
  description = "(Required) Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "volume_type" {
  description = "The type of volume, currently the only valid value is ONTAP.TimeoutsConfiguration options:"
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "size_in_megabytes" {
  description = "(Required) Specifies the size of the volume, in megabytes (MB), that you are creating."
  type        = string
}
variable "cooling_policy" {
  description = "(Optional) Specifies the number of days that user data in a volume must remain inactive before it is considered \"cold\" and moved to the capacity pool. Used with AUTO and SNAPSHOT_ONLY tiering policies only. Valid values are whole numbers between 2 and 183. Default values are 31 days for AUTO and 2 days for SNAPSHOT_ONLY.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the volume. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.tiering_policytiering_policy configuration block:"
  type        = string
}
variable "storage_virtual_machine_id" {
  description = "(Required) Specifies the storage virtual machine in which to create the volume."
  type        = string
}
variable "file_system_id" {
  description = "Describes the file system for the volume, e.g. fs-12345679"
  type        = string
}
variable "flexcache_endpoint_type" {
  description = "Specifies the FlexCache endpoint type of the volume, Valid values are NONE, ORIGIN, CACHE. Default value is NONE. These can be set by the ONTAP CLI or API and are use with FlexCache feature."
  type        = string
}
variable "id" {
  description = "Identifier of the volume, e.g., fsvol-12345678"
  type        = string
}
variable "name" {
  description = "(Required) Specifies the tiering policy for the ONTAP volume for moving data to the capacity pool storage. Valid values are SNAPSHOT_ONLY, AUTO, ALL, NONE. Default value is SNAPSHOT_ONLY."
  type        = string
}
variable "ontap_volume_type" {
  description = "Specifies the type of volume, Valid values are RW, DP,  and LS. Default value is RW. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication Migrating to Amazon FSx for NetApp ONTAP"
  type        = string
}
variable "uuid" {
  description = "The Volume's UUID (universally unique identifier)."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the volune."
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
output "tags" {
  description = "(Optional) A map of tags to assign to the volume. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.tiering_policytiering_policy configuration block:"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_virtual_machine_id" {
  description = "(Required) Specifies the storage virtual machine in which to create the volume."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.storage_virtual_machine_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_id" {
  description = "Describes the file system for the volume, e.g. fs-12345679"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "flexcache_endpoint_type" {
  description = "Specifies the FlexCache endpoint type of the volume, Valid values are NONE, ORIGIN, CACHE. Default value is NONE. These can be set by the ONTAP CLI or API and are use with FlexCache feature."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.flexcache_endpoint_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the volume, e.g., fsvol-12345678"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Specifies the tiering policy for the ONTAP volume for moving data to the capacity pool storage. Valid values are SNAPSHOT_ONLY, AUTO, ALL, NONE. Default value is SNAPSHOT_ONLY."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ontap_volume_type" {
  description = "Specifies the type of volume, Valid values are RW, DP,  and LS. Default value is RW. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication Migrating to Amazon FSx for NetApp ONTAP"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.ontap_volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uuid" {
  description = "The Volume's UUID (universally unique identifier)."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.uuid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the volune."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "junction_path" {
  description = "(Required) Specifies the location in the storage virtual machine's namespace where the volume is mounted. The junction_path must have a leading forward slash, such as /vol3"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.junction_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_style" {
  description = "(Optional) Specifies the volume security style, Valid values are UNIX, NTFS, and MIXED. Default value is UNIX."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.security_style
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_efficiency_enabled" {
  description = "(Required) Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.storage_efficiency_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "The type of volume, currently the only valid value is ONTAP.TimeoutsConfiguration options:"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size_in_megabytes" {
  description = "(Required) Specifies the size of the volume, in megabytes (MB), that you are creating."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.size_in_megabytes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cooling_policy" {
  description = "(Optional) Specifies the number of days that user data in a volume must remain inactive before it is considered \"cold\" and moved to the capacity pool. Used with AUTO and SNAPSHOT_ONLY tiering policies only. Valid values are whole numbers between 2 and 183. Default values are 31 days for AUTO and 2 days for SNAPSHOT_ONLY.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.cooling_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_id" {
  description = "Describes the file system for the volume, e.g. fs-12345679"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uuid" {
  description = "The Volume's UUID (universally unique identifier)."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.uuid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "The type of volume, currently the only valid value is ONTAP.TimeoutsConfiguration options:"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "flexcache_endpoint_type" {
  description = "Specifies the FlexCache endpoint type of the volume, Valid values are NONE, ORIGIN, CACHE. Default value is NONE. These can be set by the ONTAP CLI or API and are use with FlexCache feature."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.flexcache_endpoint_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the volume, e.g., fsvol-12345678"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ontap_volume_type" {
  description = "Specifies the type of volume, Valid values are RW, DP,  and LS. Default value is RW. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication Migrating to Amazon FSx for NetApp ONTAP"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.ontap_volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the volune."
  value       = aws_fsx_ontap_volume.aws_fsx_ontap_volume.arn
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
      "kind/name"                   = "aws_fsx_ontap_volume"
      "kind/version"                = "v0.1.0"
    }
  }
}
