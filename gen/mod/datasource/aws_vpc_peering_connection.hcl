datasource "aws_vpc_peering_connection" "aws_vpc_peering_connection" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_cidr_block_set" {
  description = "List of objects with CIDR blocks of the accepter VPC."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.peer_cidr_block_set
}
output "requester" {
  description = "Accepter and Requester Attributes Reference"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.requester
}
output "accepter" {
  description = ""
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.accepter
}
output "allow_classic_link_to_remote_vpc" {
  description = ""
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.allow_classic_link_to_remote_vpc
}
output "allow_remote_vpc_dns_resolution" {
  description = ""
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.allow_remote_vpc_dns_resolution
}
output "allow_vpc_to_remote_classic_link" {
  description = "CIDR block set Attributes Reference"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.allow_vpc_to_remote_classic_link
}
output "cidr_block" {
  description = "CIDR block associated to the VPC of the specific VPC Peering Connection.TimeoutsConfiguration options:"
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.cidr_block
}
output "cidr_block_set" {
  description = "List of objects with CIDR blocks of the requester VPC."
  value       = aws_vpc_peering_connection.aws_vpc_peering_connection.cidr_block_set
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
