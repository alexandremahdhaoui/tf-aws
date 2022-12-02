datasource "aws_route" "aws_route" {
  local_gateway_id            = var.local_gateway_id
  nat_gateway_id              = var.nat_gateway_id
  route_table_id              = var.route_table_id
  core_network_arn            = var.core_network_arn
  egress_only_gateway_id      = var.egress_only_gateway_id
  instance_id                 = var.instance_id
  transit_gateway_id          = var.transit_gateway_id
  carrier_gateway_id          = var.carrier_gateway_id
  destination_cidr_block      = var.destination_cidr_block
  destination_prefix_list_id  = var.destination_prefix_list_id
  network_interface_id        = var.network_interface_id
  destination_ipv6_cidr_block = var.destination_ipv6_cidr_block
  gateway_id                  = var.gateway_id
  vpc_peering_connection_id   = var.vpc_peering_connection_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "core_network_arn" {
  description = "(Optional) Core network ARN of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "egress_only_gateway_id" {
  description = "(Optional) Egress Only Gateway ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "instance_id" {
  description = "(Optional) Instance ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "carrier_gateway_id" {
  description = "(Optional) EC2 Carrier Gateway ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "destination_cidr_block" {
  description = "(Optional) CIDR block of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "destination_prefix_list_id" {
  description = "(Optional) ID of a managed prefix list destination of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "network_interface_id" {
  description = "(Optional) Network Interface ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "transit_gateway_id" {
  description = "(Optional) EC2 Transit Gateway ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "destination_ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "gateway_id" {
  description = "(Optional) Gateway ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "vpc_peering_connection_id" {
  description = "(Optional) VPC Peering Connection ID of the Route belonging to the Route Table.All of the argument attributes are also exported as result attributes when there is data available. For example, the vpc_peering_connection_id field will be empty when the route is attached to a Network Interface.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "local_gateway_id" {
  description = "(Optional) Local Gateway ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "nat_gateway_id" {
  description = "(Optional) NAT Gateway ID of the Route belonging to the Route Table."
  type        = string
  default     = ""
}
variable "route_table_id" {
  description = "(Required) ID of the specific Route Table containing the Route entry."
  type        = string
}
output "core_network_arn" {
  description = "(Optional) Core network ARN of the Route belonging to the Route Table."
  value       = aws_route.aws_route.core_network_arn
}
output "egress_only_gateway_id" {
  description = "(Optional) Egress Only Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.egress_only_gateway_id
}
output "instance_id" {
  description = "(Optional) Instance ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.instance_id
}
output "carrier_gateway_id" {
  description = "(Optional) EC2 Carrier Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.carrier_gateway_id
}
output "destination_cidr_block" {
  description = "(Optional) CIDR block of the Route belonging to the Route Table."
  value       = aws_route.aws_route.destination_cidr_block
}
output "destination_prefix_list_id" {
  description = "(Optional) ID of a managed prefix list destination of the Route belonging to the Route Table."
  value       = aws_route.aws_route.destination_prefix_list_id
}
output "network_interface_id" {
  description = "(Optional) Network Interface ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.network_interface_id
}
output "transit_gateway_id" {
  description = "(Optional) EC2 Transit Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.transit_gateway_id
}
output "destination_ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the Route belonging to the Route Table."
  value       = aws_route.aws_route.destination_ipv6_cidr_block
}
output "gateway_id" {
  description = "(Optional) Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.gateway_id
}
output "vpc_peering_connection_id" {
  description = "(Optional) VPC Peering Connection ID of the Route belonging to the Route Table.All of the argument attributes are also exported as result attributes when there is data available. For example, the vpc_peering_connection_id field will be empty when the route is attached to a Network Interface.TimeoutsConfiguration options:"
  value       = aws_route.aws_route.vpc_peering_connection_id
}
output "local_gateway_id" {
  description = "(Optional) Local Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.local_gateway_id
}
output "nat_gateway_id" {
  description = "(Optional) NAT Gateway ID of the Route belonging to the Route Table."
  value       = aws_route.aws_route.nat_gateway_id
}
output "route_table_id" {
  description = "(Required) ID of the specific Route Table containing the Route entry."
  value       = aws_route.aws_route.route_table_id
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
