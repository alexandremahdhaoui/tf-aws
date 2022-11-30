datasource "aws_route_table" "aws_route_table" {
  core_network_arn           = var.core_network_arn
  local_gateway_id           = var.local_gateway_id
  network_interface_id       = var.network_interface_id
  owner_id                   = var.owner_id
  values                     = var.values
  associations               = var.associations
  filter                     = var.filter
  name                       = var.name
  route_table_association_id = var.route_table_association_id
  vpc_peering_connection_id  = var.vpc_peering_connection_id
  nat_gateway_id             = var.nat_gateway_id
  transit_gateway_id         = var.transit_gateway_id
  cidr_block                 = var.cidr_block
  destination_prefix_list_id = var.destination_prefix_list_id
  main                       = var.main
  ipv6_cidr_block            = var.ipv6_cidr_block
  route_table_id             = var.route_table_id
  arn                        = var.arn
  carrier_gateway_id         = var.carrier_gateway_id
  egress_only_gateway_id     = var.egress_only_gateway_id
  gateway_id                 = var.gateway_id
  subnet_id                  = var.subnet_id
  vpc_endpoint_id            = var.vpc_endpoint_id
  vpc_id                     = var.vpc_id
  instance_id                = var.instance_id
  routes                     = var.routes
  tags                       = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpc_id" {
  description = "(Optional) ID of the VPC that the desired Route Table belongs to.filterComplex filters can be expressed using one or more filter blocks."
  type        = string
}
variable "gateway_id" {
  description = "Gateway ID. Only set when associated with an Internet Gateway or Virtual Private Gateway."
  type        = string
}
variable "subnet_id" {
  description = "Subnet ID. Only set when associated with a subnet.TimeoutsConfiguration options:"
  type        = string
}
variable "vpc_endpoint_id" {
  description = "VPC Endpoint ID."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired Route Table."
  type        = string
}
variable "instance_id" {
  description = "EC2 instance ID."
  type        = string
}
variable "routes" {
  description = "List of routes with attributes detailed below.routesWhen relevant, routes are also exported with the following attributes:For destinations:"
  type        = string
}
variable "owner_id" {
  description = "ID of the AWS account that owns the route table."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field. A Route Table will be selected if any one of the given values matches.In addition to the arguments above, the following attributes are exported:"
  type        = string
}
variable "core_network_arn" {
  description = "ARN of the core network."
  type        = string
}
variable "local_gateway_id" {
  description = "Local Gateway ID."
  type        = string
}
variable "network_interface_id" {
  description = "ID of the elastic network interface (eni) to use."
  type        = string
}
variable "filter" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "associations" {
  description = "List of associations with attributes detailed below."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "route_table_association_id" {
  description = "Association ID."
  type        = string
}
variable "vpc_peering_connection_id" {
  description = "VPC Peering ID.associationsAssociations are also exported with the following attributes:"
  type        = string
}
variable "transit_gateway_id" {
  description = "EC2 Transit Gateway ID."
  type        = string
}
variable "nat_gateway_id" {
  description = "NAT Gateway ID."
  type        = string
}
variable "cidr_block" {
  description = "CIDR block of the route."
  type        = string
}
variable "destination_prefix_list_id" {
  description = "The ID of a managed prefix list destination of the route."
  type        = string
}
variable "main" {
  description = "Whether the association is due to the main route table."
  type        = string
}
variable "egress_only_gateway_id" {
  description = "ID of the Egress Only Internet Gateway."
  type        = string
}
variable "ipv6_cidr_block" {
  description = "IPv6 CIDR block of the route.For targets:"
  type        = string
}
variable "route_table_id" {
  description = "Route Table ID."
  type        = string
}
variable "arn" {
  description = "ARN of the route table."
  type        = string
}
variable "carrier_gateway_id" {
  description = "ID of the Carrier Gateway."
  type        = string
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_route_table.aws_route_table.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_table_association_id" {
  description = "Association ID."
  value       = aws_route_table.aws_route_table.route_table_association_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_peering_connection_id" {
  description = "VPC Peering ID.associationsAssociations are also exported with the following attributes:"
  value       = aws_route_table.aws_route_table.vpc_peering_connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "EC2 Transit Gateway ID."
  value       = aws_route_table.aws_route_table.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nat_gateway_id" {
  description = "NAT Gateway ID."
  value       = aws_route_table.aws_route_table.nat_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_block" {
  description = "CIDR block of the route."
  value       = aws_route_table.aws_route_table.cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_prefix_list_id" {
  description = "The ID of a managed prefix list destination of the route."
  value       = aws_route_table.aws_route_table.destination_prefix_list_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "main" {
  description = "Whether the association is due to the main route table."
  value       = aws_route_table.aws_route_table.main
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_only_gateway_id" {
  description = "ID of the Egress Only Internet Gateway."
  value       = aws_route_table.aws_route_table.egress_only_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block" {
  description = "IPv6 CIDR block of the route.For targets:"
  value       = aws_route_table.aws_route_table.ipv6_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_table_id" {
  description = "Route Table ID."
  value       = aws_route_table.aws_route_table.route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the route table."
  value       = aws_route_table.aws_route_table.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "carrier_gateway_id" {
  description = "ID of the Carrier Gateway."
  value       = aws_route_table.aws_route_table.carrier_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Optional) ID of the VPC that the desired Route Table belongs to.filterComplex filters can be expressed using one or more filter blocks."
  value       = aws_route_table.aws_route_table.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gateway_id" {
  description = "Gateway ID. Only set when associated with an Internet Gateway or Virtual Private Gateway."
  value       = aws_route_table.aws_route_table.gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "Subnet ID. Only set when associated with a subnet.TimeoutsConfiguration options:"
  value       = aws_route_table.aws_route_table.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_id" {
  description = "VPC Endpoint ID."
  value       = aws_route_table.aws_route_table.vpc_endpoint_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired Route Table."
  value       = aws_route_table.aws_route_table.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "EC2 instance ID."
  value       = aws_route_table.aws_route_table.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "routes" {
  description = "List of routes with attributes detailed below.routesWhen relevant, routes are also exported with the following attributes:For destinations:"
  value       = aws_route_table.aws_route_table.routes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "ID of the AWS account that owns the route table."
  value       = aws_route_table.aws_route_table.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field. A Route Table will be selected if any one of the given values matches.In addition to the arguments above, the following attributes are exported:"
  value       = aws_route_table.aws_route_table.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "core_network_arn" {
  description = "ARN of the core network."
  value       = aws_route_table.aws_route_table.core_network_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_gateway_id" {
  description = "Local Gateway ID."
  value       = aws_route_table.aws_route_table.local_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "ID of the elastic network interface (eni) to use."
  value       = aws_route_table.aws_route_table.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_route_table.aws_route_table.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associations" {
  description = "List of associations with attributes detailed below."
  value       = aws_route_table.aws_route_table.associations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nat_gateway_id" {
  description = "NAT Gateway ID."
  value       = aws_route_table.aws_route_table.nat_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_table_id" {
  description = "Route Table ID."
  value       = aws_route_table.aws_route_table.route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the route table."
  value       = aws_route_table.aws_route_table.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associations" {
  description = "List of associations with attributes detailed below."
  value       = aws_route_table.aws_route_table.associations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_prefix_list_id" {
  description = "The ID of a managed prefix list destination of the route."
  value       = aws_route_table.aws_route_table.destination_prefix_list_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "EC2 instance ID."
  value       = aws_route_table.aws_route_table.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block" {
  description = "IPv6 CIDR block of the route.For targets:"
  value       = aws_route_table.aws_route_table.ipv6_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_block" {
  description = "CIDR block of the route."
  value       = aws_route_table.aws_route_table.cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_only_gateway_id" {
  description = "ID of the Egress Only Internet Gateway."
  value       = aws_route_table.aws_route_table.egress_only_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "main" {
  description = "Whether the association is due to the main route table."
  value       = aws_route_table.aws_route_table.main
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "Subnet ID. Only set when associated with a subnet.TimeoutsConfiguration options:"
  value       = aws_route_table.aws_route_table.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_peering_connection_id" {
  description = "VPC Peering ID.associationsAssociations are also exported with the following attributes:"
  value       = aws_route_table.aws_route_table.vpc_peering_connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "EC2 Transit Gateway ID."
  value       = aws_route_table.aws_route_table.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "carrier_gateway_id" {
  description = "ID of the Carrier Gateway."
  value       = aws_route_table.aws_route_table.carrier_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "core_network_arn" {
  description = "ARN of the core network."
  value       = aws_route_table.aws_route_table.core_network_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "ID of the elastic network interface (eni) to use."
  value       = aws_route_table.aws_route_table.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "ID of the AWS account that owns the route table."
  value       = aws_route_table.aws_route_table.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "routes" {
  description = "List of routes with attributes detailed below.routesWhen relevant, routes are also exported with the following attributes:For destinations:"
  value       = aws_route_table.aws_route_table.routes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gateway_id" {
  description = "Gateway ID. Only set when associated with an Internet Gateway or Virtual Private Gateway."
  value       = aws_route_table.aws_route_table.gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_gateway_id" {
  description = "Local Gateway ID."
  value       = aws_route_table.aws_route_table.local_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_table_association_id" {
  description = "Association ID."
  value       = aws_route_table.aws_route_table.route_table_association_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_id" {
  description = "VPC Endpoint ID."
  value       = aws_route_table.aws_route_table.vpc_endpoint_id
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
