resource "aws_rolesanywhere_profile" "aws_rolesanywhere_profile" {
  name                        = var.name
  require_instance_properties = var.require_instance_properties
  enabled                     = var.enabled
  managed_policy_arns         = var.managed_policy_arns
  id                          = var.id
  role_arns                   = var.role_arns
  session_policy              = var.session_policy
  tags                        = var.tags
  arn                         = var.arn
  duration_seconds            = var.duration_seconds
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Profile"
  type        = string
}
variable "duration_seconds" {
  description = "(Optional) The number of seconds the vended session credentials are valid for. Defaults to 3600."
  type        = string
  default     = ""
}
variable "id" {
  description = "The Profile ID."
  type        = string
}
variable "role_arns" {
  description = "(Required) A list of IAM roles that this profile can assume"
  type        = string
}
variable "session_policy" {
  description = "(Optional) A session policy that applies to the trust boundary of the vended session credentials."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Whether or not the Profile is enabled."
  type        = string
  default     = ""
}
variable "managed_policy_arns" {
  description = "(Optional) A list of managed policy ARNs that apply to the vended session credentials."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the Profile."
  type        = string
}
variable "require_instance_properties" {
  description = "(Optional) Specifies whether instance properties are required in CreateSession requests with this profile."
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
output "enabled" {
  description = "(Optional) Whether or not the Profile is enabled."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.enabled
}
output "managed_policy_arns" {
  description = "(Optional) A list of managed policy ARNs that apply to the vended session credentials."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.managed_policy_arns
}
output "name" {
  description = "(Required) The name of the Profile."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.name
}
output "require_instance_properties" {
  description = "(Optional) Specifies whether instance properties are required in CreateSession requests with this profile."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.require_instance_properties
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Profile"
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.arn
}
output "duration_seconds" {
  description = "(Optional) The number of seconds the vended session credentials are valid for. Defaults to 3600."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.duration_seconds
}
output "id" {
  description = "The Profile ID."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.id
}
output "role_arns" {
  description = "(Required) A list of IAM roles that this profile can assume"
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.role_arns
}
output "session_policy" {
  description = "(Optional) A session policy that applies to the trust boundary of the vended session credentials."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.session_policy
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Profile"
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.arn
}
output "id" {
  description = "The Profile ID."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_rolesanywhere_profile.aws_rolesanywhere_profile.tags_all
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
      "kind/name"                   = "aws_rolesanywhere_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
