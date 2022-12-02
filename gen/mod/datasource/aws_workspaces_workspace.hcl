datasource "aws_workspaces_workspace" "aws_workspaces_workspace" {
  running_mode                              = var.running_mode
  volume_encryption_key                     = var.volume_encryption_key
  compute_type_name                         = var.compute_type_name
  computer_name                             = var.computer_name
  directory_id                              = var.directory_id
  ip_address                                = var.ip_address
  root_volume_encryption_enabled            = var.root_volume_encryption_enabled
  root_volume_size_gib                      = var.root_volume_size_gib
  bundle_id                                 = var.bundle_id
  running_mode_auto_stop_timeout_in_minutes = var.running_mode_auto_stop_timeout_in_minutes
  user_volume_size_gib                      = var.user_volume_size_gib
  workspace_id                              = var.workspace_id
  workspace_properties                      = var.workspace_properties
  tags                                      = var.tags
  user_volume_encryption_enabled            = var.user_volume_encryption_enabled
  id                                        = var.id
  user_name                                 = var.user_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "root_volume_encryption_enabled" {
  description = "(Optional) Indicates whether the data stored on the root volume is encrypted."
  type        = string
  default     = ""
}
variable "root_volume_size_gib" {
  description = " – (Optional) Size of the root volume."
  type        = string
  default     = ""
}
variable "running_mode" {
  description = " – (Optional) Running mode. For more information, see Manage the WorkSpace Running Mode. Valid values are AUTO_STOP and ALWAYS_ON."
  type        = string
  default     = ""
}
variable "volume_encryption_key" {
  description = " – (Optional) Symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs."
  type        = string
  default     = ""
}
variable "compute_type_name" {
  description = " – (Optional) Compute type. For more information, see Amazon WorkSpaces Bundles. Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO and GRAPHICSPRO."
  type        = string
  default     = ""
}
variable "computer_name" {
  description = "Name of the WorkSpace, as seen by the operating system."
  type        = string
}
variable "directory_id" {
  description = "(Optional) ID of the directory for the WorkSpace. You have to specify user_name along with directory_id. You cannot combine this parameter with workspace_id."
  type        = string
  default     = ""
}
variable "ip_address" {
  description = "IP address of the WorkSpace."
  type        = string
}
variable "workspace_properties" {
  description = " – (Optional) WorkSpace properties.workspace_properties supports the following:"
  type        = string
  default     = ""
}
variable "bundle_id" {
  description = "(Optional) ID of the bundle for the WorkSpace."
  type        = string
  default     = ""
}
variable "running_mode_auto_stop_timeout_in_minutes" {
  description = " – (Optional) Time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
  type        = string
  default     = ""
}
variable "user_volume_size_gib" {
  description = " – (Optional) Size of the user storage.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "workspace_id" {
  description = "(Optional) ID of the WorkSpace. You cannot combine this parameter with directory_id."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Tags for the WorkSpace."
  type        = string
  default     = ""
}
variable "user_volume_encryption_enabled" {
  description = " – (Optional) Indicates whether the data stored on the user volume is encrypted."
  type        = string
  default     = ""
}
variable "id" {
  description = "Workspaces ID."
  type        = string
}
variable "user_name" {
  description = " – (Optional) User name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace. You cannot combine this parameter with workspace_id."
  type        = string
  default     = ""
}
output "bundle_id" {
  description = "(Optional) ID of the bundle for the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.bundle_id
}
output "running_mode_auto_stop_timeout_in_minutes" {
  description = " – (Optional) Time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.running_mode_auto_stop_timeout_in_minutes
}
output "user_volume_size_gib" {
  description = " – (Optional) Size of the user storage.In addition to all arguments above, the following attributes are exported:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_volume_size_gib
}
output "workspace_id" {
  description = "(Optional) ID of the WorkSpace. You cannot combine this parameter with directory_id."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.workspace_id
}
output "workspace_properties" {
  description = " – (Optional) WorkSpace properties.workspace_properties supports the following:"
  value       = aws_workspaces_workspace.aws_workspaces_workspace.workspace_properties
}
output "tags" {
  description = "(Optional) Tags for the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.tags
}
output "user_volume_encryption_enabled" {
  description = " – (Optional) Indicates whether the data stored on the user volume is encrypted."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_volume_encryption_enabled
}
output "id" {
  description = "Workspaces ID."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.id
}
output "user_name" {
  description = " – (Optional) User name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace. You cannot combine this parameter with workspace_id."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.user_name
}
output "root_volume_size_gib" {
  description = " – (Optional) Size of the root volume."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.root_volume_size_gib
}
output "running_mode" {
  description = " – (Optional) Running mode. For more information, see Manage the WorkSpace Running Mode. Valid values are AUTO_STOP and ALWAYS_ON."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.running_mode
}
output "volume_encryption_key" {
  description = " – (Optional) Symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.volume_encryption_key
}
output "compute_type_name" {
  description = " – (Optional) Compute type. For more information, see Amazon WorkSpaces Bundles. Valid values are VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO and GRAPHICSPRO."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.compute_type_name
}
output "computer_name" {
  description = "Name of the WorkSpace, as seen by the operating system."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.computer_name
}
output "directory_id" {
  description = "(Optional) ID of the directory for the WorkSpace. You have to specify user_name along with directory_id. You cannot combine this parameter with workspace_id."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.directory_id
}
output "ip_address" {
  description = "IP address of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.ip_address
}
output "root_volume_encryption_enabled" {
  description = "(Optional) Indicates whether the data stored on the root volume is encrypted."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.root_volume_encryption_enabled
}
output "ip_address" {
  description = "IP address of the WorkSpace."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.ip_address
}
output "computer_name" {
  description = "Name of the WorkSpace, as seen by the operating system."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.computer_name
}
output "id" {
  description = "Workspaces ID."
  value       = aws_workspaces_workspace.aws_workspaces_workspace.id
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
