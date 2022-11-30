datasource "aws_route" "aws_route" {
  nat_gateway_id              = var.nat_gateway_id
  destination_cidr_block      = var.destination_cidr_block
  egress_only_gateway_id      = var.egress_only_gateway_id
  vpc_peering_connection_id   = var.vpc_peering_connection_id
  destination_ipv6_cidr_block = var.destination_ipv6_cidr_block
  route_table_id              = var.route_table_id
  gateway_id                  = var.gateway_id
  local_gateway_id            = var.local_gateway_id
  carrier_gateway_id          = var.carrier_gateway_id
  core_network_arn            = var.core_network_arn
  network_interface_id        = var.network_interface_id
  transit_gateway_id          = var.transit_gateway_id
  destination_prefix_list_id  = var.destination_prefix_list_id
  instance_id                 = var.instance_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpc_peering_connection_id" {
  description = "(Optional) VPC Peering Connection ID of the Route belonging to the Route Table.All of the argument attributes are also exported as result attributes when there is data available. For example, the vpc_peering_connection_id field will be empty when the route is attached to a Network Interface.TimeoutsConfiguration options:"
  type        = string
}
variable "destination_ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the Route belonging to the Route Table."
  type        = string
}
variable "route_table_id" {
  description = "(Required) ID of the specific Route Table containing the Route entry."
  type        = string
}
variable "gateway_id" {
  description = "(Optional) Gateway ID of the Route belonging to the Route Table."
  type        = string
}
variable "local_gateway_id" {
  description = "(Optional) Local Gateway ID of the Route belonging to the Route Table."
  type        = string
}
variable "carrier_gateway_id" {
  description = "(Optional) EC2 Carrier Gateway ID of the Route belonging to the Route Table."
  type        = string
}
variable "core_network_arn" {
  description = "(Optional) Core network ARN of the Route belonging to the Route Table."
  type        = string
}
variable "network_interface_id" {
  description = "(Optional) Network Interface ID of the Route belonging to the Route Table."
  type        = string
}
variable "transit_gateway_id" {
  description = "(Optional) EC2 Transit Gateway ID of the Route belonging to the Route Table."
  type        = string
}
variable "destination_prefix_list_id" {
  description = "(Optional) ID of a managed prefix list destination of the Route belonging to the Route Table."
  type        = string
}
variable "instance_id" {
  description = "(Optional) Instance ID of the Route belonging to the Route Table."
  type        = string
}
variable "nat_gateway_id" {
  description = "(Optional) NAT Gateway ID of the Route belonging to the Route Table."
  type        = string
}
variable "destination_cidr_block" {
  description = "(Optional) CIDR block of the Route belonging to the Route Table."
  type        = string
}
variable "egress_only_gateway_id" {
  description = "(Optional) Egress Only Gateway ID of the Route belonging to the Route Table."
  type        = string
}
output "destination_prefix_list_id" {
  description = "(Optional) ID of a managed prefix list destination of the Route belonging to the Route Table."
  value       = aws_route.aws_route.destination_prefix_list_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Optional) Instance ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "(Optional) Network Interface ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "(Optional) EC2 Transit Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_cidr_block" {
  description = "(Optional) CIDR block of the Route belonging to the Route Table."
  value       = aws_route.aws_route.destination_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_only_gateway_id" {
  description = "(Optional) Egress Only Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.egress_only_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nat_gateway_id" {
  description = "(Optional) NAT Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.nat_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the Route belonging to the Route Table."
  value       = aws_route.aws_route.destination_ipv6_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_table_id" {
  description = "(Required) ID of the specific Route Table containing the Route entry."
  value       = aws_route.aws_route.route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_peering_connection_id" {
  description = "(Optional) VPC Peering Connection ID of the Route belonging to the Route Table.All of the argument attributes are also exported as result attributes when there is data available. For example, the vpc_peering_connection_id field will be empty when the route is attached to a Network Interface.TimeoutsConfiguration options:"
  value       = aws_route.aws_route.vpc_peering_connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "carrier_gateway_id" {
  description = "(Optional) EC2 Carrier Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.carrier_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "core_network_arn" {
  description = "(Optional) Core network ARN of the Route belonging to the Route Table."
  value       = aws_route.aws_route.core_network_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gateway_id" {
  description = "(Optional) Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_gateway_id" {
  description = "(Optional) Local Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.local_gateway_id
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
