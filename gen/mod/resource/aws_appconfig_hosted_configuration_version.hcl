resource "aws_appconfig_hosted_configuration_version" "aws_appconfig_hosted_configuration_version" {
  content_type             = var.content_type
  description              = var.description
  id                       = var.id
  application_id           = var.application_id
  arn                      = var.arn
  configuration_profile_id = var.configuration_profile_id
  content                  = var.content
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "content" {
  description = "(Required, Forces new resource) Content of the configuration or the configuration data."
  type        = string
}
variable "content_type" {
  description = "(Required, Forces new resource) Standard MIME type describing the format of the configuration content. For more information, see Content-Type."
  type        = string
}
variable "description" {
  description = "(Optional, Forces new resource) Description of the configuration.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "AppConfig application ID, configuration profile ID, and version number separated by a slash (/)."
  type        = string
}
variable "application_id" {
  description = "(Required, Forces new resource) Application ID."
  type        = string
}
variable "arn" {
  description = "ARN of the AppConfig  hosted configuration version."
  type        = string
}
variable "configuration_profile_id" {
  description = "(Required, Forces new resource) Configuration profile ID."
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
output "configuration_profile_id" {
  description = "(Required, Forces new resource) Configuration profile ID."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.configuration_profile_id
}
output "content" {
  description = "(Required, Forces new resource) Content of the configuration or the configuration data."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.content
}
output "content_type" {
  description = "(Required, Forces new resource) Standard MIME type describing the format of the configuration content. For more information, see Content-Type."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.content_type
}
output "description" {
  description = "(Optional, Forces new resource) Description of the configuration.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.description
}
output "id" {
  description = "AppConfig application ID, configuration profile ID, and version number separated by a slash (/)."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.id
}
output "application_id" {
  description = "(Required, Forces new resource) Application ID."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.application_id
}
output "arn" {
  description = "ARN of the AppConfig  hosted configuration version."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.arn
}
output "arn" {
  description = "ARN of the AppConfig  hosted configuration version."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.arn
}
output "id" {
  description = "AppConfig application ID, configuration profile ID, and version number separated by a slash (/)."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.id
}
output "version_number" {
  description = "Version number of the hosted configuration."
  value       = aws_appconfig_hosted_configuration_version.aws_appconfig_hosted_configuration_version.version_number
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
      "kind/name"                   = "aws_appconfig_hosted_configuration_version"
      "kind/version"                = "v0.1.0"
    }
  }
}
