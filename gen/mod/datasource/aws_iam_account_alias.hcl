datasource "aws_iam_account_alias" "aws_iam_account_alias" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_alias" {
  description = "Alias associated with the AWS account."
  value       = aws_iam_account_alias.aws_iam_account_alias.account_alias
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
