datasource "aws_ec2_transit_gateway_vpc_attachment" "aws_ec2_transit_gateway_vpc_attachment" {
  vpc_id                 = var.vpc_id
  appliance_mode_support = var.appliance_mode_support
  filter                 = var.filter
  name                   = var.name
  subnet_ids             = var.subnet_ids
  transit_gateway_id     = var.transit_gateway_id
  values                 = var.values
  vpc_owner_id           = var.vpc_owner_id
  dns_support            = var.dns_support
  id                     = var.id
  ipv6_support           = var.ipv6_support
  tags                   = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
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
variable "vpc_id" {
  description = "Identifier of EC2 VPC."
  type        = string
}
variable "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
}
variable "ipv6_support" {
  description = "Whether IPv6 support is enabled."
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway VPC Attachment"
  type        = string
}
variable "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpc_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 VPC.TimeoutsConfiguration options:"
  type        = string
}
variable "dns_support" {
  description = "Whether DNS support is enabled."
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway VPC Attachment identifier"
  type        = string
}
output "dns_support" {
  description = "Whether DNS support is enabled."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.dns_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway VPC Attachment identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_support" {
  description = "Whether IPv6 support is enabled."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.ipv6_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway VPC Attachment"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 VPC.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.vpc_owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "appliance_mode_support" {
  description = "Whether Appliance Mode support is enabled."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.appliance_mode_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Identifiers of EC2 Subnets."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "Identifier of EC2 VPC."
  value       = aws_ec2_transit_gateway_vpc_attachment.aws_ec2_transit_gateway_vpc_attachment.vpc_id
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
