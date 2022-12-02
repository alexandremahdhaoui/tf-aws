datasource "aws_caller_identity" "aws_caller_identity" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Account ID number of the account that owns or contains the calling entity."
  value       = aws_caller_identity.aws_caller_identity.id
}
output "account_id" {
  description = "AWS Account ID number of the account that owns or contains the calling entity."
  value       = aws_caller_identity.aws_caller_identity.account_id
}
output "arn" {
  description = "ARN associated with the calling entity."
  value       = aws_caller_identity.aws_caller_identity.arn
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
