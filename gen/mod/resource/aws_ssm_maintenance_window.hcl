resource "aws_ssm_maintenance_window" "aws_ssm_maintenance_window" {
  name                       = var.name
  schedule                   = var.schedule
  schedule_offset            = var.schedule_offset
  duration                   = var.duration
  id                         = var.id
  description                = var.description
  enabled                    = var.enabled
  end_date                   = var.end_date
  schedule_timezone          = var.schedule_timezone
  start_date                 = var.start_date
  tags                       = var.tags
  allow_unassociated_targets = var.allow_unassociated_targets
  cutoff                     = var.cutoff
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "schedule_timezone" {
  description = "(Optional) Timezone for schedule in Internet Assigned Numbers Authority (IANA) Time Zone Database format. For example: America/Los_Angeles, etc/UTC, or Asia/Seoul."
  type        = string
  default     = ""
}
variable "start_date" {
  description = "(Optional) Timestamp in ISO-8601 extended format when to begin the maintenance window."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "allow_unassociated_targets" {
  description = "(Optional) Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets."
  type        = string
  default     = ""
}
variable "cutoff" {
  description = "(Required) The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution."
  type        = string
}
variable "description" {
  description = "(Optional) A description for the maintenance window."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Whether the maintenance window is enabled. Default: true."
  type        = string
  default     = ""
}
variable "end_date" {
  description = "(Optional) Timestamp in ISO-8601 extended format when to no longer run the maintenance window."
  type        = string
  default     = ""
}
variable "duration" {
  description = "(Required) The duration of the Maintenance Window in hours."
  type        = string
}
variable "id" {
  description = "The ID of the maintenance window."
  type        = string
}
variable "name" {
  description = "(Required) The name of the maintenance window."
  type        = string
}
variable "schedule" {
  description = "(Required) The schedule of the Maintenance Window in the form of a cron or rate expression."
  type        = string
}
variable "schedule_offset" {
  description = "(Optional) The number of days to wait after the date and time specified by a CRON expression before running the maintenance window."
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
output "schedule_offset" {
  description = "(Optional) The number of days to wait after the date and time specified by a CRON expression before running the maintenance window."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.schedule_offset
}
output "duration" {
  description = "(Required) The duration of the Maintenance Window in hours."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.duration
}
output "id" {
  description = "The ID of the maintenance window."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.id
}
output "name" {
  description = "(Required) The name of the maintenance window."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.name
}
output "schedule" {
  description = "(Required) The schedule of the Maintenance Window in the form of a cron or rate expression."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.schedule
}
output "end_date" {
  description = "(Optional) Timestamp in ISO-8601 extended format when to no longer run the maintenance window."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.end_date
}
output "schedule_timezone" {
  description = "(Optional) Timezone for schedule in Internet Assigned Numbers Authority (IANA) Time Zone Database format. For example: America/Los_Angeles, etc/UTC, or Asia/Seoul."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.schedule_timezone
}
output "start_date" {
  description = "(Optional) Timestamp in ISO-8601 extended format when to begin the maintenance window."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.start_date
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.tags
}
output "allow_unassociated_targets" {
  description = "(Optional) Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.allow_unassociated_targets
}
output "cutoff" {
  description = "(Required) The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.cutoff
}
output "description" {
  description = "(Optional) A description for the maintenance window."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.description
}
output "enabled" {
  description = "(Optional) Whether the maintenance window is enabled. Default: true."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.enabled
}
output "id" {
  description = "The ID of the maintenance window."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ssm_maintenance_window.aws_ssm_maintenance_window.tags_all
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
      "kind/name"                   = "aws_ssm_maintenance_window"
      "kind/version"                = "v0.1.0"
    }
  }
}
