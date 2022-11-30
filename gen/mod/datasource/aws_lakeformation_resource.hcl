datasource "aws_lakeformation_resource" "aws_lakeformation_resource" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified" {
  description = "Date and time the resource was last modified in RFC 3339 format."
  value       = aws_lakeformation_resource.aws_lakeformation_resource.last_modified
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
