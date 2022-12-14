resource "aws_guardduty_member" "aws_guardduty_member" {
  detector_id                = var.detector_id
  disable_email_notification = var.disable_email_notification
  id                         = var.id
  account_id                 = var.account_id
  create                     = var.create
  email                      = var.email
  invitation_message         = var.invitation_message
  invite                     = var.invite
  relationship_status        = var.relationship_status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "detector_id" {
  description = "(Required) The detector ID of the GuardDuty account where you want to create member accounts."
  type        = string
}
variable "disable_email_notification" {
  description = "(Optional) Boolean whether an email notification is sent to the accounts. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the GuardDuty member"
  type        = string
}
variable "account_id" {
  description = "(Required) AWS account ID for member account."
  type        = string
}
variable "create" {
  description = "(Default 1m)"
  type        = string
}
variable "email" {
  description = "(Required) Email address for member account."
  type        = string
}
variable "invitation_message" {
  description = "(Optional) Message for invitation."
  type        = string
  default     = ""
}
variable "invite" {
  description = "(Optional) Boolean whether to invite the account to GuardDuty as a member. Defaults to false. To detect if an invitation needs to be (re-)sent, the Terraform state value is true based on a relationship_status of Disabled, Enabled, Invited, or EmailVerificationInProgress."
  type        = string
  default     = ""
}
variable "relationship_status" {
  description = "The status of the relationship between the member account and its primary account. More information can be found in Amazon GuardDuty API Reference.TimeoutsConfiguration options:"
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
output "create" {
  description = "(Default 1m)"
  value       = aws_guardduty_member.aws_guardduty_member.create
}
output "email" {
  description = "(Required) Email address for member account."
  value       = aws_guardduty_member.aws_guardduty_member.email
}
output "invitation_message" {
  description = "(Optional) Message for invitation."
  value       = aws_guardduty_member.aws_guardduty_member.invitation_message
}
output "invite" {
  description = "(Optional) Boolean whether to invite the account to GuardDuty as a member. Defaults to false. To detect if an invitation needs to be (re-)sent, the Terraform state value is true based on a relationship_status of Disabled, Enabled, Invited, or EmailVerificationInProgress."
  value       = aws_guardduty_member.aws_guardduty_member.invite
}
output "relationship_status" {
  description = "The status of the relationship between the member account and its primary account. More information can be found in Amazon GuardDuty API Reference.TimeoutsConfiguration options:"
  value       = aws_guardduty_member.aws_guardduty_member.relationship_status
}
output "account_id" {
  description = "(Required) AWS account ID for member account."
  value       = aws_guardduty_member.aws_guardduty_member.account_id
}
output "disable_email_notification" {
  description = "(Optional) Boolean whether an email notification is sent to the accounts. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_guardduty_member.aws_guardduty_member.disable_email_notification
}
output "id" {
  description = "The ID of the GuardDuty member"
  value       = aws_guardduty_member.aws_guardduty_member.id
}
output "detector_id" {
  description = "(Required) The detector ID of the GuardDuty account where you want to create member accounts."
  value       = aws_guardduty_member.aws_guardduty_member.detector_id
}
output "create" {
  description = "(Default 1m)"
  value       = aws_guardduty_member.aws_guardduty_member.create
}
output "id" {
  description = "The ID of the GuardDuty member"
  value       = aws_guardduty_member.aws_guardduty_member.id
}
output "relationship_status" {
  description = "The status of the relationship between the member account and its primary account. More information can be found in Amazon GuardDuty API Reference.TimeoutsConfiguration options:"
  value       = aws_guardduty_member.aws_guardduty_member.relationship_status
}
output "update" {
  description = "(Default 1m)"
  value       = aws_guardduty_member.aws_guardduty_member.update
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
      "kind/name"                   = "aws_guardduty_member"
      "kind/version"                = "v0.1.0"
    }
  }
}
