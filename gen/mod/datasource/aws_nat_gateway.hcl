datasource "aws_nat_gateway" "aws_nat_gateway" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allocation_id" {
  description = "ID of the EIP allocated to the selected Nat Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.allocation_id
}
output "connectivity_type" {
  description = "Connectivity type of the NAT Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.connectivity_type
}
output "network_interface_id" {
  description = "The ID of the ENI allocated to the selected Nat Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.network_interface_id
}
output "private_ip" {
  description = "Private Ip address of the selected Nat Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.private_ip
}
output "public_ip" {
  description = "Public Ip (EIP) address of the selected Nat Gateway.TimeoutsConfiguration options:"
  value       = aws_nat_gateway.aws_nat_gateway.public_ip
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
