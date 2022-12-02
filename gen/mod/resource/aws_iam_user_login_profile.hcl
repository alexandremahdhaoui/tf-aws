resource "aws_iam_user_login_profile" "aws_iam_user_login_profile" {
  key_fingerprint         = var.key_fingerprint
  password                = var.password
  password_length         = var.password_length
  password_reset_required = var.password_reset_required
  pgp_key                 = var.pgp_key
  user                    = var.user
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on Terraform resource creation, not import."
  type        = string
}
variable "password" {
  description = "The plain text password, only available when pgp_key is not provided."
  type        = string
}
variable "password_length" {
  description = "(Optional) The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is 20."
  type        = string
  default     = ""
}
variable "password_reset_required" {
  description = "(Optional) Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "pgp_key" {
  description = "(Optional) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Only applies on resource creation. Drift detection is not possible with this argument."
  type        = string
  default     = ""
}
variable "user" {
  description = "(Required) The IAM user's name."
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
output "key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on Terraform resource creation, not import."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.key_fingerprint
}
output "password" {
  description = "The plain text password, only available when pgp_key is not provided."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.password
}
output "password_length" {
  description = "(Optional) The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is 20."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.password_length
}
output "password_reset_required" {
  description = "(Optional) Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.In addition to all arguments above, the following attributes are exported:"
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.password_reset_required
}
output "pgp_key" {
  description = "(Optional) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Only applies on resource creation. Drift detection is not possible with this argument."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.pgp_key
}
output "user" {
  description = "(Required) The IAM user's name."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.user
}
output "key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on Terraform resource creation, not import."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.key_fingerprint
}
output "password" {
  description = "The plain text password, only available when pgp_key is not provided."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.password
}
output "encrypted_password" {
  description = "The encrypted password, base64 encoded. Only available if password was handled on Terraform resource creation, not import.~> strongNOTE:terraform output password | base64 --decode | keybase pgp decrypt."
  value       = aws_iam_user_login_profile.aws_iam_user_login_profile.encrypted_password
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
      "kind/name"                   = "aws_iam_user_login_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
