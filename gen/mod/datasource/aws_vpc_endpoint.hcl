datasource "aws_vpc_endpoint" "aws_vpc_endpoint" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "DNS name."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_name
}
output "subnet_ids" {
  description = "One or more subnets in which the VPC Endpoint is located. Applicable for endpoints of type Interface."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.subnet_ids
}
output "dns_entry" {
  description = "DNS entries for the VPC Endpoint. Applicable for endpoints of type Interface. DNS blocks are documented below."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_entry
}
output "hosted_zone_id" {
  description = "ID of the private hosted zone.TimeoutsConfiguration options:"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.hosted_zone_id
}
output "network_interface_ids" {
  description = "One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type Interface."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.network_interface_ids
}
output "requester_managed" {
  description = " Whether or not the VPC Endpoint is being managed by its service - true or false."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.requester_managed
}
output "route_table_ids" {
  description = "One or more route tables associated with the VPC Endpoint. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.route_table_ids
}
output "policy" {
  description = "Policy document associated with the VPC Endpoint. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.policy
}
output "prefix_list_id" {
  description = "Prefix list ID of the exposed AWS service. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.prefix_list_id
}
output "vpc_endpoint_type" {
  description = "VPC Endpoint type, Gateway or Interface.DNS blocks (for dns_entry) support the following attributes:"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.vpc_endpoint_type
}
output "arn" {
  description = "ARN of the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.arn
}
output "cidr_blocks" {
  description = "List of CIDR blocks for the exposed AWS service. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.cidr_blocks
}
output "owner_id" {
  description = "ID of the AWS account that owns the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.owner_id
}
output "private_dns_enabled" {
  description = "Whether or not the VPC is associated with a private hosted zone - true or false. Applicable for endpoints of type Interface."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.private_dns_enabled
}
output "security_group_ids" {
  description = "One or more security groups associated with the network interfaces. Applicable for endpoints of type Interface."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.security_group_ids
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
