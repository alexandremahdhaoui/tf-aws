resource "aws_iam_account_password_policy" "aws_iam_account_password_policy" {
  max_password_age               = var.max_password_age
  minimum_password_length        = var.minimum_password_length
  require_lowercase_characters   = var.require_lowercase_characters
  require_uppercase_characters   = var.require_uppercase_characters
  allow_users_to_change_password = var.allow_users_to_change_password
  hard_expiry                    = var.hard_expiry
  password_reuse_prevention      = var.password_reuse_prevention
  require_numbers                = var.require_numbers
  require_symbols                = var.require_symbols
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "max_password_age" {
  description = "(Optional) The number of days that an user password is valid."
  type        = string
  default     = ""
}
variable "minimum_password_length" {
  description = "(Optional) Minimum length to require for user passwords."
  type        = string
  default     = ""
}
variable "require_lowercase_characters" {
  description = "(Optional) Whether to require lowercase characters for user passwords."
  type        = string
  default     = ""
}
variable "require_uppercase_characters" {
  description = "(Optional) Whether to require uppercase characters for user passwords.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "allow_users_to_change_password" {
  description = "(Optional) Whether to allow users to change their own password"
  type        = string
  default     = ""
}
variable "hard_expiry" {
  description = "(Optional) Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)"
  type        = string
  default     = ""
}
variable "password_reuse_prevention" {
  description = "(Optional) The number of previous passwords that users are prevented from reusing."
  type        = string
  default     = ""
}
variable "require_numbers" {
  description = "(Optional) Whether to require numbers for user passwords."
  type        = string
  default     = ""
}
variable "require_symbols" {
  description = "(Optional) Whether to require symbols for user passwords."
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
output "allow_users_to_change_password" {
  description = "(Optional) Whether to allow users to change their own password"
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.allow_users_to_change_password
}
output "hard_expiry" {
  description = "(Optional) Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)"
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.hard_expiry
}
output "password_reuse_prevention" {
  description = "(Optional) The number of previous passwords that users are prevented from reusing."
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.password_reuse_prevention
}
output "require_numbers" {
  description = "(Optional) Whether to require numbers for user passwords."
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.require_numbers
}
output "require_symbols" {
  description = "(Optional) Whether to require symbols for user passwords."
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.require_symbols
}
output "require_uppercase_characters" {
  description = "(Optional) Whether to require uppercase characters for user passwords.In addition to all arguments above, the following attributes are exported:"
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.require_uppercase_characters
}
output "max_password_age" {
  description = "(Optional) The number of days that an user password is valid."
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.max_password_age
}
output "minimum_password_length" {
  description = "(Optional) Minimum length to require for user passwords."
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.minimum_password_length
}
output "require_lowercase_characters" {
  description = "(Optional) Whether to require lowercase characters for user passwords."
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.require_lowercase_characters
}
output "expire_passwords" {
  description = "Indicates whether passwords in the account expire. Returns true if max_password_age contains a value greater than 0. Returns false if it is 0 or emnot present."
  value       = aws_iam_account_password_policy.aws_iam_account_password_policy.expire_passwords
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
      "kind/name"                   = "aws_iam_account_password_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
