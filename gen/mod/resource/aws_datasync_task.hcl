resource "aws_datasync_task" "aws_datasync_task" {
  posix_permissions              = var.posix_permissions
  tags                           = var.tags
  destination_location_arn       = var.destination_location_arn
  gid                            = var.gid
  log_level                      = var.log_level
  task_queueing                  = var.task_queueing
  value                          = var.value
  arn                            = var.arn
  bytes_per_second               = var.bytes_per_second
  filter_type                    = var.filter_type
  schedule_expression            = var.schedule_expression
  transfer_mode                  = var.transfer_mode
  excludes                       = var.excludes
  id                             = var.id
  preserve_deleted_files         = var.preserve_deleted_files
  uid                            = var.uid
  source_location_arn            = var.source_location_arn
  tags_all                       = var.tags_all
  atime                          = var.atime
  includes                       = var.includes
  mtime                          = var.mtime
  options                        = var.options
  security_descriptor_copy_flags = var.security_descriptor_copy_flags
  cloudwatch_log_group_arn       = var.cloudwatch_log_group_arn
  overwrite_mode                 = var.overwrite_mode
  preserve_devices               = var.preserve_devices
  schedule                       = var.schedule
  name                           = var.name
  verify_mode                    = var.verify_mode
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "schedule" {
  description = "(Optional) Specifies a schedule used to periodically transfer files from a source to a destination location."
  type        = string
  default     = ""
}
variable "cloudwatch_log_group_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task."
  type        = string
  default     = ""
}
variable "overwrite_mode" {
  description = "(Optional) Determines whether files at the destination should be overwritten or preserved when copying files. Valid values: ALWAYS, NEVER. Default: ALWAYS."
  type        = string
  default     = ""
}
variable "preserve_devices" {
  description = "(Optional) Whether the DataSync Task should preserve the metadata of block and character devices in the source files system, and recreate the files with that device name and metadata on the destination. The DataSync Task can’t sync the actual contents of such devices, because many of the devices are non-terminal and don’t return an end of file (EOF) marker. Valid values: NONE, PRESERVE. Default: NONE (ignore special devices)."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Name of the DataSync Task."
  type        = string
  default     = ""
}
variable "verify_mode" {
  description = "(Optional) Whether a data integrity verification should be performed at the end of a task execution after all data and metadata have been transferred. Valid values: NONE, POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED. Default: POINT_IN_TIME_CONSISTENT.Schedule"
  type        = string
  default     = ""
}
variable "posix_permissions" {
  description = "(Optional) Determines which users or groups can access a file for a specific purpose such as reading, writing, or execution of the file. Valid values: NONE, PRESERVE. Default: PRESERVE."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options Argument Reference~> strongNOTE: If atime is set to BEST_EFFORT, mtime must be set to PRESERVE. If atime is set to NONE, mtime must be set to NONE.options configuration block:"
  type        = string
  default     = ""
}
variable "task_queueing" {
  description = "(Optional) Determines whether tasks should be queued before executing the tasks. Valid values: ENABLED, DISABLED. Default ENABLED."
  type        = string
  default     = ""
}
variable "destination_location_arn" {
  description = "(Required) Amazon Resource Name (ARN) of destination DataSync Location."
  type        = string
}
variable "gid" {
  description = "(Optional) Group identifier of the file's owners. Valid values: BOTH, INT_VALUE, NAME, NONE. Default: INT_VALUE (preserve integer value of the ID)."
  type        = string
  default     = ""
}
variable "log_level" {
  description = "(Optional) Determines the type of logs that DataSync publishes to a log stream in the Amazon CloudWatch log group that you provide. Valid values: OFF, BASIC, TRANSFER. Default: OFF."
  type        = string
  default     = ""
}
variable "schedule_expression" {
  description = "(Required) Specifies the schedule you want your task to use for repeated executions. For more information, see Schedule Expressions for Rules.excludes Argument Reference"
  type        = string
}
variable "transfer_mode" {
  description = "(Optional) Determines whether DataSync transfers only the data and metadata that differ between the source and the destination location, or whether DataSync transfers all the content from the source, without comparing to the destination location. Valid values: CHANGED, ALL. Default: CHANGED"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Optional) A single filter string that consists of the patterns to include. The patterns are delimited by \"|\" (that is, a pipe), for example: /folder1|/folder2In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Task."
  type        = string
}
variable "bytes_per_second" {
  description = "(Optional) Limits the bandwidth utilized. For example, to set a maximum of 1 MB, set this value to 1048576. Value values: -1 or greater. Default: -1 (unlimited)."
  type        = string
  default     = ""
}
variable "filter_type" {
  description = "(Optional) The type of filter rule to apply. Valid values: SIMPLE_PATTERN."
  type        = string
  default     = ""
}
variable "uid" {
  description = "(Optional) User identifier of the file's owners. Valid values: BOTH, INT_VALUE, NAME, NONE. Default: INT_VALUE (preserve integer value of the ID)."
  type        = string
  default     = ""
}
variable "excludes" {
  description = "(Optional) Filter rules that determines which files to exclude from a task."
  type        = string
  default     = ""
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Task."
  type        = string
}
variable "preserve_deleted_files" {
  description = "(Optional) Whether files deleted in the source should be removed or preserved in the destination file system. Valid values: PRESERVE, REMOVE. Default: PRESERVE."
  type        = string
  default     = ""
}
variable "options" {
  description = "(Optional) Configuration block containing option that controls the default behavior when you start an execution of this DataSync Task. For each individual task execution, you can override these options by specifying an overriding configuration in those executions."
  type        = string
  default     = ""
}
variable "security_descriptor_copy_flags" {
  description = "(Optional) Determines which components of the SMB security descriptor are copied from source to destination objects. This value is only used for transfers between SMB and Amazon FSx for Windows File Server locations, or between two Amazon FSx for Windows File Server locations. Valid values: NONE, OWNER_DACL, OWNER_DACL_SACL."
  type        = string
  default     = ""
}
variable "source_location_arn" {
  description = "(Required) Amazon Resource Name (ARN) of source DataSync Location."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "atime" {
  description = "(Optional) A file metadata that shows the last time a file was accessed (that is when the file was read or written to). If set to BEST_EFFORT, the DataSync Task attempts to preserve the original (that is, the version before sync PREPARING phase) atime attribute on all source files. Valid values: BEST_EFFORT, NONE. Default: BEST_EFFORT."
  type        = string
  default     = ""
}
variable "includes" {
  description = "(Optional) Filter rules that determines which files to include in a task."
  type        = string
  default     = ""
}
variable "mtime" {
  description = "(Optional) A file metadata that indicates the last time a file was modified (written to) before the sync PREPARING phase. Value values: NONE, PRESERVE. Default: PRESERVE."
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
output "destination_location_arn" {
  description = "(Required) Amazon Resource Name (ARN) of destination DataSync Location."
  value       = aws_datasync_task.aws_datasync_task.destination_location_arn
}
output "gid" {
  description = "(Optional) Group identifier of the file's owners. Valid values: BOTH, INT_VALUE, NAME, NONE. Default: INT_VALUE (preserve integer value of the ID)."
  value       = aws_datasync_task.aws_datasync_task.gid
}
output "log_level" {
  description = "(Optional) Determines the type of logs that DataSync publishes to a log stream in the Amazon CloudWatch log group that you provide. Valid values: OFF, BASIC, TRANSFER. Default: OFF."
  value       = aws_datasync_task.aws_datasync_task.log_level
}
output "task_queueing" {
  description = "(Optional) Determines whether tasks should be queued before executing the tasks. Valid values: ENABLED, DISABLED. Default ENABLED."
  value       = aws_datasync_task.aws_datasync_task.task_queueing
}
output "transfer_mode" {
  description = "(Optional) Determines whether DataSync transfers only the data and metadata that differ between the source and the destination location, or whether DataSync transfers all the content from the source, without comparing to the destination location. Valid values: CHANGED, ALL. Default: CHANGED"
  value       = aws_datasync_task.aws_datasync_task.transfer_mode
}
output "value" {
  description = "(Optional) A single filter string that consists of the patterns to include. The patterns are delimited by \"|\" (that is, a pipe), for example: /folder1|/folder2In addition to all arguments above, the following attributes are exported:"
  value       = aws_datasync_task.aws_datasync_task.value
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Task."
  value       = aws_datasync_task.aws_datasync_task.arn
}
output "bytes_per_second" {
  description = "(Optional) Limits the bandwidth utilized. For example, to set a maximum of 1 MB, set this value to 1048576. Value values: -1 or greater. Default: -1 (unlimited)."
  value       = aws_datasync_task.aws_datasync_task.bytes_per_second
}
output "filter_type" {
  description = "(Optional) The type of filter rule to apply. Valid values: SIMPLE_PATTERN."
  value       = aws_datasync_task.aws_datasync_task.filter_type
}
output "schedule_expression" {
  description = "(Required) Specifies the schedule you want your task to use for repeated executions. For more information, see Schedule Expressions for Rules.excludes Argument Reference"
  value       = aws_datasync_task.aws_datasync_task.schedule_expression
}
output "excludes" {
  description = "(Optional) Filter rules that determines which files to exclude from a task."
  value       = aws_datasync_task.aws_datasync_task.excludes
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Task."
  value       = aws_datasync_task.aws_datasync_task.id
}
output "preserve_deleted_files" {
  description = "(Optional) Whether files deleted in the source should be removed or preserved in the destination file system. Valid values: PRESERVE, REMOVE. Default: PRESERVE."
  value       = aws_datasync_task.aws_datasync_task.preserve_deleted_files
}
output "uid" {
  description = "(Optional) User identifier of the file's owners. Valid values: BOTH, INT_VALUE, NAME, NONE. Default: INT_VALUE (preserve integer value of the ID)."
  value       = aws_datasync_task.aws_datasync_task.uid
}
output "security_descriptor_copy_flags" {
  description = "(Optional) Determines which components of the SMB security descriptor are copied from source to destination objects. This value is only used for transfers between SMB and Amazon FSx for Windows File Server locations, or between two Amazon FSx for Windows File Server locations. Valid values: NONE, OWNER_DACL, OWNER_DACL_SACL."
  value       = aws_datasync_task.aws_datasync_task.security_descriptor_copy_flags
}
output "source_location_arn" {
  description = "(Required) Amazon Resource Name (ARN) of source DataSync Location."
  value       = aws_datasync_task.aws_datasync_task.source_location_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_datasync_task.aws_datasync_task.tags_all
}
output "atime" {
  description = "(Optional) A file metadata that shows the last time a file was accessed (that is when the file was read or written to). If set to BEST_EFFORT, the DataSync Task attempts to preserve the original (that is, the version before sync PREPARING phase) atime attribute on all source files. Valid values: BEST_EFFORT, NONE. Default: BEST_EFFORT."
  value       = aws_datasync_task.aws_datasync_task.atime
}
output "includes" {
  description = "(Optional) Filter rules that determines which files to include in a task."
  value       = aws_datasync_task.aws_datasync_task.includes
}
output "mtime" {
  description = "(Optional) A file metadata that indicates the last time a file was modified (written to) before the sync PREPARING phase. Value values: NONE, PRESERVE. Default: PRESERVE."
  value       = aws_datasync_task.aws_datasync_task.mtime
}
output "options" {
  description = "(Optional) Configuration block containing option that controls the default behavior when you start an execution of this DataSync Task. For each individual task execution, you can override these options by specifying an overriding configuration in those executions."
  value       = aws_datasync_task.aws_datasync_task.options
}
output "cloudwatch_log_group_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task."
  value       = aws_datasync_task.aws_datasync_task.cloudwatch_log_group_arn
}
output "overwrite_mode" {
  description = "(Optional) Determines whether files at the destination should be overwritten or preserved when copying files. Valid values: ALWAYS, NEVER. Default: ALWAYS."
  value       = aws_datasync_task.aws_datasync_task.overwrite_mode
}
output "preserve_devices" {
  description = "(Optional) Whether the DataSync Task should preserve the metadata of block and character devices in the source files system, and recreate the files with that device name and metadata on the destination. The DataSync Task can’t sync the actual contents of such devices, because many of the devices are non-terminal and don’t return an end of file (EOF) marker. Valid values: NONE, PRESERVE. Default: NONE (ignore special devices)."
  value       = aws_datasync_task.aws_datasync_task.preserve_devices
}
output "schedule" {
  description = "(Optional) Specifies a schedule used to periodically transfer files from a source to a destination location."
  value       = aws_datasync_task.aws_datasync_task.schedule
}
output "name" {
  description = "(Optional) Name of the DataSync Task."
  value       = aws_datasync_task.aws_datasync_task.name
}
output "verify_mode" {
  description = "(Optional) Whether a data integrity verification should be performed at the end of a task execution after all data and metadata have been transferred. Valid values: NONE, POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED. Default: POINT_IN_TIME_CONSISTENT.Schedule"
  value       = aws_datasync_task.aws_datasync_task.verify_mode
}
output "posix_permissions" {
  description = "(Optional) Determines which users or groups can access a file for a specific purpose such as reading, writing, or execution of the file. Valid values: NONE, PRESERVE. Default: PRESERVE."
  value       = aws_datasync_task.aws_datasync_task.posix_permissions
}
output "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options Argument Reference~> strongNOTE: If atime is set to BEST_EFFORT, mtime must be set to PRESERVE. If atime is set to NONE, mtime must be set to NONE.options configuration block:"
  value       = aws_datasync_task.aws_datasync_task.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_datasync_task.aws_datasync_task.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Task."
  value       = aws_datasync_task.aws_datasync_task.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_datasync_task.aws_datasync_task.create
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Task."
  value       = aws_datasync_task.aws_datasync_task.id
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
      "kind/name"                   = "aws_datasync_task"
      "kind/version"                = "v0.1.0"
    }
  }
}
