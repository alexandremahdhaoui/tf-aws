datasource "aws_ec2_transit_gateway_vpn_attachment" "aws_ec2_transit_gateway_vpn_attachment" {
  vpn_connection_id  = var.vpn_connection_id
  filter             = var.filter
  id                 = var.id
  name               = var.name
  tags               = var.tags
  transit_gateway_id = var.transit_gateway_id
  values             = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway VPN AttachmentTimeoutsConfiguration options:"
  type        = string
}
variable "transit_gateway_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpn_connection_id" {
  description = "(Optional) Identifier of the EC2 VPN Connection."
  type        = string
}
variable "filter" {
  description = "(Optional) Configuration block(s) for filtering. Detailed below."
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway VPN Attachment identifier"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeTransitGatewayAttachments API Reference."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway VPN Attachment identifier"
  value       = aws_ec2_transit_gateway_vpn_attachment.aws_ec2_transit_gateway_vpn_attachment.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeTransitGatewayAttachments API Reference."
  value       = aws_ec2_transit_gateway_vpn_attachment.aws_ec2_transit_gateway_vpn_attachment.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway VPN AttachmentTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_vpn_attachment.aws_ec2_transit_gateway_vpn_attachment.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway."
  value       = aws_ec2_transit_gateway_vpn_attachment.aws_ec2_transit_gateway_vpn_attachment.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_vpn_attachment.aws_ec2_transit_gateway_vpn_attachment.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpn_connection_id" {
  description = "(Optional) Identifier of the EC2 VPN Connection."
  value       = aws_ec2_transit_gateway_vpn_attachment.aws_ec2_transit_gateway_vpn_attachment.vpn_connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) Configuration block(s) for filtering. Detailed below."
  value       = aws_ec2_transit_gateway_vpn_attachment.aws_ec2_transit_gateway_vpn_attachment.filter
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