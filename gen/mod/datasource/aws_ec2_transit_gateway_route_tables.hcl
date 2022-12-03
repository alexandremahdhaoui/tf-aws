datasource "aws_ec2_transit_gateway_route_tables" "aws_ec2_transit_gateway_route_tables" {
  tags   = var.tags
  values = var.values
  filter = var.filter
  id     = var.id
  ids    = var.ids
  name   = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) Custom filter block as described below."
  type        = string
  default     = ""
}
variable "id" {
  description = "AWS Region."
  type        = string
}
variable "ids" {
  description = "Set of Transit Gateway Route Table identifiers.TimeoutsConfiguration options:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by\nthe underlying AWS API."
  type        = string
}
variable "tags" {
  description = "(Optional) Mapping of tags, each pair of which must exactly match\na pair on the desired transit gateway route table.More complex filters can be expressed using one or more filter"
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field.\nA Transit Gateway Route Table will be selected if any one of the given values matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field.\nA Transit Gateway Route Table will be selected if any one of the given values matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.values
}
output "filter" {
  description = "(Optional) Custom filter block as described below."
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.filter
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.id
}
output "ids" {
  description = "Set of Transit Gateway Route Table identifiers.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.ids
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by\nthe underlying AWS API."
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.name
}
output "tags" {
  description = "(Optional) Mapping of tags, each pair of which must exactly match\na pair on the desired transit gateway route table.More complex filters can be expressed using one or more filter"
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.tags
}
output "ids" {
  description = "Set of Transit Gateway Route Table identifiers.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.ids
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_transit_gateway_route_tables.aws_ec2_transit_gateway_route_tables.id
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
