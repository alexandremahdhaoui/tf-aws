datasource "aws_ec2_coip_pool" "aws_ec2_coip_pool" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the COIP pool"
  value       = aws_ec2_coip_pool.aws_ec2_coip_pool.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pool_cidrs" {
  description = "Set of CIDR blocks in poolTimeoutsConfiguration options:"
  value       = aws_ec2_coip_pool.aws_ec2_coip_pool.pool_cidrs
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
