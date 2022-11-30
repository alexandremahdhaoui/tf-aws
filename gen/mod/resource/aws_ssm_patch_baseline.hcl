resource "aws_ssm_patch_baseline" "aws_ssm_patch_baseline" {
  approved_patches_compliance_level    = var.approved_patches_compliance_level
  global_filter                        = var.global_filter
  operating_system                     = var.operating_system
  rejected_patches                     = var.rejected_patches
  rejected_patches_action              = var.rejected_patches_action
  approve_until_date                   = var.approve_until_date
  approved_patches                     = var.approved_patches
  id                                   = var.id
  patch_filter                         = var.patch_filter
  tags                                 = var.tags
  arn                                  = var.arn
  description                          = var.description
  approved_patches_enable_non_security = var.approved_patches_enable_non_security
  name                                 = var.name
  approval_rule                        = var.approval_rule
  approve_after_days                   = var.approve_after_days
  configuration                        = var.configuration
  enable_non_security                  = var.enable_non_security
  products                             = var.products
  source                               = var.source
  PATCH_SET                            = var.PATCH_SET
  compliance_level                     = var.compliance_level
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "approved_patches_enable_non_security" {
  description = ""
  type        = string
}
variable "name" {
  description = "(Required) The name specified to identify the patch source."
  type        = string
}
variable "approval_rule" {
  description = "(Optional) A set of rules used to include patches in the baseline.\nUp to 10 approval rules can be specified.\nSee approval_rule below."
  type        = string
}
variable "approve_after_days" {
  description = "(Optional) The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.\nValid Range: 0 to 100.\nConflicts with approve_until_date."
  type        = string
}
variable "configuration" {
  description = "(Required) The value of the yum repo configuration.\nFor information about other options available for your yum repository configuration, see the dnf.conf documentation"
  type        = string
}
variable "enable_non_security" {
  description = "(Optional) Boolean enabling the application of non-security updates.\nThe default value is falsesource BlockThe source block supports:"
  type        = string
}
variable "products" {
  description = "(Required) The specific operating system versions a patch repository applies to, such as \"Ubuntu16.04\", \"AmazonLinux2016.09\", \"RedhatEnterpriseLinux7.2\" or \"Suse12.7\"PatchFilter.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "source" {
  description = "source below."
  type        = string
}
variable "PATCH_SET" {
  description = " defaults to OS if unspecified"
  type        = string
}
variable "compliance_level" {
  description = "CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, and UNSPECIFIEDUNSPECIFIED."
  type        = string
}
variable "approved_patches_compliance_level" {
  description = "(Optional) The compliance level for approved patches.\nThis means that if an approved patch is reported as missing, this is the severity of the compliance violation.\nValid values are CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIEDUNSPECIFIED."
  type        = string
}
variable "global_filter" {
  description = "PRODUCT, CLASSIFICATION, MSRC_SEVERITY, and PATCH_ID."
  type        = string
}
variable "operating_system" {
  description = "(Optional) The operating system the patch baseline applies to.\nValid values are\nAMAZON_LINUXAMAZON_LINUX_2AMAZON_LINUX_2022CENTOSDEBIANMACOSORACLE_LINUXRASPBIANREDHAT_ENTERPRISE_LINUXROCKY_LINUXSUSEUBUNTUWINDOWSWINDOWS."
  type        = string
}
variable "rejected_patches" {
  description = "(Optional) A list of rejected patches."
  type        = string
}
variable "rejected_patches_action" {
  description = "(Optional) The action for Patch Manager to take on patches included in the rejected_patchesALLOW_AS_DEPENDENCY and BLOCK."
  type        = string
}
variable "approve_until_date" {
  description = "YYYY-MM-DDapprove_after_days"
  type        = string
}
variable "approved_patches" {
  description = "(Optional) A list of explicitly approved patches for the baseline.\nCannot be specified with approval_rule."
  type        = string
}
variable "id" {
  description = "The ID of the patch baseline."
  type        = string
}
variable "patch_filter" {
  description = "operating_system value can be found in the SSM DescribePatchProperties API Reference*"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.approval_rule BlockThe approval_rule block supports:"
  type        = string
}
variable "arn" {
  description = "The ARN of the patch baseline."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the patch baseline."
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
output "source" {
  description = "source below."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PATCH_SET" {
  description = " defaults to OS if unspecified"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.PATCH_SET
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compliance_level" {
  description = "CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, and UNSPECIFIEDUNSPECIFIED."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.compliance_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration" {
  description = "(Required) The value of the yum repo configuration.\nFor information about other options available for your yum repository configuration, see the dnf.conf documentation"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_non_security" {
  description = "(Optional) Boolean enabling the application of non-security updates.\nThe default value is falsesource BlockThe source block supports:"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.enable_non_security
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "products" {
  description = "(Required) The specific operating system versions a patch repository applies to, such as \"Ubuntu16.04\", \"AmazonLinux2016.09\", \"RedhatEnterpriseLinux7.2\" or \"Suse12.7\"PatchFilter.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.products
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rejected_patches" {
  description = "(Optional) A list of rejected patches."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.rejected_patches
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rejected_patches_action" {
  description = "(Optional) The action for Patch Manager to take on patches included in the rejected_patchesALLOW_AS_DEPENDENCY and BLOCK."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.rejected_patches_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approve_until_date" {
  description = "YYYY-MM-DDapprove_after_days"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approve_until_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approved_patches" {
  description = "(Optional) A list of explicitly approved patches for the baseline.\nCannot be specified with approval_rule."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approved_patches_compliance_level" {
  description = "(Optional) The compliance level for approved patches.\nThis means that if an approved patch is reported as missing, this is the severity of the compliance violation.\nValid values are CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIEDUNSPECIFIED."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches_compliance_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_filter" {
  description = "PRODUCT, CLASSIFICATION, MSRC_SEVERITY, and PATCH_ID."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.global_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "operating_system" {
  description = "(Optional) The operating system the patch baseline applies to.\nValid values are\nAMAZON_LINUXAMAZON_LINUX_2AMAZON_LINUX_2022CENTOSDEBIANMACOSORACLE_LINUXRASPBIANREDHAT_ENTERPRISE_LINUXROCKY_LINUXSUSEUBUNTUWINDOWSWINDOWS."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.operating_system
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the patch baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) The description of the patch baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the patch baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "patch_filter" {
  description = "operating_system value can be found in the SSM DescribePatchProperties API Reference*"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.patch_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.approval_rule BlockThe approval_rule block supports:"
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approval_rule" {
  description = "(Optional) A set of rules used to include patches in the baseline.\nUp to 10 approval rules can be specified.\nSee approval_rule below."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approval_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approve_after_days" {
  description = "(Optional) The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.\nValid Range: 0 to 100.\nConflicts with approve_until_date."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approve_after_days
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approved_patches_enable_non_security" {
  description = ""
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.approved_patches_enable_non_security
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name specified to identify the patch source."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the patch baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the patch baseline."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ssm_patch_baseline.aws_ssm_patch_baseline.tags_all
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
      "kind/name"                   = "aws_ssm_patch_baseline"
      "kind/version"                = "v0.1.0"
    }
  }
}
