datasource "aws_ec2_transit_gateway_dx_gateway_attachment" "aws_ec2_transit_gateway_dx_gateway_attachment" {
  transit_gateway_id = var.transit_gateway_id
  values             = var.values
  dx_gateway_id      = var.dx_gateway_id
  filter             = var.filter
  id                 = var.id
  name               = var.name
  tags               = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "dx_gateway_id" {
  description = "(Optional) Identifier of the Direct Connect Gateway."
  type        = string
  default     = ""
}
variable "filter" {
  description = "(Optional) Configuration block(s) for filtering. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeTransitGatewayAttachments API Reference."
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway AttachmentTimeoutsConfiguration options:"
  type        = string
}
variable "transit_gateway_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway AttachmentTimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_dx_gateway_attachment.aws_ec2_transit_gateway_dx_gateway_attachment.tags
}
output "transit_gateway_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway."
  value       = aws_ec2_transit_gateway_dx_gateway_attachment.aws_ec2_transit_gateway_dx_gateway_attachment.transit_gateway_id
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_dx_gateway_attachment.aws_ec2_transit_gateway_dx_gateway_attachment.values
}
output "dx_gateway_id" {
  description = "(Optional) Identifier of the Direct Connect Gateway."
  value       = aws_ec2_transit_gateway_dx_gateway_attachment.aws_ec2_transit_gateway_dx_gateway_attachment.dx_gateway_id
}
output "filter" {
  description = "(Optional) Configuration block(s) for filtering. Detailed below."
  value       = aws_ec2_transit_gateway_dx_gateway_attachment.aws_ec2_transit_gateway_dx_gateway_attachment.filter
}
output "id" {
  description = "EC2 Transit Gateway Attachment identifier"
  value       = aws_ec2_transit_gateway_dx_gateway_attachment.aws_ec2_transit_gateway_dx_gateway_attachment.id
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeTransitGatewayAttachments API Reference."
  value       = aws_ec2_transit_gateway_dx_gateway_attachment.aws_ec2_transit_gateway_dx_gateway_attachment.name
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
