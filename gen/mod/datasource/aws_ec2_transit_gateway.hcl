datasource "aws_ec2_transit_gateway" "aws_ec2_transit_gateway" {
  amazon_side_asn                    = var.amazon_side_asn
  arn                                = var.arn
  association_default_route_table_id = var.association_default_route_table_id
  filter                             = var.filter
  name                               = var.name
  description                        = var.description
  tags                               = var.tags
  values                             = var.values
  auto_accept_shared_attachments     = var.auto_accept_shared_attachments
  default_route_table_association    = var.default_route_table_association
  default_route_table_propagation    = var.default_route_table_propagation
  dns_support                        = var.dns_support
  propagation_default_route_table_id = var.propagation_default_route_table_id
  vpn_ecmp_support                   = var.vpn_ecmp_support
  id                                 = var.id
  multicast_support                  = var.multicast_support
  owner_id                           = var.owner_id
  transit_gateway_cidr_blocks        = var.transit_gateway_cidr_blocks
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "EC2 Transit Gateway ARN"
  type        = string
}
variable "association_default_route_table_id" {
  description = "Identifier of the default association route table"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "amazon_side_asn" {
  description = "Private Autonomous System Number (ASN) for the Amazon side of a BGP session"
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway"
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "description" {
  description = "Description of the EC2 Transit Gateway"
  type        = string
}
variable "default_route_table_association" {
  description = "Whether resource attachments are automatically associated with the default association route table"
  type        = string
}
variable "default_route_table_propagation" {
  description = "Whether resource attachments automatically propagate routes to the default propagation route table"
  type        = string
}
variable "dns_support" {
  description = "Whether DNS support is enabled"
  type        = string
}
variable "propagation_default_route_table_id" {
  description = "Identifier of the default propagation route table"
  type        = string
}
variable "vpn_ecmp_support" {
  description = "Whether VPN Equal Cost Multipath Protocol support is enabledTimeoutsConfiguration options:"
  type        = string
}
variable "auto_accept_shared_attachments" {
  description = "Whether resource attachment requests are automatically accepted"
  type        = string
}
variable "multicast_support" {
  description = "Whether Multicast support is enabled"
  type        = string
}
variable "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway"
  type        = string
}
variable "transit_gateway_cidr_blocks" {
  description = "The list of associated CIDR blocks"
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway identifier"
  type        = string
}
output "default_route_table_association" {
  description = "Whether resource attachments are automatically associated with the default association route table"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.default_route_table_association
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_route_table_propagation" {
  description = "Whether resource attachments automatically propagate routes to the default propagation route table"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.default_route_table_propagation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_support" {
  description = "Whether DNS support is enabled"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.dns_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "propagation_default_route_table_id" {
  description = "Identifier of the default propagation route table"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.propagation_default_route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpn_ecmp_support" {
  description = "Whether VPN Equal Cost Multipath Protocol support is enabledTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.vpn_ecmp_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_accept_shared_attachments" {
  description = "Whether resource attachment requests are automatically accepted"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.auto_accept_shared_attachments
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multicast_support" {
  description = "Whether Multicast support is enabled"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.multicast_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_cidr_blocks" {
  description = "The list of associated CIDR blocks"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.transit_gateway_cidr_blocks
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "EC2 Transit Gateway ARN"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "association_default_route_table_id" {
  description = "Identifier of the default association route table"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.association_default_route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amazon_side_asn" {
  description = "Private Autonomous System Number (ASN) for the Amazon side of a BGP session"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.amazon_side_asn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.aws_ec2_transit_gateway.description
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
