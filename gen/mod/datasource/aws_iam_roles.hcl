datasource "aws_iam_roles" "aws_iam_roles" {
  arns        = var.arns
  name_regex  = var.name_regex
  path_prefix = var.path_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name_regex" {
  description = "(Optional) Regex string to apply to the IAM roles list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns."
  type        = string
  default     = ""
}
variable "path_prefix" {
  description = "(Optional) Path prefix for filtering the results. For example, the prefix /application_abc/component_xyz/ gets all roles whose path starts with /application_abc/component_xyz/. If it is not included, it defaults to a slash (/), listing all roles. For more details, check out list-roles in the AWS CLI reference."
  type        = string
  default     = ""
}
variable "arns" {
  description = "Set of ARNs of the matched IAM roles."
  type        = string
}
output "name_regex" {
  description = "(Optional) Regex string to apply to the IAM roles list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns."
  value       = aws_iam_roles.aws_iam_roles.name_regex
}
output "path_prefix" {
  description = "(Optional) Path prefix for filtering the results. For example, the prefix /application_abc/component_xyz/ gets all roles whose path starts with /application_abc/component_xyz/. If it is not included, it defaults to a slash (/), listing all roles. For more details, check out list-roles in the AWS CLI reference."
  value       = aws_iam_roles.aws_iam_roles.path_prefix
}
output "arns" {
  description = "Set of ARNs of the matched IAM roles."
  value       = aws_iam_roles.aws_iam_roles.arns
}
output "arns" {
  description = "Set of ARNs of the matched IAM roles."
  value       = aws_iam_roles.aws_iam_roles.arns
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
