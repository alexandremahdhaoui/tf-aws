datasource "aws_subnet_ids" "aws_subnet_ids" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ids" {
  description = "Set of all the subnet ids found. This data source will fail if none are found.TimeoutsConfiguration options:"
  value       = aws_subnet_ids.aws_subnet_ids.ids
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
