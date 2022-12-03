datasource "aws_ec2_local_gateway_virtual_interface" "aws_ec2_local_gateway_virtual_interface" {
  id               = var.id
  local_address    = var.local_address
  local_bgp_asn    = var.local_bgp_asn
  local_gateway_id = var.local_gateway_id
  name             = var.name
  peer_address     = var.peer_address
  tags             = var.tags
  filter           = var.filter
  vlan             = var.vlan
  values           = var.values
  peer_bgp_asn     = var.peer_bgp_asn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "peer_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer."
  type        = string
  default     = ""
}
variable "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface."
  type        = string
  default     = ""
}
variable "local_address" {
  description = "Local address."
  type        = string
  default     = ""
}
variable "local_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway."
  type        = string
  default     = ""
}
variable "local_gateway_id" {
  description = "Identifier of the EC2 Local Gateway."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "peer_address" {
  description = "Peer address."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  type        = string
  default     = ""
}
variable "vlan" {
  description = "Virtual Local Area Network.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
output "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.id
}
output "local_address" {
  description = "Local address."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.local_address
}
output "local_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.local_bgp_asn
}
output "local_gateway_id" {
  description = "Identifier of the EC2 Local Gateway."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.local_gateway_id
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.name
}
output "peer_address" {
  description = "Peer address."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.peer_address
}
output "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.tags
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.filter
}
output "vlan" {
  description = "Virtual Local Area Network.TimeoutsConfiguration options:"
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.vlan
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.values
}
output "peer_bgp_asn" {
  description = "Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer."
  value       = aws_ec2_local_gateway_virtual_interface.aws_ec2_local_gateway_virtual_interface.peer_bgp_asn
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
