datasource "aws_iam_policy" "aws_iam_policy" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy_id" {
  description = "Policy's ID."
  value       = aws_iam_policy.aws_iam_policy.policy_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the policy."
  value       = aws_iam_policy.aws_iam_policy.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the policy."
  value       = aws_iam_policy.aws_iam_policy.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "Path to the policy."
  value       = aws_iam_policy.aws_iam_policy.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy" {
  description = "Policy document of the policy."
  value       = aws_iam_policy.aws_iam_policy.policy
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
