datasource "aws_vpc" "aws_vpc" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of VPC"
  value       = aws_vpc.aws_vpc.arn
}
output "association_id" {
  description = "Association ID for the the IPv4 CIDR block."
  value       = aws_vpc.aws_vpc.association_id
}
output "cidr_block" {
  description = "CIDR block for the association."
  value       = aws_vpc.aws_vpc.cidr_block
}
output "enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = aws_vpc.aws_vpc.enable_dns_support
}
output "enable_network_address_usage_metrics" {
  description = "Whether Network Address Usage metrics are enabled for your VPC"
  value       = aws_vpc.aws_vpc.enable_network_address_usage_metrics
}
output "instance_tenancy" {
  description = "Allowed tenancy of instances launched into the\nselected VPC. May be any of \"default\", \"dedicated\", or \"host\"."
  value       = aws_vpc.aws_vpc.instance_tenancy
}
output "ipv6_association_id" {
  description = "Association ID for the IPv6 CIDR block."
  value       = aws_vpc.aws_vpc.ipv6_association_id
}
output "ipv6_cidr_block" {
  description = "IPv6 CIDR block."
  value       = aws_vpc.aws_vpc.ipv6_cidr_block
}
output "state" {
  description = "State of the association.TimeoutsConfiguration options:"
  value       = aws_vpc.aws_vpc.state
}
output "enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = aws_vpc.aws_vpc.enable_dns_hostnames
}
output "main_route_table_id" {
  description = "ID of the main route table associated with this VPC."
  value       = aws_vpc.aws_vpc.main_route_table_id
}
output "owner_id" {
  description = "ID of the AWS account that owns the VPC.cidr_block_associations is also exported with the following attributes:"
  value       = aws_vpc.aws_vpc.owner_id
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
