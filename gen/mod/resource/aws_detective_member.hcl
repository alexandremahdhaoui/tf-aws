resource "aws_detective_member" "aws_detective_member" {
  account_id                 = var.account_id
  disable_email_notification = var.disable_email_notification
  id                         = var.id
  message                    = var.message
  administrator_id           = var.administrator_id
  email_address              = var.email_address
  graph_arn                  = var.graph_arn
  invited_time               = var.invited_time
  status                     = var.status
  volume_usage_in_bytes      = var.volume_usage_in_bytes
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "status" {
  description = "Current membership status of the member account."
  type        = string
}
variable "volume_usage_in_bytes" {
  description = "Data volume in bytes per day for the member account."
  type        = string
}
variable "administrator_id" {
  description = "AWS account ID for the administrator account."
  type        = string
}
variable "email_address" {
  description = "(Required) Email address for the account."
  type        = string
}
variable "graph_arn" {
  description = "(Required) ARN of the behavior graph to invite the member accounts to contribute their data to."
  type        = string
}
variable "invited_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when an Amazon Detective membership invitation was last sent to the account."
  type        = string
}
variable "account_id" {
  description = "(Required) AWS account ID for the account."
  type        = string
}
variable "disable_email_notification" {
  description = "(Optional) If set to true, then the root user of the invited account will emnot receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "Unique identifier (ID) of the Detective."
  type        = string
}
variable "message" {
  description = "(Optional) A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation."
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
output "administrator_id" {
  description = "AWS account ID for the administrator account."
  value       = aws_detective_member.aws_detective_member.administrator_id
}
output "email_address" {
  description = "(Required) Email address for the account."
  value       = aws_detective_member.aws_detective_member.email_address
}
output "graph_arn" {
  description = "(Required) ARN of the behavior graph to invite the member accounts to contribute their data to."
  value       = aws_detective_member.aws_detective_member.graph_arn
}
output "invited_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when an Amazon Detective membership invitation was last sent to the account."
  value       = aws_detective_member.aws_detective_member.invited_time
}
output "status" {
  description = "Current membership status of the member account."
  value       = aws_detective_member.aws_detective_member.status
}
output "volume_usage_in_bytes" {
  description = "Data volume in bytes per day for the member account."
  value       = aws_detective_member.aws_detective_member.volume_usage_in_bytes
}
output "account_id" {
  description = "(Required) AWS account ID for the account."
  value       = aws_detective_member.aws_detective_member.account_id
}
output "disable_email_notification" {
  description = "(Optional) If set to true, then the root user of the invited account will emnot receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_detective_member.aws_detective_member.disable_email_notification
}
output "id" {
  description = "Unique identifier (ID) of the Detective."
  value       = aws_detective_member.aws_detective_member.id
}
output "message" {
  description = "(Optional) A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation."
  value       = aws_detective_member.aws_detective_member.message
}
output "administrator_id" {
  description = "AWS account ID for the administrator account."
  value       = aws_detective_member.aws_detective_member.administrator_id
}
output "id" {
  description = "Unique identifier (ID) of the Detective."
  value       = aws_detective_member.aws_detective_member.id
}
output "invited_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when an Amazon Detective membership invitation was last sent to the account."
  value       = aws_detective_member.aws_detective_member.invited_time
}
output "status" {
  description = "Current membership status of the member account."
  value       = aws_detective_member.aws_detective_member.status
}
output "updated_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, of the most recent change to the member account's status."
  value       = aws_detective_member.aws_detective_member.updated_time
}
output "volume_usage_in_bytes" {
  description = "Data volume in bytes per day for the member account."
  value       = aws_detective_member.aws_detective_member.volume_usage_in_bytes
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
      "kind/name"                   = "aws_detective_member"
      "kind/version"                = "v0.1.0"
    }
  }
}
