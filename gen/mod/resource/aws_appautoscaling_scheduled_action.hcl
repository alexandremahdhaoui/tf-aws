resource "aws_appautoscaling_scheduled_action" "aws_appautoscaling_scheduled_action" {
  timezone               = var.timezone
  end_time               = var.end_time
  min_capacity           = var.min_capacity
  scalable_dimension     = var.scalable_dimension
  service_namespace      = var.service_namespace
  schedule               = var.schedule
  start_time             = var.start_time
  max_capacity           = var.max_capacity
  name                   = var.name
  resource_id            = var.resource_id
  scalable_target_action = var.scalable_target_action
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "end_time" {
  description = "(Optional) Date and time for the scheduled action to end in RFC 3339 format. The timezone is not affected by the setting of timezone."
  type        = string
  default     = ""
}
variable "min_capacity" {
  description = "(Optional) Minimum capacity. At least one of min_capacity or max_capacity must be set.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "scalable_dimension" {
  description = "(Required) Scalable dimension. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference Example: ecs:service:DesiredCount"
  type        = string
}
variable "service_namespace" {
  description = "(Required) Namespace of the AWS service. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference Example: ecs"
  type        = string
}
variable "timezone" {
  description = "(Optional) Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for start_time and end_time. Valid values are the canonical names of the IANA time zones supported by Joda-Time, such as Etc/GMT+9 or Pacific/Tahiti. Default is UTC.Scalable Target Action Arguments"
  type        = string
  default     = ""
}
variable "max_capacity" {
  description = "(Optional) Maximum capacity. At least one of max_capacity or min_capacity must be set."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the scheduled action."
  type        = string
}
variable "resource_id" {
  description = "(Required) Identifier of the resource associated with the scheduled action. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference"
  type        = string
}
variable "scalable_target_action" {
  description = "(Required) New minimum and maximum capacity. You can set both values or just one. See below"
  type        = string
}
variable "schedule" {
  description = "(Required) Schedule for this action. The following formats are supported: At expressions - at(yyyy-mm-ddThh:mm:ss), Rate expressions - rate(valueunit), Cron expressions - cron(fields). Times for at expressions and cron expressions are evaluated using the time zone configured in timezone. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference"
  type        = string
}
variable "start_time" {
  description = "(Optional) Date and time for the scheduled action to start in RFC 3339 format. The timezone is not affected by the setting of timezone."
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
output "scalable_target_action" {
  description = "(Required) New minimum and maximum capacity. You can set both values or just one. See below"
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.scalable_target_action
}
output "schedule" {
  description = "(Required) Schedule for this action. The following formats are supported: At expressions - at(yyyy-mm-ddThh:mm:ss), Rate expressions - rate(valueunit), Cron expressions - cron(fields). Times for at expressions and cron expressions are evaluated using the time zone configured in timezone. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference"
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.schedule
}
output "start_time" {
  description = "(Optional) Date and time for the scheduled action to start in RFC 3339 format. The timezone is not affected by the setting of timezone."
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.start_time
}
output "max_capacity" {
  description = "(Optional) Maximum capacity. At least one of max_capacity or min_capacity must be set."
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.max_capacity
}
output "name" {
  description = "(Required) Name of the scheduled action."
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.name
}
output "resource_id" {
  description = "(Required) Identifier of the resource associated with the scheduled action. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference"
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.resource_id
}
output "service_namespace" {
  description = "(Required) Namespace of the AWS service. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference Example: ecs"
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.service_namespace
}
output "timezone" {
  description = "(Optional) Time zone used when setting a scheduled action by using an at or cron expression. Does not affect timezone for start_time and end_time. Valid values are the canonical names of the IANA time zones supported by Joda-Time, such as Etc/GMT+9 or Pacific/Tahiti. Default is UTC.Scalable Target Action Arguments"
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.timezone
}
output "end_time" {
  description = "(Optional) Date and time for the scheduled action to end in RFC 3339 format. The timezone is not affected by the setting of timezone."
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.end_time
}
output "min_capacity" {
  description = "(Optional) Minimum capacity. At least one of min_capacity or max_capacity must be set.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.min_capacity
}
output "scalable_dimension" {
  description = "(Required) Scalable dimension. Documentation can be found in the parameter at: AWS Application Auto Scaling API Reference Example: ecs:service:DesiredCount"
  value       = aws_appautoscaling_scheduled_action.aws_appautoscaling_scheduled_action.scalable_dimension
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
      "kind/name"                   = "aws_appautoscaling_scheduled_action"
      "kind/version"                = "v0.1.0"
    }
  }
}
