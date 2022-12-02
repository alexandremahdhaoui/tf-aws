datasource "aws_guardduty_detector" "aws_guardduty_detector" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "finding_publishing_frequency" {
  description = "The frequency of notifications sent about subsequent finding occurrences."
  value       = aws_guardduty_detector.aws_guardduty_detector.finding_publishing_frequency
}
output "service_role_arn" {
  description = "Service-linked role that grants GuardDuty access to the resources in the AWS account."
  value       = aws_guardduty_detector.aws_guardduty_detector.service_role_arn
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
