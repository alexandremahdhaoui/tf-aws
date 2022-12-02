resource "aws_appconfig_deployment" "aws_appconfig_deployment" {
  arn                      = var.arn
  configuration_profile_id = var.configuration_profile_id
  description              = var.description
  id                       = var.id
  state                    = var.state
  tags                     = var.tags
  application_id           = var.application_id
  configuration_version    = var.configuration_version
  deployment_number        = var.deployment_number
  deployment_strategy_id   = var.deployment_strategy_id
  environment_id           = var.environment_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the AppConfig Deployment."
  type        = string
}
variable "configuration_profile_id" {
  description = "(Required, Forces new resource) Configuration profile ID. Must be between 4 and 7 characters in length."
  type        = string
}
variable "description" {
  description = "(Optional, Forces new resource) Description of the deployment. Can be at most 1024 characters."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "application_id" {
  description = "(Required, Forces new resource) Application ID. Must be between 4 and 7 characters in length."
  type        = string
}
variable "configuration_version" {
  description = "(Required, Forces new resource) Configuration version to deploy. Can be at most 1024 characters."
  type        = string
}
variable "deployment_number" {
  description = "Deployment number."
  type        = string
}
variable "deployment_strategy_id" {
  description = "(Required, Forces new resource) Deployment strategy ID or name of a predefined deployment strategy. See Predefined Deployment Strategies for more details."
  type        = string
}
variable "environment_id" {
  description = "(Required, Forces new resource) Environment ID. Must be between 4 and 7 characters in length."
  type        = string
}
variable "id" {
  description = "AppConfig application ID, environment ID, and deployment number separated by a slash (/)."
  type        = string
}
variable "state" {
  description = "State of the deployment."
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
output "arn" {
  description = "ARN of the AppConfig Deployment."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.arn
}
output "configuration_profile_id" {
  description = "(Required, Forces new resource) Configuration profile ID. Must be between 4 and 7 characters in length."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.configuration_profile_id
}
output "description" {
  description = "(Optional, Forces new resource) Description of the deployment. Can be at most 1024 characters."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.description
}
output "id" {
  description = "AppConfig application ID, environment ID, and deployment number separated by a slash (/)."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.id
}
output "state" {
  description = "State of the deployment."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.state
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_deployment.aws_appconfig_deployment.tags
}
output "application_id" {
  description = "(Required, Forces new resource) Application ID. Must be between 4 and 7 characters in length."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.application_id
}
output "configuration_version" {
  description = "(Required, Forces new resource) Configuration version to deploy. Can be at most 1024 characters."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.configuration_version
}
output "deployment_number" {
  description = "Deployment number."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.deployment_number
}
output "deployment_strategy_id" {
  description = "(Required, Forces new resource) Deployment strategy ID or name of a predefined deployment strategy. See Predefined Deployment Strategies for more details."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.deployment_strategy_id
}
output "environment_id" {
  description = "(Required, Forces new resource) Environment ID. Must be between 4 and 7 characters in length."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.environment_id
}
output "deployment_number" {
  description = "Deployment number."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.deployment_number
}
output "id" {
  description = "AppConfig application ID, environment ID, and deployment number separated by a slash (/)."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.id
}
output "state" {
  description = "State of the deployment."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.state
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.tags_all
}
output "arn" {
  description = "ARN of the AppConfig Deployment."
  value       = aws_appconfig_deployment.aws_appconfig_deployment.arn
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
      "kind/name"                   = "aws_appconfig_deployment"
      "kind/version"                = "v0.1.0"
    }
  }
}
