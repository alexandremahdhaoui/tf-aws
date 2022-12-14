datasource "aws_ses_active_receipt_rule_set" "aws_ses_active_receipt_rule_set" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "SES receipt rule set ARN."
  value       = aws_ses_active_receipt_rule_set.aws_ses_active_receipt_rule_set.arn
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
