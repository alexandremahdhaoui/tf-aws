datasource "aws_redshift_service_account" "aws_redshift_service_account" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the AWS Redshift service account in the selected region."
  value       = aws_redshift_service_account.aws_redshift_service_account.id
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
