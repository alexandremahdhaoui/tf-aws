datasource "aws_ec2_transit_gateway_route_table" "aws_ec2_transit_gateway_route_table" {
  values                          = var.values
  default_association_route_table = var.default_association_route_table
  id                              = var.id
  name                            = var.name
  tags                            = var.tags
  arn                             = var.arn
  default_propagation_route_table = var.default_propagation_route_table
  filter                          = var.filter
  transit_gateway_id              = var.transit_gateway_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway Route Table identifier"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Route TableTimeoutsConfiguration options:"
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "default_association_route_table" {
  description = "Boolean whether this is the default association route table for the EC2 Transit Gateway"
  type        = string
}
variable "default_propagation_route_table" {
  description = "Boolean whether this is the default propagation route table for the EC2 Transit Gateway"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
}
variable "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  type        = string
}
variable "arn" {
  description = "EC2 Transit Gateway Route Table ARN."
  type        = string
}
output "arn" {
  description = "EC2 Transit Gateway Route Table ARN."
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_propagation_route_table" {
  description = "Boolean whether this is the default propagation route table for the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.default_propagation_route_table
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_association_route_table" {
  description = "Boolean whether this is the default association route table for the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.default_association_route_table
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway Route Table identifier"
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Route TableTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_route_table.aws_ec2_transit_gateway_route_table.values
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