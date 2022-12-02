datasource "aws_organizations_organization" "aws_organizations_organization" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the root"
  value       = aws_organizations_organization.aws_organizations_organization.arn
}
output "aws_service_access_principals" {
  description = "A list of AWS service principal names that have integration enabled with your organization. Organization must have feature_set set to ALL. For additional information, see the AWS Organizations User Guide."
  value       = aws_organizations_organization.aws_organizations_organization.aws_service_access_principals
}
output "roots" {
  description = "List of organization roots. All elements have these attributes:\n"
  value       = aws_organizations_organization.aws_organizations_organization.roots
}
output "master_account_arn" {
  description = "ARN of the account that is designated as the master account for the organization."
  value       = aws_organizations_organization.aws_organizations_organization.master_account_arn
}
output "non_master_accounts" {
  description = "List of organization accounts excluding the master account. For a list including the master account, see the accounts"
  value       = aws_organizations_organization.aws_organizations_organization.non_master_accounts
}
output "master_account_id" {
  description = "Unique identifier (ID) of the master account of an organization.Master Account Attributes ReferenceIf the account is the master account for the organization, the following attributes are also exported:"
  value       = aws_organizations_organization.aws_organizations_organization.master_account_id
}
output "name" {
  description = "The name of the policy type"
  value       = aws_organizations_organization.aws_organizations_organization.name
}
output "status" {
  description = "Status of the account"
  value       = aws_organizations_organization.aws_organizations_organization.status
}
output "accounts" {
  description = "List of organization accounts including the master account. For a list excluding the master account, see the non_master_accounts"
  value       = aws_organizations_organization.aws_organizations_organization.accounts
}
output "enabled_policy_types" {
  description = "A list of Organizations policy types that are enabled in the Organization Root. Organization must have feature_set set to ALL. For additional information about valid policy types (e.g., SERVICE_CONTROL_POLICY), see the AWS Organizations API Reference."
  value       = aws_organizations_organization.aws_organizations_organization.enabled_policy_types
}
output "id" {
  description = "Identifier of the root"
  value       = aws_organizations_organization.aws_organizations_organization.id
}
output "policy_types" {
  description = "List of policy types enabled for this root. All elements have these attributes:\n"
  value       = aws_organizations_organization.aws_organizations_organization.policy_types
}
output "email" {
  description = "Email of the account"
  value       = aws_organizations_organization.aws_organizations_organization.email
}
output "feature_set" {
  description = "FeatureSet of the organization."
  value       = aws_organizations_organization.aws_organizations_organization.feature_set
}
output "master_account_email" {
  description = "The email address that is associated with the AWS account that is designated as the master account for the organization."
  value       = aws_organizations_organization.aws_organizations_organization.master_account_email
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
}
