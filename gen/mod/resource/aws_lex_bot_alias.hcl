resource "aws_lex_bot_alias" "aws_lex_bot_alias" {
  bot_name          = var.bot_name
  description       = var.description
  log_type          = var.log_type
  name              = var.name
  update            = var.update
  bot_version       = var.bot_version
  create            = var.create
  destination       = var.destination
  iam_role_arn      = var.iam_role_arn
  kms_key_arn       = var.kms_key_arn
  arn               = var.arn
  log_settings      = var.log_settings
  checksum          = var.checksum
  conversation_logs = var.conversation_logs
  created_date      = var.created_date
  last_updated_date = var.last_updated_date
  resource_arn      = var.resource_arn
  resource_prefix   = var.resource_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "iam_role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role used to write your logs to CloudWatch Logs or an S3 bucket. Must be between 20 and 2048 characters in length."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the key used to encrypt audio logs in an S3 bucket. This can only be specified when destination is set to S3. Must be between 20 and 2048 characters in length."
  type        = string
  default     = ""
}
variable "bot_version" {
  description = "(Required) The name of the bot."
  type        = string
}
variable "create" {
  description = "(Default 1m)"
  type        = string
}
variable "destination" {
  description = "(Required) The destination where logs are delivered. Options are CLOUDWATCH_LOGS or S3."
  type        = string
}
variable "arn" {
  description = "The ARN of the bot alias."
  type        = string
}
variable "log_settings" {
  description = "(Optional) The settings for your conversation logs. You can log text, audio, or both. Attributes are documented under log_settings.log_settingsThe settings for conversation logs."
  type        = string
  default     = ""
}
variable "last_updated_date" {
  description = "The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.TimeoutsConfiguration options:"
  type        = string
}
variable "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3 bucket where the logs are delivered. Must be less than or equal to 2048 characters in length."
  type        = string
}
variable "resource_prefix" {
  description = "(Computed) The prefix of the S3 object key for AUDIO logs or the log stream name for TEXT logs.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "checksum" {
  description = "Checksum of the bot alias."
  type        = string
}
variable "conversation_logs" {
  description = "(Optional) The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs."
  type        = string
  default     = ""
}
variable "created_date" {
  description = "The date that the bot alias was created."
  type        = string
}
variable "name" {
  description = "(Required) The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.conversation_logsContains information about conversation log settings."
  type        = string
}
variable "update" {
  description = "(Default 1m)"
  type        = string
}
variable "bot_name" {
  description = "(Required) The name of the bot."
  type        = string
}
variable "description" {
  description = "(Optional) A description of the alias. Must be less than or equal to 200 characters in length."
  type        = string
  default     = ""
}
variable "log_type" {
  description = "(Required) The type of logging that is enabled. Options are AUDIO or TEXT."
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
output "checksum" {
  description = "Checksum of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.checksum
}
output "conversation_logs" {
  description = "(Optional) The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.conversation_logs
}
output "created_date" {
  description = "The date that the bot alias was created."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.created_date
}
output "last_updated_date" {
  description = "The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.TimeoutsConfiguration options:"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.last_updated_date
}
output "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3 bucket where the logs are delivered. Must be less than or equal to 2048 characters in length."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.resource_arn
}
output "resource_prefix" {
  description = "(Computed) The prefix of the S3 object key for AUDIO logs or the log stream name for TEXT logs.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.resource_prefix
}
output "bot_name" {
  description = "(Required) The name of the bot."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.bot_name
}
output "description" {
  description = "(Optional) A description of the alias. Must be less than or equal to 200 characters in length."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.description
}
output "log_type" {
  description = "(Required) The type of logging that is enabled. Options are AUDIO or TEXT."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.log_type
}
output "name" {
  description = "(Required) The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.conversation_logsContains information about conversation log settings."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.name
}
output "update" {
  description = "(Default 1m)"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.update
}
output "bot_version" {
  description = "(Required) The name of the bot."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.bot_version
}
output "create" {
  description = "(Default 1m)"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.create
}
output "destination" {
  description = "(Required) The destination where logs are delivered. Options are CLOUDWATCH_LOGS or S3."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.destination
}
output "iam_role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role used to write your logs to CloudWatch Logs or an S3 bucket. Must be between 20 and 2048 characters in length."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.iam_role_arn
}
output "kms_key_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the key used to encrypt audio logs in an S3 bucket. This can only be specified when destination is set to S3. Must be between 20 and 2048 characters in length."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.kms_key_arn
}
output "arn" {
  description = "The ARN of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.arn
}
output "log_settings" {
  description = "(Optional) The settings for your conversation logs. You can log text, audio, or both. Attributes are documented under log_settings.log_settingsThe settings for conversation logs."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.log_settings
}
output "create" {
  description = "(Default 1m)"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.create
}
output "created_date" {
  description = "The date that the bot alias was created."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.created_date
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.delete
}
output "last_updated_date" {
  description = "The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.TimeoutsConfiguration options:"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.last_updated_date
}
output "update" {
  description = "(Default 1m)"
  value       = aws_lex_bot_alias.aws_lex_bot_alias.update
}
output "arn" {
  description = "The ARN of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.arn
}
output "checksum" {
  description = "Checksum of the bot alias."
  value       = aws_lex_bot_alias.aws_lex_bot_alias.checksum
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
      "kind/name"                   = "aws_lex_bot_alias"
      "kind/version"                = "v0.1.0"
    }
  }
}
