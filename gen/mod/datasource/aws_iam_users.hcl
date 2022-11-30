datasource "aws_iam_users" "aws_iam_users" {
  name_regex  = var.name_regex
  path_prefix = var.path_prefix
  arns        = var.arns
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arns" {
  description = "Set of ARNs of the matched IAM users."
  type        = string
}
variable "name_regex" {
  description = "(Optional) Regex string to apply to the IAM users list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns."
  type        = string
}
variable "path_prefix" {
  description = "(Optional) Path prefix for filtering the results. For example, the prefix /division_abc/subdivision_xyz/ gets all users whose path starts with /division_abc/subdivision_xyz/. If it is not included, it defaults to a slash (/), listing all users. For more details, check out list-users in the AWS CLI reference."
  type        = string
}
output "arns" {
  description = "Set of ARNs of the matched IAM users."
  value       = aws_iam_users.aws_iam_users.arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_regex" {
  description = "(Optional) Regex string to apply to the IAM users list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns."
  value       = aws_iam_users.aws_iam_users.name_regex
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path_prefix" {
  description = "(Optional) Path prefix for filtering the results. For example, the prefix /division_abc/subdivision_xyz/ gets all users whose path starts with /division_abc/subdivision_xyz/. If it is not included, it defaults to a slash (/), listing all users. For more details, check out list-users in the AWS CLI reference."
  value       = aws_iam_users.aws_iam_users.path_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "Set of ARNs of the matched IAM users."
  value       = aws_iam_users.aws_iam_users.arns
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
}
