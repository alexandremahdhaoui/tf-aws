datasource "aws_iam_user" "aws_iam_user" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_name" {
  description = "Name associated to this User"
  value       = aws_iam_user.aws_iam_user.user_name
}
output "arn" {
  description = "ARN assigned by AWS for this user."
  value       = aws_iam_user.aws_iam_user.arn
}
output "path" {
  description = "Path in which this user was created."
  value       = aws_iam_user.aws_iam_user.path
}
output "permissions_boundary" {
  description = "The ARN of the policy that is used to set the permissions boundary for the user."
  value       = aws_iam_user.aws_iam_user.permissions_boundary
}
output "user_id" {
  description = "Unique ID assigned by AWS for this user."
  value       = aws_iam_user.aws_iam_user.user_id
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
