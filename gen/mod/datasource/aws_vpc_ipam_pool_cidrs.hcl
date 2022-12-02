datasource "aws_vpc_ipam_pool_cidrs" "aws_vpc_ipam_pool_cidrs" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr" {
  description = "A network CIDR."
  value       = aws_vpc_ipam_pool_cidrs.aws_vpc_ipam_pool_cidrs.cidr
}
output "ipam_pool_cidrs" {
  description = "The CIDRs provisioned into the IPAM pool, described below.ipam_pool_cidrs"
  value       = aws_vpc_ipam_pool_cidrs.aws_vpc_ipam_pool_cidrs.ipam_pool_cidrs
}
output "state" {
  description = "The provisioning state of that CIDR.TimeoutsConfiguration options:"
  value       = aws_vpc_ipam_pool_cidrs.aws_vpc_ipam_pool_cidrs.state
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
