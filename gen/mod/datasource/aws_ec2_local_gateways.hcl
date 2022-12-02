datasource "aws_ec2_local_gateways" "aws_ec2_local_gateways" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_local_gateways.aws_ec2_local_gateways.id
}
output "ids" {
  description = "Set of all the Local Gateway identifiersTimeoutsConfiguration options:"
  value       = aws_ec2_local_gateways.aws_ec2_local_gateways.ids
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
