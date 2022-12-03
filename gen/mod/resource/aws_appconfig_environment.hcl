resource "aws_appconfig_environment" "aws_appconfig_environment" {
  id             = var.id
  name           = var.name
  state          = var.state
  alarm_arn      = var.alarm_arn
  arn            = var.arn
  environment_id = var.environment_id
  monitor        = var.monitor
  tags           = var.tags
  alarm_role_arn = var.alarm_role_arn
  application_id = var.application_id
  description    = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "alarm_role_arn" {
  description = "(Optional) ARN of an IAM role for AWS AppConfig to monitor alarm_arn.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "application_id" {
  description = "(Required, Forces new resource) AppConfig application ID. Must be between 4 and 7 characters in length."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the environment. Can be at most 1024 characters."
  type        = string
  default     = ""
}
variable "monitor" {
  description = "(Optional) Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.MonitorThe monitor block supports the following:"
  type        = string
  default     = ""
}
variable "alarm_arn" {
  description = "(Required) ARN of the Amazon CloudWatch alarm."
  type        = string
}
variable "arn" {
  description = "ARN of the AppConfig Environment."
  type        = string
}
variable "environment_id" {
  description = "AppConfig environment ID."
  type        = string
}
variable "id" {
  description = "AppConfig environment ID and application ID separated by a colon (:)."
  type        = string
}
variable "name" {
  description = "(Required) Name for the environment. Must be between 1 and 64 characters in length."
  type        = string
}
variable "state" {
  description = "State of the environment. Possible values are READY_FOR_DEPLOYMENT, DEPLOYING, ROLLING_BACKROLLED_BACK."
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
output "alarm_arn" {
  description = "(Required) ARN of the Amazon CloudWatch alarm."
  value       = aws_appconfig_environment.aws_appconfig_environment.alarm_arn
}
output "arn" {
  description = "ARN of the AppConfig Environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.arn
}
output "environment_id" {
  description = "AppConfig environment ID."
  value       = aws_appconfig_environment.aws_appconfig_environment.environment_id
}
output "id" {
  description = "AppConfig environment ID and application ID separated by a colon (:)."
  value       = aws_appconfig_environment.aws_appconfig_environment.id
}
output "name" {
  description = "(Required) Name for the environment. Must be between 1 and 64 characters in length."
  value       = aws_appconfig_environment.aws_appconfig_environment.name
}
output "state" {
  description = "State of the environment. Possible values are READY_FOR_DEPLOYMENT, DEPLOYING, ROLLING_BACKROLLED_BACK."
  value       = aws_appconfig_environment.aws_appconfig_environment.state
}
output "alarm_role_arn" {
  description = "(Optional) ARN of an IAM role for AWS AppConfig to monitor alarm_arn.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_environment.aws_appconfig_environment.alarm_role_arn
}
output "application_id" {
  description = "(Required, Forces new resource) AppConfig application ID. Must be between 4 and 7 characters in length."
  value       = aws_appconfig_environment.aws_appconfig_environment.application_id
}
output "description" {
  description = "(Optional) Description of the environment. Can be at most 1024 characters."
  value       = aws_appconfig_environment.aws_appconfig_environment.description
}
output "monitor" {
  description = "(Optional) Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details."
  value       = aws_appconfig_environment.aws_appconfig_environment.monitor
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.MonitorThe monitor block supports the following:"
  value       = aws_appconfig_environment.aws_appconfig_environment.tags
}
output "arn" {
  description = "ARN of the AppConfig Environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.arn
}
output "environment_id" {
  description = "AppConfig environment ID."
  value       = aws_appconfig_environment.aws_appconfig_environment.environment_id
}
output "id" {
  description = "AppConfig environment ID and application ID separated by a colon (:)."
  value       = aws_appconfig_environment.aws_appconfig_environment.id
}
output "state" {
  description = "State of the environment. Possible values are READY_FOR_DEPLOYMENT, DEPLOYING, ROLLING_BACKROLLED_BACK."
  value       = aws_appconfig_environment.aws_appconfig_environment.state
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appconfig_environment.aws_appconfig_environment.tags_all
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
      "kind/name"                   = "aws_appconfig_environment"
      "kind/version"                = "v0.1.0"
    }
  }
}
