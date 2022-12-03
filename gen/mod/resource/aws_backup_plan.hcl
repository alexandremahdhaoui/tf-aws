resource "aws_backup_plan" "aws_backup_plan" {
  rule_name                = var.rule_name
  schedule                 = var.schedule
  tags                     = var.tags
  advanced_backup_setting  = var.advanced_backup_setting
  copy_action              = var.copy_action
  delete_after             = var.delete_after
  tags_all                 = var.tags_all
  start_window             = var.start_window
  cold_storage_after       = var.cold_storage_after
  completion_window        = var.completion_window
  destination_vault_arn    = var.destination_vault_arn
  enable_continuous_backup = var.enable_continuous_backup
  lifecycle                = var.lifecycle
  name                     = var.name
  target_vault_name        = var.target_vault_name
  arn                      = var.arn
  backup_options           = var.backup_options
  id                       = var.id
  recovery_point_tags      = var.recovery_point_tags
  resource_type            = var.resource_type
  rule                     = var.rule
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "advanced_backup_setting" {
  description = "(Optional) An object that specifies backup options for each resource type."
  type        = string
  default     = ""
}
variable "copy_action" {
  description = "(Optional) Configuration block(s) with copy operation settings. Detailed below.Lifecycle ArgumentsFor stronglifecycle the following attributes are supported:"
  type        = string
  default     = ""
}
variable "delete_after" {
  description = "(Optional) Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than cold_storage_after.Copy Action ArgumentsFor strongcopy_action the following attributes are supported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "cold_storage_after" {
  description = "(Optional) Specifies the number of days after creation that a recovery point is moved to cold storage."
  type        = string
  default     = ""
}
variable "completion_window" {
  description = "(Optional) The amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error."
  type        = string
  default     = ""
}
variable "destination_vault_arn" {
  description = "(Required) An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for the copied backup.Advanced Backup Setting ArgumentsFor advanced_backup_setting the following attibutes are supported:"
  type        = string
}
variable "enable_continuous_backup" {
  description = "(Optional) Enable continuous backups for supported resources."
  type        = string
  default     = ""
}
variable "lifecycle" {
  description = "(Optional) The lifecycle defines when a protected resource is copied over to a backup vault and when it expires.  Fields documented above."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The display name of a backup plan."
  type        = string
}
variable "start_window" {
  description = "(Optional) The amount of time in minutes before beginning a backup."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the backup plan."
  type        = string
}
variable "backup_options" {
  description = "(Required) Specifies the backup option for a selected resource. This option is only available for Windows VSS backup jobs. Set to { WindowsVSS = \"enabled\" } to enable Windows VSS backup option and create a VSS Windows backup."
  type        = string
}
variable "id" {
  description = "The id of the backup plan."
  type        = string
}
variable "recovery_point_tags" {
  description = "(Optional) Metadata that you can assign to help organize the resources that you create."
  type        = string
  default     = ""
}
variable "resource_type" {
  description = "(Required) The type of AWS resource to be backed up. For VSS Windows backups, the only supported resource type is Amazon EC2. Valid values: EC2.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "rule" {
  description = "(Required) A rule object that specifies a scheduled task that is used to back up a selection of resources."
  type        = string
}
variable "target_vault_name" {
  description = "(Required) The name of a logical container where backups are stored."
  type        = string
}
variable "rule_name" {
  description = "(Required) An display name for a backup rule."
  type        = string
}
variable "schedule" {
  description = "(Optional) A CRON expression specifying when AWS Backup initiates a backup job."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Metadata that you can assign to help organize the plans you create. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Rule ArgumentsFor strongrule the following attributes are supported:"
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
output "advanced_backup_setting" {
  description = "(Optional) An object that specifies backup options for each resource type."
  value       = aws_backup_plan.aws_backup_plan.advanced_backup_setting
}
output "copy_action" {
  description = "(Optional) Configuration block(s) with copy operation settings. Detailed below.Lifecycle ArgumentsFor stronglifecycle the following attributes are supported:"
  value       = aws_backup_plan.aws_backup_plan.copy_action
}
output "delete_after" {
  description = "(Optional) Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than cold_storage_after.Copy Action ArgumentsFor strongcopy_action the following attributes are supported:"
  value       = aws_backup_plan.aws_backup_plan.delete_after
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_backup_plan.aws_backup_plan.tags_all
}
output "cold_storage_after" {
  description = "(Optional) Specifies the number of days after creation that a recovery point is moved to cold storage."
  value       = aws_backup_plan.aws_backup_plan.cold_storage_after
}
output "completion_window" {
  description = "(Optional) The amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error."
  value       = aws_backup_plan.aws_backup_plan.completion_window
}
output "destination_vault_arn" {
  description = "(Required) An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for the copied backup.Advanced Backup Setting ArgumentsFor advanced_backup_setting the following attibutes are supported:"
  value       = aws_backup_plan.aws_backup_plan.destination_vault_arn
}
output "enable_continuous_backup" {
  description = "(Optional) Enable continuous backups for supported resources."
  value       = aws_backup_plan.aws_backup_plan.enable_continuous_backup
}
output "lifecycle" {
  description = "(Optional) The lifecycle defines when a protected resource is copied over to a backup vault and when it expires.  Fields documented above."
  value       = aws_backup_plan.aws_backup_plan.lifecycle
}
output "name" {
  description = "(Required) The display name of a backup plan."
  value       = aws_backup_plan.aws_backup_plan.name
}
output "start_window" {
  description = "(Optional) The amount of time in minutes before beginning a backup."
  value       = aws_backup_plan.aws_backup_plan.start_window
}
output "arn" {
  description = "The ARN of the backup plan."
  value       = aws_backup_plan.aws_backup_plan.arn
}
output "backup_options" {
  description = "(Required) Specifies the backup option for a selected resource. This option is only available for Windows VSS backup jobs. Set to { WindowsVSS = \"enabled\" } to enable Windows VSS backup option and create a VSS Windows backup."
  value       = aws_backup_plan.aws_backup_plan.backup_options
}
output "id" {
  description = "The id of the backup plan."
  value       = aws_backup_plan.aws_backup_plan.id
}
output "recovery_point_tags" {
  description = "(Optional) Metadata that you can assign to help organize the resources that you create."
  value       = aws_backup_plan.aws_backup_plan.recovery_point_tags
}
output "resource_type" {
  description = "(Required) The type of AWS resource to be backed up. For VSS Windows backups, the only supported resource type is Amazon EC2. Valid values: EC2.In addition to all arguments above, the following attributes are exported:"
  value       = aws_backup_plan.aws_backup_plan.resource_type
}
output "rule" {
  description = "(Required) A rule object that specifies a scheduled task that is used to back up a selection of resources."
  value       = aws_backup_plan.aws_backup_plan.rule
}
output "target_vault_name" {
  description = "(Required) The name of a logical container where backups are stored."
  value       = aws_backup_plan.aws_backup_plan.target_vault_name
}
output "rule_name" {
  description = "(Required) An display name for a backup rule."
  value       = aws_backup_plan.aws_backup_plan.rule_name
}
output "schedule" {
  description = "(Optional) A CRON expression specifying when AWS Backup initiates a backup job."
  value       = aws_backup_plan.aws_backup_plan.schedule
}
output "tags" {
  description = "(Optional) Metadata that you can assign to help organize the plans you create. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Rule ArgumentsFor strongrule the following attributes are supported:"
  value       = aws_backup_plan.aws_backup_plan.tags
}
output "arn" {
  description = "The ARN of the backup plan."
  value       = aws_backup_plan.aws_backup_plan.arn
}
output "id" {
  description = "The id of the backup plan."
  value       = aws_backup_plan.aws_backup_plan.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_backup_plan.aws_backup_plan.tags_all
}
output "version" {
  description = "Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan."
  value       = aws_backup_plan.aws_backup_plan.version
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
      "kind/name"                   = "aws_backup_plan"
      "kind/version"                = "v0.1.0"
    }
  }
}
