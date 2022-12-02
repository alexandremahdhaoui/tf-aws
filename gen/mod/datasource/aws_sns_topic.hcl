datasource "aws_sns_topic" "aws_sns_topic" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the found topic, suitable for referencing in other resources that support SNS topics."
  value       = aws_sns_topic.aws_sns_topic.arn
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
