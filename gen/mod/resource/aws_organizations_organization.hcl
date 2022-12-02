resource "aws_organizations_organization" "aws_organizations_organization" {
  accounts                      = var.accounts
  email                         = var.email
  master_account_email          = var.master_account_email
  arn                           = var.arn
  aws_service_access_principals = var.aws_service_access_principals
  non_master_accounts           = var.non_master_accounts
  policy_types                  = var.policy_types
  roots                         = var.roots
  status                        = var.status
  enabled_policy_types          = var.enabled_policy_types
  id                            = var.id
  master_account_id             = var.master_account_id
  name                          = var.name
  feature_set                   = var.feature_set
  master_account_arn            = var.master_account_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the root"
  type        = string
}
variable "aws_service_access_principals" {
  description = "(Optional) List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have feature_set set to ALL. Some services do not support enablement via this endpoint, see warning in aws docs."
  type        = string
  default     = ""
}
variable "email" {
  description = "Email of the account"
  type        = string
}
variable "master_account_email" {
  description = "Email address of the master account"
  type        = string
}
variable "enabled_policy_types" {
  description = "(Optional) List of Organizations policy types to enable in the Organization Root. Organization must have feature_set set to ALL. For additional information about valid policy types (e.g., AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, SERVICE_CONTROL_POLICY, and TAG_POLICY), see the AWS Organizations API Reference."
  type        = string
  default     = ""
}
variable "id" {
  description = "Identifier of the root"
  type        = string
}
variable "non_master_accounts" {
  description = "List of organization accounts excluding the master account. For a list including the master account, see the accounts"
  type        = string
}
variable "policy_types" {
  description = ""
  type        = string
}
variable "roots" {
  description = "List of organization roots. All elements have these attributes:\n"
  type        = string
}
variable "status" {
  description = "Current status of the account"
  type        = string
}
variable "feature_set" {
  description = "(Optional) Specify \"ALL\" (default) or \"CONSOLIDATED_BILLING\".In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "master_account_arn" {
  description = "ARN of the master account"
  type        = string
}
variable "master_account_id" {
  description = "Identifier of the master account"
  type        = string
}
variable "name" {
  description = "The name of the policy type"
  type        = string
}
variable "accounts" {
  description = "List of organization accounts including the master account. For a list excluding the master account, see the non_master_accounts"
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
output "email" {
  description = "Email of the account"
  value       = aws_organizations_organization.aws_organizations_organization.email
}
output "master_account_email" {
  description = "Email address of the master account"
  value       = aws_organizations_organization.aws_organizations_organization.master_account_email
}
output "arn" {
  description = "ARN of the root"
  value       = aws_organizations_organization.aws_organizations_organization.arn
}
output "aws_service_access_principals" {
  description = "(Optional) List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have feature_set set to ALL. Some services do not support enablement via this endpoint, see warning in aws docs."
  value       = aws_organizations_organization.aws_organizations_organization.aws_service_access_principals
}
output "non_master_accounts" {
  description = "List of organization accounts excluding the master account. For a list including the master account, see the accounts"
  value       = aws_organizations_organization.aws_organizations_organization.non_master_accounts
}
output "policy_types" {
  description = ""
  value       = aws_organizations_organization.aws_organizations_organization.policy_types
}
output "roots" {
  description = "List of organization roots. All elements have these attributes:\n"
  value       = aws_organizations_organization.aws_organizations_organization.roots
}
output "status" {
  description = "Current status of the account"
  value       = aws_organizations_organization.aws_organizations_organization.status
}
output "enabled_policy_types" {
  description = "(Optional) List of Organizations policy types to enable in the Organization Root. Organization must have feature_set set to ALL. For additional information about valid policy types (e.g., AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, SERVICE_CONTROL_POLICY, and TAG_POLICY), see the AWS Organizations API Reference."
  value       = aws_organizations_organization.aws_organizations_organization.enabled_policy_types
}
output "id" {
  description = "Identifier of the root"
  value       = aws_organizations_organization.aws_organizations_organization.id
}
output "master_account_id" {
  description = "Identifier of the master account"
  value       = aws_organizations_organization.aws_organizations_organization.master_account_id
}
output "name" {
  description = "The name of the policy type"
  value       = aws_organizations_organization.aws_organizations_organization.name
}
output "feature_set" {
  description = "(Optional) Specify \"ALL\" (default) or \"CONSOLIDATED_BILLING\".In addition to all arguments above, the following attributes are exported:"
  value       = aws_organizations_organization.aws_organizations_organization.feature_set
}
output "master_account_arn" {
  description = "ARN of the master account"
  value       = aws_organizations_organization.aws_organizations_organization.master_account_arn
}
output "accounts" {
  description = "List of organization accounts including the master account. For a list excluding the master account, see the non_master_accounts"
  value       = aws_organizations_organization.aws_organizations_organization.accounts
}
output "status" {
  description = "The status of the policy type as it relates to the associated root"
  value       = aws_organizations_organization.aws_organizations_organization.status
}
output "master_account_email" {
  description = "Email address of the master account"
  value       = aws_organizations_organization.aws_organizations_organization.master_account_email
}
output "non_master_accounts" {
  description = "List of organization accounts excluding the master account. For a list including the master account, see the accounts"
  value       = aws_organizations_organization.aws_organizations_organization.non_master_accounts
}
output "roots" {
  description = "List of organization roots. All elements have these attributes:\n"
  value       = aws_organizations_organization.aws_organizations_organization.roots
}
output "id" {
  description = "Identifier of the root"
  value       = aws_organizations_organization.aws_organizations_organization.id
}
output "master_account_arn" {
  description = "ARN of the master account"
  value       = aws_organizations_organization.aws_organizations_organization.master_account_arn
}
output "master_account_id" {
  description = "Identifier of the master account"
  value       = aws_organizations_organization.aws_organizations_organization.master_account_id
}
output "name" {
  description = "The name of the policy type"
  value       = aws_organizations_organization.aws_organizations_organization.name
}
output "policy_types" {
  description = ""
  value       = aws_organizations_organization.aws_organizations_organization.policy_types
}
output "accounts" {
  description = "List of organization accounts including the master account. For a list excluding the master account, see the non_master_accounts"
  value       = aws_organizations_organization.aws_organizations_organization.accounts
}
output "arn" {
  description = "ARN of the root"
  value       = aws_organizations_organization.aws_organizations_organization.arn
}
output "email" {
  description = "Email of the account"
  value       = aws_organizations_organization.aws_organizations_organization.email
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
      "kind/name"                   = "aws_organizations_organization"
      "kind/version"                = "v0.1.0"
    }
  }
}
