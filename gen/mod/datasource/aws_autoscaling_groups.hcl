datasource "aws_autoscaling_groups" "aws_autoscaling_groups" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "List of the Autoscaling Groups Arns in the current region."
  value       = aws_autoscaling_groups.aws_autoscaling_groups.arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_autoscaling_groups.aws_autoscaling_groups.id
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
