datasource "aws_iam_group" "aws_iam_group" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "User ARN."
  value       = aws_iam_group.aws_iam_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_id" {
  description = "Stable and unique string identifying the group."
  value       = aws_iam_group.aws_iam_group.group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "Path to the IAM user."
  value       = aws_iam_group.aws_iam_group.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_id" {
  description = "Stable and unique string identifying the IAM user."
  value       = aws_iam_group.aws_iam_group.user_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "users" {
  description = "List of objects containing group member information. See below.users"
  value       = aws_iam_group.aws_iam_group.users
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
