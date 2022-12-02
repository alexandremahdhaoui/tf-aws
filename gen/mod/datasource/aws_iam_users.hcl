datasource "aws_iam_users" "aws_iam_users" {
  arns        = var.arns
  name_regex  = var.name_regex
  path_prefix = var.path_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name_regex" {
  description = "(Optional) Regex string to apply to the IAM users list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns."
  type        = string
  default     = ""
}
variable "path_prefix" {
  description = "(Optional) Path prefix for filtering the results. For example, the prefix /division_abc/subdivision_xyz/ gets all users whose path starts with /division_abc/subdivision_xyz/. If it is not included, it defaults to a slash (/), listing all users. For more details, check out list-users in the AWS CLI reference."
  type        = string
  default     = ""
}
variable "arns" {
  description = "Set of ARNs of the matched IAM users."
  type        = string
}
output "name_regex" {
  description = "(Optional) Regex string to apply to the IAM users list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns."
  value       = aws_iam_users.aws_iam_users.name_regex
}
output "path_prefix" {
  description = "(Optional) Path prefix for filtering the results. For example, the prefix /division_abc/subdivision_xyz/ gets all users whose path starts with /division_abc/subdivision_xyz/. If it is not included, it defaults to a slash (/), listing all users. For more details, check out list-users in the AWS CLI reference."
  value       = aws_iam_users.aws_iam_users.path_prefix
}
output "arns" {
  description = "Set of ARNs of the matched IAM users."
  value       = aws_iam_users.aws_iam_users.arns
}
output "arns" {
  description = "Set of ARNs of the matched IAM users."
  value       = aws_iam_users.aws_iam_users.arns
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
