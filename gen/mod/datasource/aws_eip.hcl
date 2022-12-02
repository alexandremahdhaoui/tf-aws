datasource "aws_eip" "aws_eip" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "The ID of the network interface."
  value       = aws_eip.aws_eip.network_interface_id
}
output "private_ip" {
  description = "Private IP address associated with the Elastic IP address."
  value       = aws_eip.aws_eip.private_ip
}
output "tags" {
  description = "Key-value map of tags associated with Elastic IP.~> strongNote: The data source computes the public_dns and private_dns attributes according to the VPC DNS Guide as they are not available with the EC2 API.TimeoutsConfiguration options:"
  value       = aws_eip.aws_eip.tags
}
output "customer_owned_ip" {
  description = "Customer Owned IP."
  value       = aws_eip.aws_eip.customer_owned_ip
}
output "customer_owned_ipv4_pool" {
  description = "The ID of a Customer Owned IP Pool. For more on customer owned IP addressed check out Customer-owned IP addresses guide"
  value       = aws_eip.aws_eip.customer_owned_ipv4_pool
}
output "instance_id" {
  description = "ID of the instance that the address is associated with (if any)."
  value       = aws_eip.aws_eip.instance_id
}
output "private_dns" {
  description = "Private DNS associated with the Elastic IP address."
  value       = aws_eip.aws_eip.private_dns
}
output "association_id" {
  description = "ID representing the association of the address with an instance in a VPC."
  value       = aws_eip.aws_eip.association_id
}
output "public_ipv4_pool" {
  description = "ID of an address pool."
  value       = aws_eip.aws_eip.public_ipv4_pool
}
output "id" {
  description = "If VPC Elastic IP, the allocation identifier. If EC2-Classic Elastic IP, the public IP address."
  value       = aws_eip.aws_eip.id
}
output "network_interface_owner_id" {
  description = "The ID of the AWS account that owns the network interface."
  value       = aws_eip.aws_eip.network_interface_owner_id
}
output "public_dns" {
  description = "Public DNS associated with the Elastic IP address."
  value       = aws_eip.aws_eip.public_dns
}
output "public_ip" {
  description = "Public IP address of Elastic IP."
  value       = aws_eip.aws_eip.public_ip
}
output "carrier_ip" {
  description = "Carrier IP address."
  value       = aws_eip.aws_eip.carrier_ip
}
output "domain" {
  description = "Whether the address is for use in EC2-Classic (standard) or in a VPC (vpc)."
  value       = aws_eip.aws_eip.domain
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
