resource "aws_macie2_member" "aws_macie2_member" {
  relationship_status                   = var.relationship_status
  status                                = var.status
  arn                                   = var.arn
  email                                 = var.email
  invitation_message                    = var.invitation_message
  invited_at                            = var.invited_at
  invite                                = var.invite
  tags                                  = var.tags
  account_id                            = var.account_id
  administrator_account_id              = var.administrator_account_id
  id                                    = var.id
  invitation_disable_email_notification = var.invitation_disable_email_notification
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "status" {
  description = "(Optional) Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to ENABLED. Valid values are ENABLED or PAUSED."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the account."
  type        = string
}
variable "email" {
  description = "(Required) The email address for the account."
  type        = string
}
variable "invitation_message" {
  description = "(Optional) A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation."
  type        = string
  default     = ""
}
variable "invited_at" {
  description = "The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account."
  type        = string
}
variable "relationship_status" {
  description = "The current status of the relationship between the account and the administrator account."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie."
  type        = string
  default     = ""
}
variable "account_id" {
  description = "(Required) The AWS account ID for the account."
  type        = string
}
variable "administrator_account_id" {
  description = "The AWS account ID for the administrator account."
  type        = string
}
variable "id" {
  description = "The unique identifier (ID) of the macie Member."
  type        = string
}
variable "invitation_disable_email_notification" {
  description = "(Optional) Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to true.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "invite" {
  description = "(Optional) Send an invitation to a member"
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
output "administrator_account_id" {
  description = "The AWS account ID for the administrator account."
  value       = aws_macie2_member.aws_macie2_member.administrator_account_id
}
output "id" {
  description = "The unique identifier (ID) of the macie Member."
  value       = aws_macie2_member.aws_macie2_member.id
}
output "invitation_disable_email_notification" {
  description = "(Optional) Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to true.In addition to all arguments above, the following attributes are exported:"
  value       = aws_macie2_member.aws_macie2_member.invitation_disable_email_notification
}
output "invite" {
  description = "(Optional) Send an invitation to a member"
  value       = aws_macie2_member.aws_macie2_member.invite
}
output "tags" {
  description = "(Optional) A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie."
  value       = aws_macie2_member.aws_macie2_member.tags
}
output "account_id" {
  description = "(Required) The AWS account ID for the account."
  value       = aws_macie2_member.aws_macie2_member.account_id
}
output "email" {
  description = "(Required) The email address for the account."
  value       = aws_macie2_member.aws_macie2_member.email
}
output "invitation_message" {
  description = "(Optional) A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation."
  value       = aws_macie2_member.aws_macie2_member.invitation_message
}
output "invited_at" {
  description = "The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account."
  value       = aws_macie2_member.aws_macie2_member.invited_at
}
output "relationship_status" {
  description = "The current status of the relationship between the account and the administrator account."
  value       = aws_macie2_member.aws_macie2_member.relationship_status
}
output "status" {
  description = "(Optional) Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to ENABLED. Valid values are ENABLED or PAUSED."
  value       = aws_macie2_member.aws_macie2_member.status
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the account."
  value       = aws_macie2_member.aws_macie2_member.arn
}
output "relationship_status" {
  description = "The current status of the relationship between the account and the administrator account."
  value       = aws_macie2_member.aws_macie2_member.relationship_status
}
output "updated_at" {
  description = "The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account."
  value       = aws_macie2_member.aws_macie2_member.updated_at
}
output "administrator_account_id" {
  description = "The AWS account ID for the administrator account."
  value       = aws_macie2_member.aws_macie2_member.administrator_account_id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the account."
  value       = aws_macie2_member.aws_macie2_member.arn
}
output "id" {
  description = "The unique identifier (ID) of the macie Member."
  value       = aws_macie2_member.aws_macie2_member.id
}
output "invited_at" {
  description = "The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account."
  value       = aws_macie2_member.aws_macie2_member.invited_at
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
      "kind/name"                   = "aws_macie2_member"
      "kind/version"                = "v0.1.0"
    }
  }
}
