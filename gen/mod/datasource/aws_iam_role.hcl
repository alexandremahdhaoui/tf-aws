datasource "aws_iam_role" "aws_iam_role" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "assume_role_policy" {
  description = "Policy document associated with the role."
  value       = aws_iam_role.aws_iam_role.assume_role_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "Path to the role."
  value       = aws_iam_role.aws_iam_role.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permissions_boundary" {
  description = "The ARN of the policy that is used to set the permissions boundary for the role."
  value       = aws_iam_role.aws_iam_role.permissions_boundary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unique_id" {
  description = "Stable and unique string identifying the role."
  value       = aws_iam_role.aws_iam_role.unique_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the role."
  value       = aws_iam_role.aws_iam_role.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_date" {
  description = "Creation date of the role in RFC 3339 format."
  value       = aws_iam_role.aws_iam_role.create_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description for the role."
  value       = aws_iam_role.aws_iam_role.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Friendly IAM role name to match."
  value       = aws_iam_role.aws_iam_role.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_session_duration" {
  description = "Maximum session duration."
  value       = aws_iam_role.aws_iam_role.max_session_duration
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
