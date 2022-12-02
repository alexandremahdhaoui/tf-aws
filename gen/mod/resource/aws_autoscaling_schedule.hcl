resource "aws_autoscaling_schedule" "aws_autoscaling_schedule" {
  autoscaling_group_name = var.autoscaling_group_name
  desired_capacity       = var.desired_capacity
  end_time               = var.end_time
  time_zone              = var.time_zone
  max_size               = var.max_size
  min_size               = var.min_size
  recurrence             = var.recurrence
  scheduled_action_name  = var.scheduled_action_name
  start_time             = var.start_time
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "min_size" {
  description = ""
  type        = string
}
variable "recurrence" {
  description = "(Optional) Time when recurring future actions will start. Start time is specified by the user following the Unix cron syntax format."
  type        = string
  default     = ""
}
variable "scheduled_action_name" {
  description = "(Required) Name of this scaling action."
  type        = string
}
variable "start_time" {
  description = "(Optional) Time for this action to start, in \"YYYY-MM-DDThh:mm:ssZ\" format in UTC/GMT only (for example, 2014-06-01T00:00:00Z ).\nIf you try to schedule your action in the past, Auto Scaling returns an error message."
  type        = string
  default     = ""
}
variable "max_size" {
  description = "(Optional) Maximum size for the Auto Scaling group. Default 0.\nSet to -1 if you don't want to change the maximum size at the scheduled time."
  type        = string
  default     = ""
}
variable "desired_capacity" {
  description = "(Optional) Number of EC2 instances that should be running in the group. Default 0.  Set to -1 if you don't want to change the desired capacity at the scheduled time.~> strongNOTE: When start_time and end_time are specified with recurrence , they form the boundaries of when the recurring action will start and stop.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "end_time" {
  description = "(Optional) Time for this action to end, in \"YYYY-MM-DDThh:mm:ssZ\" format in UTC/GMT only (for example, 2014-06-01T00:00:00Z ).\nIf you try to schedule your action in the past, Auto Scaling returns an error message."
  type        = string
  default     = ""
}
variable "time_zone" {
  description = "(Optional)  The timezone for the cron expression. Valid values are the canonical names of the IANA time zones (such as Etc/GMT+9 or Pacific/Tahiti)."
  type        = string
  default     = ""
}
variable "autoscaling_group_name" {
  description = "(Required) Name or ARN of the Auto Scaling group."
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
output "recurrence" {
  description = "(Optional) Time when recurring future actions will start. Start time is specified by the user following the Unix cron syntax format."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.recurrence
}
output "scheduled_action_name" {
  description = "(Required) Name of this scaling action."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.scheduled_action_name
}
output "start_time" {
  description = "(Optional) Time for this action to start, in \"YYYY-MM-DDThh:mm:ssZ\" format in UTC/GMT only (for example, 2014-06-01T00:00:00Z ).\nIf you try to schedule your action in the past, Auto Scaling returns an error message."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.start_time
}
output "max_size" {
  description = "(Optional) Maximum size for the Auto Scaling group. Default 0.\nSet to -1 if you don't want to change the maximum size at the scheduled time."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.max_size
}
output "min_size" {
  description = ""
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.min_size
}
output "end_time" {
  description = "(Optional) Time for this action to end, in \"YYYY-MM-DDThh:mm:ssZ\" format in UTC/GMT only (for example, 2014-06-01T00:00:00Z ).\nIf you try to schedule your action in the past, Auto Scaling returns an error message."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.end_time
}
output "time_zone" {
  description = "(Optional)  The timezone for the cron expression. Valid values are the canonical names of the IANA time zones (such as Etc/GMT+9 or Pacific/Tahiti)."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.time_zone
}
output "autoscaling_group_name" {
  description = "(Required) Name or ARN of the Auto Scaling group."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.autoscaling_group_name
}
output "desired_capacity" {
  description = "(Optional) Number of EC2 instances that should be running in the group. Default 0.  Set to -1 if you don't want to change the desired capacity at the scheduled time.~> strongNOTE: When start_time and end_time are specified with recurrence , they form the boundaries of when the recurring action will start and stop.In addition to all arguments above, the following attributes are exported:"
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.desired_capacity
}
output "arn" {
  description = "ARN assigned by AWS to the autoscaling schedule."
  value       = aws_autoscaling_schedule.aws_autoscaling_schedule.arn
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
      "kind/name"                   = "aws_autoscaling_schedule"
      "kind/version"                = "v0.1.0"
    }
  }
}
