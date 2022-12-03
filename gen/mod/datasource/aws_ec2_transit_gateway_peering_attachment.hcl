datasource "aws_ec2_transit_gateway_peering_attachment" "aws_ec2_transit_gateway_peering_attachment" {
  filter                  = var.filter
  peer_region             = var.peer_region
  values                  = var.values
  peer_transit_gateway_id = var.peer_transit_gateway_id
  tags                    = var.tags
  transit_gateway_id      = var.transit_gateway_id
  id                      = var.id
  name                    = var.name
  peer_account_id         = var.peer_account_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
  default     = ""
}
variable "peer_region" {
  description = "Identifier of the peer AWS region"
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field.\nAn EC2 Transit Gateway Peering Attachment be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Peering Attachment."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by\nthe underlying AWS API."
  type        = string
}
variable "peer_account_id" {
  description = "Identifier of the peer AWS account"
  type        = string
}
variable "peer_transit_gateway_id" {
  description = "Identifier of the peer EC2 Transit Gateway"
  type        = string
}
variable "tags" {
  description = "More complex filters can be expressed using one or more filter"
  type        = string
}
variable "transit_gateway_id" {
  description = "Identifier of the local EC2 Transit GatewayTimeoutsConfiguration options:"
  type        = string
}
output "peer_region" {
  description = "Identifier of the peer AWS region"
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.peer_region
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field.\nAn EC2 Transit Gateway Peering Attachment be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.values
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.filter
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by\nthe underlying AWS API."
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.name
}
output "peer_account_id" {
  description = "Identifier of the peer AWS account"
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.peer_account_id
}
output "peer_transit_gateway_id" {
  description = "Identifier of the peer EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.peer_transit_gateway_id
}
output "tags" {
  description = "More complex filters can be expressed using one or more filter"
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.tags
}
output "transit_gateway_id" {
  description = "Identifier of the local EC2 Transit GatewayTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.transit_gateway_id
}
output "id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Peering Attachment."
  value       = aws_ec2_transit_gateway_peering_attachment.aws_ec2_transit_gateway_peering_attachment.id
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
