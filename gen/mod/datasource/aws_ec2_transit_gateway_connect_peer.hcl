datasource "aws_ec2_transit_gateway_connect_peer" "aws_ec2_transit_gateway_connect_peer" {
  inside_cidr_blocks              = var.inside_cidr_blocks
  transit_gateway_address         = var.transit_gateway_address
  transit_gateway_connect_peer_id = var.transit_gateway_connect_peer_id
  values                          = var.values
  bgp_asn                         = var.bgp_asn
  filter                          = var.filter
  peer_address                    = var.peer_address
  tags                            = var.tags
  transit_gateway_attachment_id   = var.transit_gateway_attachment_id
  arn                             = var.arn
  name                            = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bgp_asn" {
  description = "BGP ASN number assigned customer device"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
  default     = ""
}
variable "inside_cidr_blocks" {
  description = "CIDR blocks that will be used for addressing within the tunnel."
  type        = string
}
variable "transit_gateway_address" {
  description = "The IP address assigned to Transit Gateway, which is used as tunnel endpoint."
  type        = string
}
variable "transit_gateway_connect_peer_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Connect Peer.filter Argument Reference"
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "EC2 Transit Gateway Connect Peer ARN"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "peer_address" {
  description = "IP addressed assigned to customer device, which is used as tunnel endpoint"
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Connect Peer"
  type        = string
}
variable "transit_gateway_attachment_id" {
  description = "The Transit Gateway ConnectTimeoutsConfiguration options:"
  type        = string
}
output "bgp_asn" {
  description = "BGP ASN number assigned customer device"
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.bgp_asn
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.filter
}
output "inside_cidr_blocks" {
  description = "CIDR blocks that will be used for addressing within the tunnel."
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.inside_cidr_blocks
}
output "transit_gateway_address" {
  description = "The IP address assigned to Transit Gateway, which is used as tunnel endpoint."
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.transit_gateway_address
}
output "transit_gateway_connect_peer_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Connect Peer.filter Argument Reference"
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.transit_gateway_connect_peer_id
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.values
}
output "arn" {
  description = "EC2 Transit Gateway Connect Peer ARN"
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.arn
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.name
}
output "peer_address" {
  description = "IP addressed assigned to customer device, which is used as tunnel endpoint"
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.peer_address
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Connect Peer"
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.tags
}
output "transit_gateway_attachment_id" {
  description = "The Transit Gateway ConnectTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_connect_peer.aws_ec2_transit_gateway_connect_peer.transit_gateway_attachment_id
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
