datasource "aws_ec2_transit_gateway_multicast_domain" "aws_ec2_transit_gateway_multicast_domain" {
  static_sources_support              = var.static_sources_support
  tags                                = var.tags
  transit_gateway_attachment_id       = var.transit_gateway_attachment_id
  transit_gateway_id                  = var.transit_gateway_id
  id                                  = var.id
  members                             = var.members
  sources                             = var.sources
  values                              = var.values
  associations                        = var.associations
  igmpv2_support                      = var.igmpv2_support
  owner_id                            = var.owner_id
  subnet_id                           = var.subnet_id
  transit_gateway_multicast_domain_id = var.transit_gateway_multicast_domain_id
  arn                                 = var.arn
  name                                = var.name
  network_interface_id                = var.network_interface_id
  auto_accept_shared_associations     = var.auto_accept_shared_associations
  filter                              = var.filter
  group_ip_address                    = var.group_ip_address
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier.TimeoutsConfiguration options:"
  type        = string
}
variable "id" {
  description = "EC2 Transit Gateway Multicast Domain identifier."
  type        = string
}
variable "members" {
  description = ""
  type        = string
}
variable "sources" {
  description = ""
  type        = string
}
variable "static_sources_support" {
  description = "Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain."
  type        = string
}
variable "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Multicast Domain."
  type        = string
}
variable "transit_gateway_attachment_id" {
  description = "The ID of the transit gateway attachment."
  type        = string
}
variable "associations" {
  description = "EC2 Transit Gateway Multicast Domain Associations\n"
  type        = string
}
variable "igmpv2_support" {
  description = "Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain."
  type        = string
}
variable "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field. A multicast domain will be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "EC2 Transit Gateway Multicast Domain ARN."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "network_interface_id" {
  description = "The group members' network interface ID."
  type        = string
}
variable "subnet_id" {
  description = "The ID of the subnet associated with the transit gateway multicast domain."
  type        = string
}
variable "transit_gateway_multicast_domain_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Multicast Domain.filter Argument ReferenceThis block allows for complex filters. You can use one or more filter blocks."
  type        = string
}
variable "auto_accept_shared_associations" {
  description = "Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
}
variable "group_ip_address" {
  description = "The IP address assigned to the transit gateway multicast group."
  type        = string
}
output "auto_accept_shared_associations" {
  description = "Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.auto_accept_shared_associations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_ip_address" {
  description = "The IP address assigned to the transit gateway multicast group."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.group_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "static_sources_support" {
  description = "Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.static_sources_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the EC2 Transit Gateway Multicast Domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_attachment_id" {
  description = "The ID of the transit gateway attachment."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.transit_gateway_attachment_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "EC2 Transit Gateway identifier.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EC2 Transit Gateway Multicast Domain identifier."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "members" {
  description = ""
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.members
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sources" {
  description = ""
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.sources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field. A multicast domain will be selected if any one of the given values matches.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associations" {
  description = "EC2 Transit Gateway Multicast Domain Associations\n"
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.associations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "igmpv2_support" {
  description = "Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.igmpv2_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "The ID of the subnet associated with the transit gateway multicast domain."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_multicast_domain_id" {
  description = "(Optional) Identifier of the EC2 Transit Gateway Multicast Domain.filter Argument ReferenceThis block allows for complex filters. You can use one or more filter blocks."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.transit_gateway_multicast_domain_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "EC2 Transit Gateway Multicast Domain ARN."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "The group members' network interface ID."
  value       = aws_ec2_transit_gateway_multicast_domain.aws_ec2_transit_gateway_multicast_domain.network_interface_id
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
