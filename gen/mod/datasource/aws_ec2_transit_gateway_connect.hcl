datasource "aws_ec2_transit_gateway_connect" "aws_ec2_transit_gateway_connect" {
  protocol                   = var.protocol
  tags                       = var.tags
  transit_gateway_connect_id = var.transit_gateway_connect_id
  transit_gateway_id         = var.transit_gateway_id
  transport_attachment_id    = var.transport_attachment_id
  values                     = var.values
  filter                     = var.filter
  name                       = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "protocol" {
  description = "Tunnel protocol"
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Connect"
  type        = string
}
variable "transit_gateway_connect_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Connect.filter Argument Reference"
  type        = string
  default     = ""
}
variable "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  type        = string
}
variable "transport_attachment_id" {
  description = "The underlaying VPC attachmentTimeoutsConfiguration options:"
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.filter
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.name
}
output "protocol" {
  description = "Tunnel protocol"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.protocol
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Connect"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.tags
}
output "transit_gateway_connect_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Connect.filter Argument Reference"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.transit_gateway_connect_id
}
output "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.transit_gateway_id
}
output "transport_attachment_id" {
  description = "The underlaying VPC attachmentTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.transport_attachment_id
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_connect.aws_ec2_transit_gateway_connect.values
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
