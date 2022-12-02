resource "aws_connect_security_profile" "aws_connect_security_profile" {
  permissions              = var.permissions
  security_profile_id      = var.security_profile_id
  arn                      = var.arn
  id                       = var.id
  organization_resource_id = var.organization_resource_id
  tags                     = var.tags
  description              = var.description
  instance_id              = var.instance_id
  name                     = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Security Profile."
  type        = string
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Security Profile separated by a colon (:)."
  type        = string
}
variable "organization_resource_id" {
  description = "The organization resource identifier for the security profile."
  type        = string
}
variable "permissions" {
  description = "(Optional) Specifies a list of permissions assigned to the security profile."
  type        = string
  default     = ""
}
variable "security_profile_id" {
  description = "The identifier for the Security Profile."
  type        = string
}
variable "description" {
  description = "(Optional) Specifies the description of the Security Profile."
  type        = string
  default     = ""
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "name" {
  description = "(Required) Specifies the name of the Security Profile."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the Security Profile. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "name" {
  description = "(Required) Specifies the name of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.name
}
output "tags" {
  description = "(Optional) Tags to apply to the Security Profile. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_security_profile.aws_connect_security_profile.tags
}
output "description" {
  description = "(Optional) Specifies the description of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.description
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_security_profile.aws_connect_security_profile.instance_id
}
output "organization_resource_id" {
  description = "The organization resource identifier for the security profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.organization_resource_id
}
output "permissions" {
  description = "(Optional) Specifies a list of permissions assigned to the security profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.permissions
}
output "security_profile_id" {
  description = "The identifier for the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.security_profile_id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.arn
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Security Profile separated by a colon (:)."
  value       = aws_connect_security_profile.aws_connect_security_profile.id
}
output "security_profile_id" {
  description = "The identifier for the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.security_profile_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_security_profile.aws_connect_security_profile.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Security Profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.arn
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Security Profile separated by a colon (:)."
  value       = aws_connect_security_profile.aws_connect_security_profile.id
}
output "organization_resource_id" {
  description = "The organization resource identifier for the security profile."
  value       = aws_connect_security_profile.aws_connect_security_profile.organization_resource_id
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
      "kind/name"                   = "aws_connect_security_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
