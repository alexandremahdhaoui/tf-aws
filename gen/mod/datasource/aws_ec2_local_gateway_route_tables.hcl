datasource "aws_ec2_local_gateway_route_tables" "aws_ec2_local_gateway_route_tables" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_local_gateway_route_tables.aws_ec2_local_gateway_route_tables.id
}
output "ids" {
  description = "Set of Local Gateway Route Table identifiersTimeoutsConfiguration options:"
  value       = aws_ec2_local_gateway_route_tables.aws_ec2_local_gateway_route_tables.ids
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
