datasource "aws_cloudformation_export" "aws_cloudformation_export" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value from Cloudformation export identified by the export name found from list-exports"
  value       = aws_cloudformation_export.aws_cloudformation_export.value
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
