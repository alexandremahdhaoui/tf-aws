resource "aws_connect_user" "aws_connect_user" {
  id                            = var.id
  tags                          = var.tags
  tags_all                      = var.tags_all
  security_profile_ids          = var.security_profile_ids
  arn                           = var.arn
  last_name                     = var.last_name
  phone_config                  = var.phone_config
  name                          = var.name
  password                      = var.password
  routing_profile_id            = var.routing_profile_id
  auto_accept                   = var.auto_accept
  email                         = var.email
  first_name                    = var.first_name
  hierarchy_group_id            = var.hierarchy_group_id
  identity_info                 = var.identity_info
  instance_id                   = var.instance_id
  phone_type                    = var.phone_type
  after_contact_work_time_limit = var.after_contact_work_time_limit
  desk_phone_number             = var.desk_phone_number
  directory_user_id             = var.directory_user_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "directory_user_id" {
  description = "(Optional) The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned."
  type        = string
  default     = ""
}
variable "hierarchy_group_id" {
  description = "(Optional) The identifier of the hierarchy group for the user."
  type        = string
  default     = ""
}
variable "identity_info" {
  description = "(Optional) A block that contains information about the identity of the user. Documented below."
  type        = string
  default     = ""
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "phone_type" {
  description = "(Required) The phone type. Valid values are DESK_PHONE and SOFT_PHONE.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "after_contact_work_time_limit" {
  description = "(Optional) The After Call Work (ACW) timeout setting, in seconds. Minimum value of 0."
  type        = string
  default     = ""
}
variable "desk_phone_number" {
  description = "(Optional) The phone number for the user's desk phone. Required if phone_type is set as DESK_PHONE."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "id" {
  description = ":)."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the user. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A identity_info block supports the following arguments:"
  type        = string
  default     = ""
}
variable "phone_config" {
  description = "(Required) A block that contains information about the phone settings for the user. Documented below."
  type        = string
}
variable "security_profile_ids" {
  description = "(Required) A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see Best Practices for Security Profiles in the Amazon Connect Administrator Guide."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the user."
  type        = string
}
variable "last_name" {
  description = "(Optional) The last name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100.A phone_config block supports the following arguments:"
  type        = string
  default     = ""
}
variable "first_name" {
  description = "(Optional) The first name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from [a-zA-Z0-9_-.\\@]+."
  type        = string
}
variable "password" {
  description = "(Optional) The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password."
  type        = string
  default     = ""
}
variable "routing_profile_id" {
  description = "(Required) The identifier of the routing profile for the user."
  type        = string
}
variable "auto_accept" {
  description = "(Optional) When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically."
  type        = string
  default     = ""
}
variable "email" {
  description = "(Optional) The email address. If you are using SAML for identity management and include this parameter, an error is returned. Note that updates to the email is supported. From the UpdateUserIdentityInfo API documentation it is strongly recommended to limit who has the ability to invoke UpdateUserIdentityInfo. Someone with that ability can change the login credentials of other users by changing their email address. This poses a security risk to your organization. They can change the email address of a user to the attacker's email address, and then reset the password through email. For more information, see Best Practices for Security Profiles in the Amazon Connect Administrator Guide."
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
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_user.aws_connect_user.tags_all
}
output "id" {
  description = ":)."
  value       = aws_connect_user.aws_connect_user.id
}
output "tags" {
  description = "(Optional) Tags to apply to the user. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A identity_info block supports the following arguments:"
  value       = aws_connect_user.aws_connect_user.tags
}
output "phone_config" {
  description = "(Required) A block that contains information about the phone settings for the user. Documented below."
  value       = aws_connect_user.aws_connect_user.phone_config
}
output "security_profile_ids" {
  description = "(Required) A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see Best Practices for Security Profiles in the Amazon Connect Administrator Guide."
  value       = aws_connect_user.aws_connect_user.security_profile_ids
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the user."
  value       = aws_connect_user.aws_connect_user.arn
}
output "last_name" {
  description = "(Optional) The last name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100.A phone_config block supports the following arguments:"
  value       = aws_connect_user.aws_connect_user.last_name
}
output "first_name" {
  description = "(Optional) The first name. This is required if you are using Amazon Connect or SAML for identity management. Minimum length of 1. Maximum length of 100."
  value       = aws_connect_user.aws_connect_user.first_name
}
output "name" {
  description = "(Required) The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from [a-zA-Z0-9_-.\\@]+."
  value       = aws_connect_user.aws_connect_user.name
}
output "password" {
  description = "(Optional) The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password."
  value       = aws_connect_user.aws_connect_user.password
}
output "routing_profile_id" {
  description = "(Required) The identifier of the routing profile for the user."
  value       = aws_connect_user.aws_connect_user.routing_profile_id
}
output "auto_accept" {
  description = "(Optional) When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically."
  value       = aws_connect_user.aws_connect_user.auto_accept
}
output "email" {
  description = "(Optional) The email address. If you are using SAML for identity management and include this parameter, an error is returned. Note that updates to the email is supported. From the UpdateUserIdentityInfo API documentation it is strongly recommended to limit who has the ability to invoke UpdateUserIdentityInfo. Someone with that ability can change the login credentials of other users by changing their email address. This poses a security risk to your organization. They can change the email address of a user to the attacker's email address, and then reset the password through email. For more information, see Best Practices for Security Profiles in the Amazon Connect Administrator Guide."
  value       = aws_connect_user.aws_connect_user.email
}
output "directory_user_id" {
  description = "(Optional) The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned."
  value       = aws_connect_user.aws_connect_user.directory_user_id
}
output "hierarchy_group_id" {
  description = "(Optional) The identifier of the hierarchy group for the user."
  value       = aws_connect_user.aws_connect_user.hierarchy_group_id
}
output "identity_info" {
  description = "(Optional) A block that contains information about the identity of the user. Documented below."
  value       = aws_connect_user.aws_connect_user.identity_info
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_user.aws_connect_user.instance_id
}
output "phone_type" {
  description = "(Required) The phone type. Valid values are DESK_PHONE and SOFT_PHONE.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_user.aws_connect_user.phone_type
}
output "after_contact_work_time_limit" {
  description = "(Optional) The After Call Work (ACW) timeout setting, in seconds. Minimum value of 0."
  value       = aws_connect_user.aws_connect_user.after_contact_work_time_limit
}
output "desk_phone_number" {
  description = "(Optional) The phone number for the user's desk phone. Required if phone_type is set as DESK_PHONE."
  value       = aws_connect_user.aws_connect_user.desk_phone_number
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_user.aws_connect_user.tags_all
}
output "user_id" {
  description = "The identifier for the user."
  value       = aws_connect_user.aws_connect_user.user_id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the user."
  value       = aws_connect_user.aws_connect_user.arn
}
output "id" {
  description = ":)."
  value       = aws_connect_user.aws_connect_user.id
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
      "kind/name"                   = "aws_connect_user"
      "kind/version"                = "v0.1.0"
    }
  }
}
