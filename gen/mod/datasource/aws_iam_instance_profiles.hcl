datasource "aws_iam_instance_profiles" "aws_iam_instance_profiles" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "Set of ARNs of instance profiles."
  value       = aws_iam_instance_profiles.aws_iam_instance_profiles.arns
}
output "names" {
  description = "Set of IAM instance profile names."
  value       = aws_iam_instance_profiles.aws_iam_instance_profiles.names
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
