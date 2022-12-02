datasource "aws_ec2_transit_gateway_vpc_attachment" "aws_ec2_transit_gateway_vpc_attachment" {
  id                     = var.id
  ipv6_support           = var.ipv6_support
  name                   = var.name
  subnet_ids             = var.subnet_ids
  transit_gateway_id     = var.transit_gateway_id
  vpc_owner_id           = var.vpc_owner_id
  filter                 = var.filter
  dns_support            = var.dns_support
  tags                   = var.tags
  values                 = var.values
  vpc_id                 = var.vpc_id
  appliance_mode_support = var.appliance_mode_support
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled."
  type        = string
}
variable "dns_support" {
  description = "Whether DNS support is enabled."
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway VPC Attachment"
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpc_id" {
  description = "Identifier of EC2 VPC."
  type        = string
}
variable "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  type        = string
}
variable "vpc_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 VPC.TimeoutsConfiguration options:"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "EC2 Transit Gateway VPC Attachment identifier"
  type        = string
}
variable "ipv6_support" {
  description = "Whether IPv6 support is enabled."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "subnet_ids" {
  description = "Identifiers of EC2 Subnets."
  type        = string
}
output "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.transit_gateway_id
}
output "vpc_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 VPC.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.vpc_owner_id
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.filter
}
output "id" {
  description = "EC2 Transit Gateway VPC Attachment identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.id
}
output "ipv6_support" {
  description = "Whether IPv6 support is enabled."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.ipv6_support
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.name
}
output "subnet_ids" {
  description = "Identifiers of EC2 Subnets."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.subnet_ids
}
output "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.appliance_mode_support
}
output "dns_support" {
  description = "Whether DNS support is enabled."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.dns_support
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway VPC Attachment"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.tags
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.values
}
output "vpc_id" {
  description = "Identifier of EC2 VPC."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.vpc_id
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
