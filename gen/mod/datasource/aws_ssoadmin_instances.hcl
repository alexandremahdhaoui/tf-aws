datasource "aws_ssoadmin_instances" "aws_ssoadmin_instances" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ssoadmin_instances.aws_ssoadmin_instances.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "Set of Amazon Resource Names (ARNs) of the SSO Instances."
  value       = aws_ssoadmin_instances.aws_ssoadmin_instances.arns
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
