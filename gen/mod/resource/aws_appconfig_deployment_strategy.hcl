resource "aws_appconfig_deployment_strategy" "aws_appconfig_deployment_strategy" {
  name                           = var.name
  replicate_to                   = var.replicate_to
  arn                            = var.arn
  description                    = var.description
  final_bake_time_in_minutes     = var.final_bake_time_in_minutes
  growth_factor                  = var.growth_factor
  growth_type                    = var.growth_type
  id                             = var.id
  tags                           = var.tags
  deployment_duration_in_minutes = var.deployment_duration_in_minutes
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "deployment_duration_in_minutes" {
  description = "(Required) Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440."
  type        = string
}
variable "growth_factor" {
  description = "(Required) Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0."
  type        = string
}
variable "growth_type" {
  description = "(Optional) Algorithm used to define how percentage grows over time. Valid value: LINEAR and EXPONENTIAL. Defaults to LINEAR."
  type        = string
  default     = ""
}
variable "id" {
  description = "AppConfig deployment strategy ID."
  type        = string
}
variable "name" {
  description = "(Required, Forces new resource) Name for the deployment strategy. Must be between 1 and 64 characters in length."
  type        = string
}
variable "replicate_to" {
  description = "(Required, Forces new resource) Where to save the deployment strategy. Valid values: NONE and SSM_DOCUMENT."
  type        = string
}
variable "arn" {
  description = "ARN of the AppConfig Deployment Strategy."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the deployment strategy. Can be at most 1024 characters."
  type        = string
  default     = ""
}
variable "final_bake_time_in_minutes" {
  description = "(Optional) Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "description" {
  description = "(Optional) Description of the deployment strategy. Can be at most 1024 characters."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.description
}
output "final_bake_time_in_minutes" {
  description = "(Optional) Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.final_bake_time_in_minutes
}
output "growth_factor" {
  description = "(Required) Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.growth_factor
}
output "growth_type" {
  description = "(Optional) Algorithm used to define how percentage grows over time. Valid value: LINEAR and EXPONENTIAL. Defaults to LINEAR."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.growth_type
}
output "id" {
  description = "AppConfig deployment strategy ID."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.id
}
output "name" {
  description = "(Required, Forces new resource) Name for the deployment strategy. Must be between 1 and 64 characters in length."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.name
}
output "replicate_to" {
  description = "(Required, Forces new resource) Where to save the deployment strategy. Valid values: NONE and SSM_DOCUMENT."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.replicate_to
}
output "arn" {
  description = "ARN of the AppConfig Deployment Strategy."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.arn
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.tags
}
output "deployment_duration_in_minutes" {
  description = "(Required) Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.deployment_duration_in_minutes
}
output "arn" {
  description = "ARN of the AppConfig Deployment Strategy."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.arn
}
output "id" {
  description = "AppConfig deployment strategy ID."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appconfig_deployment_strategy.aws_appconfig_deployment_strategy.tags_all
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
      "kind/name"                   = "aws_appconfig_deployment_strategy"
      "kind/version"                = "v0.1.0"
    }
  }
}
