datasource "aws_ec2_coip_pools" "aws_ec2_coip_pools" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_coip_pools.aws_ec2_coip_pools.id
}
output "pool_ids" {
  description = "Set of COIP Pool IdentifiersTimeoutsConfiguration options:"
  value       = aws_ec2_coip_pools.aws_ec2_coip_pools.pool_ids
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
