resource "aws_cognito_risk_configuration" "aws_cognito_risk_configuration" {
  medium_action                              = var.medium_action
  risk_exception_configuration               = var.risk_exception_configuration
  skipped_ip_range_list                      = var.skipped_ip_range_list
  account_takeover_risk_configuration        = var.account_takeover_risk_configuration
  actions                                    = var.actions
  from                                       = var.from
  high_action                                = var.high_action
  reply_to                                   = var.reply_to
  subject                                    = var.subject
  test_body                                  = var.test_body
  client_id                                  = var.client_id
  html_body                                  = var.html_body
  mfa_email                                  = var.mfa_email
  notify                                     = var.notify
  low_action                                 = var.low_action
  notify_configuration                       = var.notify_configuration
  user_pool_id                               = var.user_pool_id
  block_email                                = var.block_email
  compromised_credentials_risk_configuration = var.compromised_credentials_risk_configuration
  event_action                               = var.event_action
  event_filter                               = var.event_filter
  blocked_ip_range_list                      = var.blocked_ip_range_list
  no_action_email                            = var.no_action_email
  source_arn                                 = var.source_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "actions" {
  description = "(Required) The compromised credentials risk configuration actions. See details below.actions"
  type        = string
}
variable "from" {
  description = "(Optional) The email address that is sending the email. The address must be either individually verified with Amazon Simple Email Service, or from a domain that has been verified with Amazon SES."
  type        = string
}
variable "high_action" {
  description = "(Optional) Action to take for a high risk. See action block below."
  type        = string
}
variable "medium_action" {
  description = "(Optional) Action to take for a medium risk. See action block below.action"
  type        = string
}
variable "risk_exception_configuration" {
  description = "(Optional) The configuration to override the risk decision. See details below.account_takeover_risk_configuration"
  type        = string
}
variable "skipped_ip_range_list" {
  description = "(Optional) Risk detection isn't performed on the IP addresses in this range list. The IP range is in CIDR notation.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "account_takeover_risk_configuration" {
  description = "(Optional) The account takeover risk configuration. See details below."
  type        = string
}
variable "html_body" {
  description = "(Required) The email HTML body."
  type        = string
}
variable "mfa_email" {
  description = "(Optional) The multi-factor authentication (MFA) email template used when MFA is challenged as part of a detected risk. See notify email type below."
  type        = string
}
variable "notify" {
  description = "(Required) Whether to send a notification.compromised_credentials_risk_configuration"
  type        = string
}
variable "reply_to" {
  description = "(Optional) The destination to which the receiver of an email should reply to."
  type        = string
}
variable "subject" {
  description = "(Required) The email subject."
  type        = string
}
variable "test_body" {
  description = "(Required) The email text body.actions"
  type        = string
}
variable "client_id" {
  description = "(Optional) The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool."
  type        = string
}
variable "compromised_credentials_risk_configuration" {
  description = "(Optional) The compromised credentials risk configuration. See details below."
  type        = string
}
variable "event_action" {
  description = "(Optional) The event action. Valid values are BLOCK or NO_ACTION.risk_exception_configuration"
  type        = string
}
variable "event_filter" {
  description = "(Optional) Perform the action for these events. The default is to perform all events if no event filter is specified. Valid values are SIGN_IN, PASSWORD_CHANGE, and SIGN_UP."
  type        = string
}
variable "low_action" {
  description = "(Optional) Action to take for a low risk. See action block below."
  type        = string
}
variable "notify_configuration" {
  description = "(Required) The notify configuration used to construct email notifications. See details below."
  type        = string
}
variable "user_pool_id" {
  description = "(Required) The user pool ID."
  type        = string
}
variable "block_email" {
  description = "(Optional) Email template used when a detected risk event is blocked. See notify email type below."
  type        = string
}
variable "no_action_email" {
  description = "(Optional) The email template used when a detected risk event is allowed. See notify email type below."
  type        = string
}
variable "source_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the identity that is associated with the sending authorization policy. This identity permits Amazon Cognito to send for the email address specified in the From parameter.notify email type"
  type        = string
}
variable "blocked_ip_range_list" {
  description = "(Optional) Overrides the risk decision to always block the pre-authentication requests. The IP range is in CIDR notation, a compact representation of an IP address and its routing prefix."
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
output "actions" {
  description = "(Required) The compromised credentials risk configuration actions. See details below.actions"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.actions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "from" {
  description = "(Optional) The email address that is sending the email. The address must be either individually verified with Amazon Simple Email Service, or from a domain that has been verified with Amazon SES."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.from
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "high_action" {
  description = "(Optional) Action to take for a high risk. See action block below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.high_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "medium_action" {
  description = "(Optional) Action to take for a medium risk. See action block below.action"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.medium_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "risk_exception_configuration" {
  description = "(Optional) The configuration to override the risk decision. See details below.account_takeover_risk_configuration"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.risk_exception_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skipped_ip_range_list" {
  description = "(Optional) Risk detection isn't performed on the IP addresses in this range list. The IP range is in CIDR notation.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.skipped_ip_range_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_takeover_risk_configuration" {
  description = "(Optional) The account takeover risk configuration. See details below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.account_takeover_risk_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "html_body" {
  description = "(Required) The email HTML body."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.html_body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mfa_email" {
  description = "(Optional) The multi-factor authentication (MFA) email template used when MFA is challenged as part of a detected risk. See notify email type below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.mfa_email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notify" {
  description = "(Required) Whether to send a notification.compromised_credentials_risk_configuration"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.notify
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reply_to" {
  description = "(Optional) The destination to which the receiver of an email should reply to."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.reply_to
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subject" {
  description = "(Required) The email subject."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.subject
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "test_body" {
  description = "(Required) The email text body.actions"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.test_body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_id" {
  description = "(Optional) The app client ID. When the client ID is not provided, the same risk configuration is applied to all the clients in the User Pool."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.client_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compromised_credentials_risk_configuration" {
  description = "(Optional) The compromised credentials risk configuration. See details below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.compromised_credentials_risk_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_action" {
  description = "(Optional) The event action. Valid values are BLOCK or NO_ACTION.risk_exception_configuration"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.event_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_filter" {
  description = "(Optional) Perform the action for these events. The default is to perform all events if no event filter is specified. Valid values are SIGN_IN, PASSWORD_CHANGE, and SIGN_UP."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.event_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "low_action" {
  description = "(Optional) Action to take for a low risk. See action block below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.low_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notify_configuration" {
  description = "(Required) The notify configuration used to construct email notifications. See details below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.notify_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_pool_id" {
  description = "(Required) The user pool ID."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.user_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_email" {
  description = "(Optional) Email template used when a detected risk event is blocked. See notify email type below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.block_email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_action_email" {
  description = "(Optional) The email template used when a detected risk event is allowed. See notify email type below."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.no_action_email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the identity that is associated with the sending authorization policy. This identity permits Amazon Cognito to send for the email address specified in the From parameter.notify email type"
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.source_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "blocked_ip_range_list" {
  description = "(Optional) Overrides the risk decision to always block the pre-authentication requests. The IP range is in CIDR notation, a compact representation of an IP address and its routing prefix."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.blocked_ip_range_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The user pool ID. or The user pool ID and Client Id separated by a : if the configuration is client specific."
  value       = aws_cognito_risk_configuration.aws_cognito_risk_configuration.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
      "kind/name"                   = "aws_cognito_risk_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
