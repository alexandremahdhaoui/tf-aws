datasource "aws_ssm_patch_baseline" "aws_ssm_patch_baseline" {
  default_baseline                     = var.default_baseline
  id                                   = var.id
  configuration                        = var.configuration
  approved_patches_compliance_level    = var.approved_patches_compliance_level
  name_prefix                          = var.name_prefix
  source                               = var.source
  approval_rule                        = var.approval_rule
  compliance_level                     = var.compliance_level
  enable_non_security                  = var.enable_non_security
  global_filter                        = var.global_filter
  key                                  = var.key
  name                                 = var.name
  owner                                = var.owner
  rejected_patches                     = var.rejected_patches
  approved_patches                     = var.approved_patches
  approve_until_date                   = var.approve_until_date
  approved_patches_enable_non_security = var.approved_patches_enable_non_security
  description                          = var.description
  operating_system                     = var.operating_system
  patch_filter                         = var.patch_filter
  rejected_patches_action              = var.rejected_patches_action
  values                               = var.values
  approve_after_days                   = var.approve_after_days
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "approved_patches_enable_non_security" {
  description = "Indicates whether the list of approved patches includes non-security updates that should be applied to the instances."
  type        = string
}
variable "description" {
  description = "Description of the baseline."
  type        = string
}
variable "operating_system" {
  description = "(Optional) Specified OS for the baseline. Valid values: AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS, RASPBIAN and ROCKY_LINUX.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "patch_filter" {
  description = "The patch filter group that defines the criteria for the rule.\n"
  type        = string
}
variable "rejected_patches_action" {
  description = "The action specified to take on patches included in the rejected_patches list."
  type        = string
}
variable "values" {
  description = "The value for the filter."
  type        = string
}
variable "approve_after_days" {
  description = "The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline."
  type        = string
}
variable "approve_until_date" {
  description = "The cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as YYYY-MM-DD. Conflicts with approve_after_days"
  type        = string
}
variable "id" {
  description = "ID of the baseline."
  type        = string
}
variable "configuration" {
  description = "The value of the yum repo configuration."
  type        = string
}
variable "default_baseline" {
  description = "(Optional) Filters the results against the baselines default_baseline field."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional) Filter results by the baseline name prefix."
  type        = string
  default     = ""
}
variable "source" {
  description = "Information about the patches to use to update the managed nodes, including target operating systems and source repositories.\n"
  type        = string
}
variable "approval_rule" {
  description = "List of rules used to include patches in the baseline.\n"
  type        = string
}
variable "approved_patches_compliance_level" {
  description = "The compliance level for approved patches."
  type        = string
}
variable "enable_non_security" {
  description = "Boolean enabling the application of non-security updates."
  type        = string
}
variable "global_filter" {
  description = "Set of global filters used to exclude patches from the baseline.\n"
  type        = string
}
variable "key" {
  description = "The key for the filter."
  type        = string
}
variable "name" {
  description = "The name specified to identify the patch source."
  type        = string
}
variable "owner" {
  description = "(Required) Owner of the baseline. Valid values: All, AWS, Self (the current account)."
  type        = string
}
variable "rejected_patches" {
  description = "List of rejected patches."
  type        = string
}
variable "approved_patches" {
  description = "List of explicitly approved patches for the baseline."
  type        = string
}
variable "compliance_level" {
  description = "The compliance level for patches approved by this rule."
  type        = string
}
output "approved_patches_compliance_level" {
  description = "The compliance level for approved patches."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches_compliance_level
}
output "name_prefix" {
  description = "(Optional) Filter results by the baseline name prefix."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.name_prefix
}
output "source" {
  description = "Information about the patches to use to update the managed nodes, including target operating systems and source repositories.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.source
}
output "approval_rule" {
  description = "List of rules used to include patches in the baseline.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approval_rule
}
output "compliance_level" {
  description = "The compliance level for patches approved by this rule."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.compliance_level
}
output "enable_non_security" {
  description = "Boolean enabling the application of non-security updates."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.enable_non_security
}
output "global_filter" {
  description = "Set of global filters used to exclude patches from the baseline.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.global_filter
}
output "key" {
  description = "The key for the filter."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.key
}
output "name" {
  description = "The name specified to identify the patch source."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.name
}
output "owner" {
  description = "(Required) Owner of the baseline. Valid values: All, AWS, Self (the current account)."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.owner
}
output "rejected_patches" {
  description = "List of rejected patches."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.rejected_patches
}
output "approved_patches" {
  description = "List of explicitly approved patches for the baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches
}
output "approve_until_date" {
  description = "The cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as YYYY-MM-DD. Conflicts with approve_after_days"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approve_until_date
}
output "approved_patches_enable_non_security" {
  description = "Indicates whether the list of approved patches includes non-security updates that should be applied to the instances."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches_enable_non_security
}
output "description" {
  description = "Description of the baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.description
}
output "operating_system" {
  description = "(Optional) Specified OS for the baseline. Valid values: AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN, MACOS, RASPBIAN and ROCKY_LINUX.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.operating_system
}
output "patch_filter" {
  description = "The patch filter group that defines the criteria for the rule.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.patch_filter
}
output "rejected_patches_action" {
  description = "The action specified to take on patches included in the rejected_patches list."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.rejected_patches_action
}
output "values" {
  description = "The value for the filter."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.values
}
output "approve_after_days" {
  description = "The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approve_after_days
}
output "default_baseline" {
  description = "(Optional) Filters the results against the baselines default_baseline field."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.default_baseline
}
output "id" {
  description = "ID of the baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.id
}
output "configuration" {
  description = "The value of the yum repo configuration."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.configuration
}
output "approval_rule" {
  description = "List of rules used to include patches in the baseline.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approval_rule
}
output "approved_patches_enable_non_security" {
  description = "Indicates whether the list of approved patches includes non-security updates that should be applied to the instances."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches_enable_non_security
}
output "configuration" {
  description = "The value of the yum repo configuration."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.configuration
}
output "global_filter" {
  description = "Set of global filters used to exclude patches from the baseline.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.global_filter
}
output "patch_filter" {
  description = "The patch filter group that defines the criteria for the rule.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.patch_filter
}
output "rejected_patches_action" {
  description = "The action specified to take on patches included in the rejected_patches list."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.rejected_patches_action
}
output "approve_after_days" {
  description = "The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approve_after_days
}
output "description" {
  description = "Description of the baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.description
}
output "approved_patches" {
  description = "List of explicitly approved patches for the baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches
}
output "compliance_level" {
  description = "The compliance level for patches approved by this rule."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.compliance_level
}
output "id" {
  description = "ID of the baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.id
}
output "key" {
  description = "The key for the filter."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.key
}
output "approve_until_date" {
  description = "The cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as YYYY-MM-DD. Conflicts with approve_after_days"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approve_until_date
}
output "approved_patches_compliance_level" {
  description = "The compliance level for approved patches."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches_compliance_level
}
output "enable_non_security" {
  description = "Boolean enabling the application of non-security updates."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.enable_non_security
}
output "name" {
  description = "The name specified to identify the patch source."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.name
}
output "rejected_patches" {
  description = "List of rejected patches."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.rejected_patches
}
output "source" {
  description = "Information about the patches to use to update the managed nodes, including target operating systems and source repositories.\n"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.source
}
output "values" {
  description = "The value for the filter."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.values
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
