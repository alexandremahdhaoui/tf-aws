datasource "aws_nat_gateways" "aws_nat_gateways" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_nat_gateways.aws_nat_gateways.id
}
output "ids" {
  description = "List of all the NAT gateway ids found.TimeoutsConfiguration options:"
  value       = aws_nat_gateways.aws_nat_gateways.ids
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
