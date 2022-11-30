resource "aws_workspaces_workspace" "aws_workspaces_workspace" {
  user_name                                 = var.user_name
  volume_encryption_key                     = var.volume_encryption_key
  bundle_id                                 = var.bundle_id
  ip_address                                = var.ip_address
  tags                                      = var.tags
  workspace_properties                      = var.workspace_properties
  directory_id                              = var.directory_id
  root_volume_encryption_enabled            = var.root_volume_encryption_enabled
  running_mode                              = var.running_mode
  running_mode_auto_stop_timeout_in_minutes = var.running_mode_auto_stop_timeout_in_minutes
  tags_all                                  = var.tags_all
  update                                    = var.update
  user_volume_size_gib                      = var.user_volume_size_gib
  computer_name                             = var.computer_name
  id                                        = var.id
  root_volume_size_gib                      = var.root_volume_size_gib
  state                                     = var.state
  user_volume_encryption_enabled            = var.user_volume_encryption_enabled
  compute_type_name                         = var.compute_type_name
  create                                    = var.create
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "volume_encryption_key" {
  description = " – (Optional) The symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs."
  type        = string
}
variable "bundle_id" {
  description = "(Required) The ID of the bundle for the WorkSpace."
  type        = string
}
variable "ip_address" {
  description = "The IP address of the WorkSpace."
  type        = string
}
variable "user_name" {
  description = " – (Required) The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace."
  type        = string
}
variable "workspace_properties" {
  description = " – (Optional) The WorkSpace properties.workspace_properties supports the following:"
  type        = string
}
variable "directory_id" {
  description = "(Required) The ID of the directory for the WorkSpace."
  type        = string
}
variable "root_volume_encryption_enabled" {
  description = "(Optional) Indicates whether the data stored on the root volume is encrypted."
  type        = string
}
variable "tags" {
  description = "(Optional) The tags for the WorkSpace. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "running_mode_auto_stop_timeout_in_minutes" {
  description = " – (Optional) The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "user_volume_size_gib" {
  description = " – (Optional) The size of the user storage.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "computer_name" {
  description = "The name of the WorkSpace, as seen by the operating system."
  type        = string
}
variable "id" {
  description = "The workspaces ID."
  type        = string
}
variable "running_mode" {
  description = " – (Optional) The running mode. For more information, see Manage the WorkSpace Running Mode. Valid values are AUTO_STOP and ALWAYS_ON."
  type        = string
}
variable "state" {
  description = "The operational state of the WorkSpace."
  type        = string
}
variable "user_volume_encryption_enabled" {
  description = " – (Optional) Indicates whether the data stored on the user volume is encrypted."
  type        = string
}
variable "compute_type_name" {
  description = " – (Optional) The compute type. For more information, see Amazon WorkSpaces Bundles. Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO, GRAPHICS_G4DN, and GRAPHICSPRO_G4DN."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "root_volume_size_gib" {
  description = " – (Optional) The size of the root volume."
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
output "computer_name" {
  description = "The name of the WorkSpace, as seen by the operating system."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.computer_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The workspaces ID."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "running_mode" {
  description = " – (Optional) The running mode. For more information, see Manage the WorkSpace Running Mode. Valid values are AUTO_STOP and ALWAYS_ON."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.running_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "running_mode_auto_stop_timeout_in_minutes" {
  description = " – (Optional) The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.running_mode_auto_stop_timeout_in_minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_volume_size_gib" {
  description = " – (Optional) The size of the user storage.In addition to all arguments above, the following attributes are exported:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_volume_size_gib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_type_name" {
  description = " – (Optional) The compute type. For more information, see Amazon WorkSpaces Bundles. Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO, GRAPHICS_G4DN, and GRAPHICSPRO_G4DN."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.compute_type_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_volume_size_gib" {
  description = " – (Optional) The size of the root volume."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.root_volume_size_gib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "The operational state of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_volume_encryption_enabled" {
  description = " – (Optional) Indicates whether the data stored on the user volume is encrypted."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_volume_encryption_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bundle_id" {
  description = "(Required) The ID of the bundle for the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.bundle_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_address" {
  description = "The IP address of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_name" {
  description = " – (Required) The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_encryption_key" {
  description = " – (Optional) The symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.volume_encryption_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "directory_id" {
  description = "(Required) The ID of the directory for the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.directory_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_volume_encryption_enabled" {
  description = "(Optional) Indicates whether the data stored on the root volume is encrypted."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.root_volume_encryption_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) The tags for the WorkSpace. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workspace_properties" {
  description = " – (Optional) The WorkSpace properties.workspace_properties supports the following:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.workspace_properties
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The workspaces ID."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_address" {
  description = "The IP address of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "The operational state of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "computer_name" {
  description = "The name of the WorkSpace, as seen by the operating system."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.computer_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.create
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
      "kind/name"                   = "aws_workspaces_workspace"
      "kind/version"                = "v0.1.0"
    }
  }
}
