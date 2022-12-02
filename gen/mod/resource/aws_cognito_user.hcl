resource "aws_cognito_user" "aws_cognito_user" {
  enabled                  = var.enabled
  mfa_preference           = var.mfa_preference
  status                   = var.status
  temporary_password       = var.temporary_password
  attributes               = var.attributes
  desired_delivery_mediums = var.desired_delivery_mediums
  user_pool_id             = var.user_pool_id
  validation_data          = var.validation_data
  client_metadata          = var.client_metadata
  force_alias_creation     = var.force_alias_creation
  message_action           = var.message_action
  password                 = var.password
  sub                      = var.sub
  user_name                = var.user_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enabled" {
  description = "(Optional) Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the enabled value. The behavior can be changed with message_action argument. Defaults to true."
  type        = string
  default     = ""
}
variable "mfa_preference" {
  description = "user's settings regarding MFA settings and preferences."
  type        = string
  default     = ""
}
variable "status" {
  description = "current user status."
  type        = string
  default     = ""
}
variable "temporary_password" {
  description = "(Optional) The user's temporary password. Conflicts with password."
  type        = string
  default     = ""
}
variable "attributes" {
  description = "(Optional) A map that contains user attributes and attribute values to be set for the user."
  type        = string
  default     = ""
}
variable "desired_delivery_mediums" {
  description = "(Optional) A list of mediums to the welcome message will be sent through. Allowed values are EMAIL and SMS. If it's provided, make sure you have also specified email attribute for the EMAIL medium and phone_number for the SMS. More than one value can be specified. Amazon Cognito does not store the desired_delivery_mediums value. Defaults to [\"SMS\"]."
  type        = string
  default     = ""
}
variable "user_pool_id" {
  description = "(Required) The user pool ID for the user pool where the user will be created."
  type        = string
}
variable "sub" {
  description = "unique user id that is never reassignable to another user."
  type        = string
  default     = ""
}
variable "user_name" {
  description = "(Required) The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed."
  type        = string
}
variable "validation_data" {
  description = "(Optional) The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the validation_data value. For more information, see Customizing User Pool Workflows with Lambda Triggers.~> strongNOTE: Clearing password or temporary_password does not reset user's password in Cognito.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "client_metadata" {
  description = "(Optional) A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the client_metadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see Customizing User Pool Workflows with Lambda Triggers."
  type        = string
  default     = ""
}
variable "force_alias_creation" {
  description = "(Optional) If this parameter is set to True and the phone_number or email address specified in the attributes parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the force_alias_creation value. Defaults to false."
  type        = string
  default     = ""
}
variable "message_action" {
  description = "(Optional) Set to RESEND to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to SUPPRESS to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the message_action value."
  type        = string
  default     = ""
}
variable "password" {
  description = "(Optional) The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only temporary_password value. You can suppress sending the welcome message with the message_action argument. Amazon Cognito does not store the password value. Conflicts with temporary_password."
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
output "validation_data" {
  description = "(Optional) The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the validation_data value. For more information, see Customizing User Pool Workflows with Lambda Triggers.~> strongNOTE: Clearing password or temporary_password does not reset user's password in Cognito.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cognito_user.aws_cognito_user.validation_data
}
output "client_metadata" {
  description = "(Optional) A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the client_metadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see Customizing User Pool Workflows with Lambda Triggers."
  value       = aws_cognito_user.aws_cognito_user.client_metadata
}
output "force_alias_creation" {
  description = "(Optional) If this parameter is set to True and the phone_number or email address specified in the attributes parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the force_alias_creation value. Defaults to false."
  value       = aws_cognito_user.aws_cognito_user.force_alias_creation
}
output "message_action" {
  description = "(Optional) Set to RESEND to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to SUPPRESS to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the message_action value."
  value       = aws_cognito_user.aws_cognito_user.message_action
}
output "password" {
  description = "(Optional) The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only temporary_password value. You can suppress sending the welcome message with the message_action argument. Amazon Cognito does not store the password value. Conflicts with temporary_password."
  value       = aws_cognito_user.aws_cognito_user.password
}
output "sub" {
  description = "unique user id that is never reassignable to another user."
  value       = aws_cognito_user.aws_cognito_user.sub
}
output "user_name" {
  description = "(Required) The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed."
  value       = aws_cognito_user.aws_cognito_user.user_name
}
output "enabled" {
  description = "(Optional) Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the enabled value. The behavior can be changed with message_action argument. Defaults to true."
  value       = aws_cognito_user.aws_cognito_user.enabled
}
output "mfa_preference" {
  description = "user's settings regarding MFA settings and preferences."
  value       = aws_cognito_user.aws_cognito_user.mfa_preference
}
output "status" {
  description = "current user status."
  value       = aws_cognito_user.aws_cognito_user.status
}
output "temporary_password" {
  description = "(Optional) The user's temporary password. Conflicts with password."
  value       = aws_cognito_user.aws_cognito_user.temporary_password
}
output "attributes" {
  description = "(Optional) A map that contains user attributes and attribute values to be set for the user."
  value       = aws_cognito_user.aws_cognito_user.attributes
}
output "desired_delivery_mediums" {
  description = "(Optional) A list of mediums to the welcome message will be sent through. Allowed values are EMAIL and SMS. If it's provided, make sure you have also specified email attribute for the EMAIL medium and phone_number for the SMS. More than one value can be specified. Amazon Cognito does not store the desired_delivery_mediums value. Defaults to [\"SMS\"]."
  value       = aws_cognito_user.aws_cognito_user.desired_delivery_mediums
}
output "user_pool_id" {
  description = "(Required) The user pool ID for the user pool where the user will be created."
  value       = aws_cognito_user.aws_cognito_user.user_pool_id
}
output "mfa_preference" {
  description = "user's settings regarding MFA settings and preferences."
  value       = aws_cognito_user.aws_cognito_user.mfa_preference
}
output "status" {
  description = "current user status."
  value       = aws_cognito_user.aws_cognito_user.status
}
output "sub" {
  description = "unique user id that is never reassignable to another user."
  value       = aws_cognito_user.aws_cognito_user.sub
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
      "kind/name"                   = "aws_cognito_user"
      "kind/version"                = "v0.1.0"
    }
  }
}
