resource "aws_connect_hours_of_operation" "aws_connect_hours_of_operation" {
  start_time             = var.start_time
  config                 = var.config
  id                     = var.id
  minutes                = var.minutes
  description            = var.description
  hours_of_operation_id  = var.hours_of_operation_id
  instance_id            = var.instance_id
  name                   = var.name
  tags                   = var.tags
  time_zone              = var.time_zone
  day                    = var.day
  hours                  = var.hours
  hours_of_operation_arn = var.hours_of_operation_arn
  arn                    = var.arn
  end_time               = var.end_time
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Hours of Operation."
  type        = string
}
variable "end_time" {
  description = "(Required) A end time block specifies the time that your contact center closes. The end_time is documented below."
  type        = string
}
variable "hours_of_operation_arn" {
  description = "(strongDeprecated) The Amazon Resource Name (ARN) of the Hours of Operation."
  type        = string
}
variable "config" {
  description = "(Required) One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below."
  type        = string
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Hours of Operation separated by a colon (:)."
  type        = string
}
variable "start_time" {
  description = "(Required) A start time block specifies the time that your contact center opens. The start_time is documented below.A end_time block supports the following arguments:"
  type        = string
}
variable "description" {
  description = "(Optional) Specifies the description of the Hours of Operation."
  type        = string
  default     = ""
}
variable "hours_of_operation_id" {
  description = "The identifier for the hours of operation."
  type        = string
}
variable "minutes" {
  description = "(Required) Specifies the minute of opening.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the Hours of Operation. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "time_zone" {
  description = "(Required) Specifies the time zone of the Hours of Operation.A config block supports the following arguments:"
  type        = string
}
variable "day" {
  description = "(Required) Specifies the day that the hours of operation applies to."
  type        = string
}
variable "hours" {
  description = "(Required) Specifies the hour of opening."
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "name" {
  description = "(Required) Specifies the name of the Hours of Operation."
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
  description = "The Amazon Resource Name (ARN) of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.arn
}
output "end_time" {
  description = "(Required) A end time block specifies the time that your contact center closes. The end_time is documented below."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.end_time
}
output "hours_of_operation_arn" {
  description = "(strongDeprecated) The Amazon Resource Name (ARN) of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_arn
}
output "config" {
  description = "(Required) One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.config
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Hours of Operation separated by a colon (:)."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.id
}
output "start_time" {
  description = "(Required) A start time block specifies the time that your contact center opens. The start_time is documented below.A end_time block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.start_time
}
output "description" {
  description = "(Optional) Specifies the description of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.description
}
output "hours_of_operation_id" {
  description = "The identifier for the hours of operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_id
}
output "minutes" {
  description = "(Required) Specifies the minute of opening.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.minutes
}
output "day" {
  description = "(Required) Specifies the day that the hours of operation applies to."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.day
}
output "hours" {
  description = "(Required) Specifies the hour of opening."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.instance_id
}
output "name" {
  description = "(Required) Specifies the name of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.name
}
output "tags" {
  description = "(Optional) Tags to apply to the Hours of Operation. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.tags
}
output "time_zone" {
  description = "(Required) Specifies the time zone of the Hours of Operation.A config block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.time_zone
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.arn
}
output "hours_of_operation_arn" {
  description = "(strongDeprecated) The Amazon Resource Name (ARN) of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_arn
}
output "hours_of_operation_id" {
  description = "The identifier for the hours of operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_id
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Hours of Operation separated by a colon (:)."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.id
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
      "kind/name"                   = "aws_connect_hours_of_operation"
      "kind/version"                = "v0.1.0"
    }
  }
}
