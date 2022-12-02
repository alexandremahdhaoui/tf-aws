resource "aws_dms_replication_task" "aws_dms_replication_task" {
  Cannot contain two consecutive hyphens.                        = var.Cannot contain two consecutive hyphens.
  Cannot end with a hyphen.                                      = var.Cannot end with a hyphen.
  First character must be a letter.                              = var.First character must be a letter.
  migration_type                                                 = var.migration_type
  replication_task_settings                                      = var.replication_task_settings
  Must contain from 1 to 255 alphanumeric characters or hyphens. = var.Must contain from 1 to 255 alphanumeric characters or hyphens.
  replication_instance_arn                                       = var.replication_instance_arn
  source_endpoint_arn                                            = var.source_endpoint_arn
  status                                                         = var.status
  tags                                                           = var.tags
  cdc_start_position                                             = var.cdc_start_position
  cdc_start_time                                                 = var.cdc_start_time
  table_mappings                                                 = var.table_mappings
  replication_task_arn                                           = var.replication_task_arn
  replication_task_id                                            = var.replication_task_id
  start_replication_task                                         = var.start_replication_task
  target_endpoint_arn                                            = var.target_endpoint_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cdc_start_position" {
  description = "(Optional, Conflicts with cdc_start_time) Indicates when you want a change data capture (CDC) operation to start. The value can be in date, checkpoint, or LSN/SCN format depending on the source engine. For more information, see Determining a CDC native start point."
  type        = string
}
variable "cdc_start_time" {
  description = "(Optional, Conflicts with cdc_start_position) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation."
  type        = string
}
variable "table_mappings" {
  description = "(Required) An escaped JSON string that contains the table mappings. For information on table mapping see Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data"
  type        = string
}
variable "replication_task_arn" {
  description = "The Amazon Resource Name (ARN) for the replication task."
  type        = string
}
variable "replication_task_id" {
  description = "(Required) The replication task identifier."
  type        = string
}
variable "start_replication_task" {
  description = "(Optional) Whether to run or stop the replication task."
  type        = string
  default     = ""
}
variable "target_endpoint_arn" {
  description = "(Required) The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "replication_task_settings" {
  description = "(Optional) An escaped JSON string that contains the task settings. For a complete list of task settings, see Task Settings for AWS Database Migration Service Tasks."
  type        = string
  default     = ""
}
variable "Cannot contain two consecutive hyphens." {
  description = ""
  type        = string
}
variable "Cannot end with a hyphen." {
  description = ""
  type        = string
}
variable "First character must be a letter." {
  description = ""
  type        = string
}
variable "migration_type" {
  description = "(Required) The migration type. Can be one of full-load | cdc | full-load-and-cdc."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "Must contain from 1 to 255 alphanumeric characters or hyphens." {
  description = ""
  type        = string
}
variable "replication_instance_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the replication instance."
  type        = string
}
variable "source_endpoint_arn" {
  description = "(Required) The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint."
  type        = string
}
variable "status" {
  description = "Replication Task status."
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
output "target_endpoint_arn" {
  description = "(Required) The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dms_replication_task.aws_dms_replication_task.target_endpoint_arn
}
output "replication_task_arn" {
  description = "The Amazon Resource Name (ARN) for the replication task."
  value       = aws_dms_replication_task.aws_dms_replication_task.replication_task_arn
}
output "replication_task_id" {
  description = "(Required) The replication task identifier."
  value       = aws_dms_replication_task.aws_dms_replication_task.replication_task_id
}
output "start_replication_task" {
  description = "(Optional) Whether to run or stop the replication task."
  value       = aws_dms_replication_task.aws_dms_replication_task.start_replication_task
}
output "migration_type" {
  description = "(Required) The migration type. Can be one of full-load | cdc | full-load-and-cdc."
  value       = aws_dms_replication_task.aws_dms_replication_task.migration_type
}
output "replication_task_settings" {
  description = "(Optional) An escaped JSON string that contains the task settings. For a complete list of task settings, see Task Settings for AWS Database Migration Service Tasks."
  value       = aws_dms_replication_task.aws_dms_replication_task.replication_task_settings
}
output "Cannot contain two consecutive hyphens." {
  description = ""
  value       = aws_dms_replication_task.aws_dms_replication_task.Cannot contain two consecutive hyphens.
}
output "Cannot end with a hyphen." {
  description = ""
  value       = aws_dms_replication_task.aws_dms_replication_task.Cannot end with a hyphen.
}
output "First character must be a letter." {
  description = ""
  value       = aws_dms_replication_task.aws_dms_replication_task.First character must be a letter.
}
output "status" {
  description = "Replication Task status."
  value       = aws_dms_replication_task.aws_dms_replication_task.status
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_dms_replication_task.aws_dms_replication_task.tags
}
output "Must contain from 1 to 255 alphanumeric characters or hyphens." {
  description = ""
  value       = aws_dms_replication_task.aws_dms_replication_task.Must contain from 1 to 255 alphanumeric characters or hyphens.
}
output "replication_instance_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the replication instance."
  value       = aws_dms_replication_task.aws_dms_replication_task.replication_instance_arn
}
output "source_endpoint_arn" {
  description = "(Required) The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint."
  value       = aws_dms_replication_task.aws_dms_replication_task.source_endpoint_arn
}
output "cdc_start_position" {
  description = "(Optional, Conflicts with cdc_start_time) Indicates when you want a change data capture (CDC) operation to start. The value can be in date, checkpoint, or LSN/SCN format depending on the source engine. For more information, see Determining a CDC native start point."
  value       = aws_dms_replication_task.aws_dms_replication_task.cdc_start_position
}
output "cdc_start_time" {
  description = "(Optional, Conflicts with cdc_start_position) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation."
  value       = aws_dms_replication_task.aws_dms_replication_task.cdc_start_time
}
output "table_mappings" {
  description = "(Required) An escaped JSON string that contains the table mappings. For information on table mapping see Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data"
  value       = aws_dms_replication_task.aws_dms_replication_task.table_mappings
}
output "replication_task_arn" {
  description = "The Amazon Resource Name (ARN) for the replication task."
  value       = aws_dms_replication_task.aws_dms_replication_task.replication_task_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_dms_replication_task.aws_dms_replication_task.tags_all
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
      "kind/name"                   = "aws_dms_replication_task"
      "kind/version"                = "v0.1.0"
    }
  }
}
