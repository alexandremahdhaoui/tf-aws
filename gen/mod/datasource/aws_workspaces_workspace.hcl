datasource "aws_workspaces_workspace" "aws_workspaces_workspace" {
  directory_id                              = var.directory_id
  id                                        = var.id
  root_volume_size_gib                      = var.root_volume_size_gib
  workspace_id                              = var.workspace_id
  user_name                                 = var.user_name
  user_volume_size_gib                      = var.user_volume_size_gib
  volume_encryption_key                     = var.volume_encryption_key
  bundle_id                                 = var.bundle_id
  computer_name                             = var.computer_name
  ip_address                                = var.ip_address
  root_volume_encryption_enabled            = var.root_volume_encryption_enabled
  running_mode_auto_stop_timeout_in_minutes = var.running_mode_auto_stop_timeout_in_minutes
  user_volume_encryption_enabled            = var.user_volume_encryption_enabled
  workspace_properties                      = var.workspace_properties
  compute_type_name                         = var.compute_type_name
  running_mode                              = var.running_mode
  tags                                      = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "compute_type_name" {
  description = " – (Optional) Compute type. For more information, see Amazon WorkSpaces Bundles. Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO and GRAPHICSPRO."
  type        = string
}
variable "running_mode" {
  description = " – (Optional) Running mode. For more information, see Manage the WorkSpace Running Mode. Valid values are AUTO_STOP and ALWAYS_ON."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags for the WorkSpace."
  type        = string
}
variable "directory_id" {
  description = "(Optional) ID of the directory for the WorkSpace. You have to specify user_name along with directory_id. You cannot combine this parameter with workspace_id."
  type        = string
}
variable "id" {
  description = "Workspaces ID."
  type        = string
}
variable "root_volume_size_gib" {
  description = " – (Optional) Size of the root volume."
  type        = string
}
variable "workspace_id" {
  description = "(Optional) ID of the WorkSpace. You cannot combine this parameter with directory_id."
  type        = string
}
variable "user_name" {
  description = " – (Optional) User name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace. You cannot combine this parameter with workspace_id."
  type        = string
}
variable "user_volume_size_gib" {
  description = " – (Optional) Size of the user storage.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "volume_encryption_key" {
  description = " – (Optional) Symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs."
  type        = string
}
variable "bundle_id" {
  description = "(Optional) ID of the bundle for the WorkSpace."
  type        = string
}
variable "computer_name" {
  description = "Name of the WorkSpace, as seen by the operating system."
  type        = string
}
variable "ip_address" {
  description = "IP address of the WorkSpace."
  type        = string
}
variable "root_volume_encryption_enabled" {
  description = "(Optional) Indicates whether the data stored on the root volume is encrypted."
  type        = string
}
variable "running_mode_auto_stop_timeout_in_minutes" {
  description = " – (Optional) Time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
  type        = string
}
variable "user_volume_encryption_enabled" {
  description = " – (Optional) Indicates whether the data stored on the user volume is encrypted."
  type        = string
}
variable "workspace_properties" {
  description = " – (Optional) WorkSpace properties.workspace_properties supports the following:"
  type        = string
}
output "user_name" {
  description = " – (Optional) User name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace. You cannot combine this parameter with workspace_id."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_volume_size_gib" {
  description = " – (Optional) Size of the user storage.In addition to all arguments above, the following attributes are exported:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_volume_size_gib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_encryption_key" {
  description = " – (Optional) Symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.volume_encryption_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bundle_id" {
  description = "(Optional) ID of the bundle for the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.bundle_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "computer_name" {
  description = "Name of the WorkSpace, as seen by the operating system."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.computer_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_address" {
  description = "IP address of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.ip_address
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
output "running_mode_auto_stop_timeout_in_minutes" {
  description = " – (Optional) Time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.running_mode_auto_stop_timeout_in_minutes
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
output "workspace_properties" {
  description = " – (Optional) WorkSpace properties.workspace_properties supports the following:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.workspace_properties
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_type_name" {
  description = " – (Optional) Compute type. For more information, see Amazon WorkSpaces Bundles. Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO and GRAPHICSPRO."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.compute_type_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "running_mode" {
  description = " – (Optional) Running mode. For more information, see Manage the WorkSpace Running Mode. Valid values are AUTO_STOP and ALWAYS_ON."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.running_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Tags for the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "directory_id" {
  description = "(Optional) ID of the directory for the WorkSpace. You have to specify user_name along with directory_id. You cannot combine this parameter with workspace_id."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.directory_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Workspaces ID."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_volume_size_gib" {
  description = " – (Optional) Size of the root volume."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.root_volume_size_gib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workspace_id" {
  description = "(Optional) ID of the WorkSpace. You cannot combine this parameter with directory_id."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.workspace_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "computer_name" {
  description = "Name of the WorkSpace, as seen by the operating system."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.computer_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Workspaces ID."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_address" {
  description = "IP address of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.ip_address
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
