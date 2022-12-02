datasource "aws_vpc_peering_connections" "aws_vpc_peering_connections" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_vpc_peering_connections.aws_vpc_peering_connections.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ids" {
  description = "IDs of the VPC Peering Connections.TimeoutsConfiguration options:"
  value       = aws_vpc_peering_connections.aws_vpc_peering_connections.ids
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