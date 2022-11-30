datasource "aws_ec2_local_gateway_virtual_interface" "aws_ec2_local_gateway_virtual_interface" {
  name             = var.name
  peer_bgp_asn     = var.peer_bgp_asn
  values           = var.values
  local_address    = var.local_address
  id               = var.id
  local_bgp_asn    = var.local_bgp_asn
  local_gateway_id = var.local_gateway_id
  peer_address     = var.peer_address
  tags             = var.tags
  vlan             = var.vlan
  filter           = var.filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface."
  type        = string
}
variable "local_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway."
  type        = string
}
variable "local_gateway_id" {
  description = "Identifier of the EC2 Local Gateway."
  type        = string
}
variable "peer_address" {
  description = "Peer address."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  type        = string
}
variable "vlan" {
  description = "Virtual Local Area Network.TimeoutsConfiguration options:"
  type        = string
}
variable "local_address" {
  description = "Local address."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "peer_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer."
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "local_address" {
  description = "Local address."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.local_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.peer_bgp_asn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vlan" {
  description = "Virtual Local Area Network.TimeoutsConfiguration options:"
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.vlan
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.local_bgp_asn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_gateway_id" {
  description = "Identifier of the EC2 Local Gateway."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.local_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "peer_address" {
  description = "Peer address."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.peer_address
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
