datasource "aws_subnet" "aws_subnet" {
  map_public_ip_on_launch                        = var.map_public_ip_on_launch
  outpost_arn                                    = var.outpost_arn
  arn                                            = var.arn
  cidr_block                                     = var.cidr_block
  enable_resource_name_dns_aaaa_record_on_launch = var.enable_resource_name_dns_aaaa_record_on_launch
  id                                             = var.id
  owner_id                                       = var.owner_id
  state                                          = var.state
  vpc_id                                         = var.vpc_id
  customer_owned_ipv4_pool                       = var.customer_owned_ipv4_pool
  enable_resource_name_dns_a_record_on_launch    = var.enable_resource_name_dns_a_record_on_launch
  availability_zone_id                           = var.availability_zone_id
  available_ip_address_count                     = var.available_ip_address_count
  default_for_az                                 = var.default_for_az
  enable_dns64                                   = var.enable_dns64
  filter                                         = var.filter
  ipv6_cidr_block                                = var.ipv6_cidr_block
  assign_ipv6_address_on_creation                = var.assign_ipv6_address_on_creation
  availability_zone                              = var.availability_zone
  name                                           = var.name
  private_dns_hostname_type_on_launch            = var.private_dns_hostname_type_on_launch
  tags                                           = var.tags
  values                                         = var.values
  ipv6_native                                    = var.ipv6_native
  map_customer_owned_ip_on_launch                = var.map_customer_owned_ip_on_launch
  ipv6_cidr_block_association_id                 = var.ipv6_cidr_block_association_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the desired subnet."
  type        = string
}
variable "assign_ipv6_address_on_creation" {
  description = "Whether an IPv6 address is assigned on creation."
  type        = string
}
variable "availability_zone" {
  description = "(Optional) Availability zone where the subnet must reside."
  type        = string
}
variable "availability_zone_id" {
  description = "(Optional) ID of the Availability Zone for the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  type        = string
}
variable "available_ip_address_count" {
  description = "Available IP addresses of the subnet."
  type        = string
}
variable "default_for_az" {
  description = "(Optional) Whether the desired subnet must be the default subnet for its associated availability zone."
  type        = string
}
variable "enable_dns64" {
  description = "Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations."
  type        = string
}
variable "ipv6_native" {
  description = "Whether this is an IPv6-only subnet."
  type        = string
}
variable "map_customer_owned_ip_on_launch" {
  description = "Whether customer owned IP addresses are assigned on network interface creation."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames assigned to instances in the subnet at launch.TimeoutsConfiguration options:"
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired subnet."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field. A subnet will be selected if any one of the given values matches.In addition to the attributes above, the following attributes are exported:"
  type        = string
}
variable "ipv6_cidr_block_association_id" {
  description = "Association ID of the IPv6 CIDR block."
  type        = string
}
variable "arn" {
  description = "ARN of the subnet."
  type        = string
}
variable "cidr_block" {
  description = "(Optional) CIDR block of the desired subnet."
  type        = string
}
variable "map_public_ip_on_launch" {
  description = "Whether public IP addresses are assigned on instance launch."
  type        = string
}
variable "outpost_arn" {
  description = "ARN of the Outpost."
  type        = string
}
variable "vpc_id" {
  description = "(Optional) ID of the VPC that the desired subnet belongs to.filterThis block allows for complex filters. You can use one or more filter blocks."
  type        = string
}
variable "customer_owned_ipv4_pool" {
  description = "Identifier of customer owned IPv4 address pool."
  type        = string
}
variable "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  type        = string
}
variable "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  type        = string
}
variable "id" {
  description = "(Optional) ID of the specific subnet to retrieve."
  type        = string
}
variable "owner_id" {
  description = "ID of the AWS account that owns the subnet."
  type        = string
}
variable "state" {
  description = "(Optional) State that the desired subnet must have."
  type        = string
}
output "arn" {
  description = "ARN of the subnet."
  value       = aws_subnet.aws_subnet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_block" {
  description = "(Optional) CIDR block of the desired subnet."
  value       = aws_subnet.aws_subnet.cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "map_public_ip_on_launch" {
  description = "Whether public IP addresses are assigned on instance launch."
  value       = aws_subnet.aws_subnet.map_public_ip_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_subnet.aws_subnet.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customer_owned_ipv4_pool" {
  description = "Identifier of customer owned IPv4 address pool."
  value       = aws_subnet.aws_subnet.customer_owned_ipv4_pool
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_a_record_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_aaaa_record_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) ID of the specific subnet to retrieve."
  value       = aws_subnet.aws_subnet.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "ID of the AWS account that owns the subnet."
  value       = aws_subnet.aws_subnet.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "(Optional) State that the desired subnet must have."
  value       = aws_subnet.aws_subnet.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Optional) ID of the VPC that the desired subnet belongs to.filterThis block allows for complex filters. You can use one or more filter blocks."
  value       = aws_subnet.aws_subnet.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "assign_ipv6_address_on_creation" {
  description = "Whether an IPv6 address is assigned on creation."
  value       = aws_subnet.aws_subnet.assign_ipv6_address_on_creation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "(Optional) Availability zone where the subnet must reside."
  value       = aws_subnet.aws_subnet.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone_id" {
  description = "(Optional) ID of the Availability Zone for the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  value       = aws_subnet.aws_subnet.availability_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "available_ip_address_count" {
  description = "Available IP addresses of the subnet."
  value       = aws_subnet.aws_subnet.available_ip_address_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_for_az" {
  description = "(Optional) Whether the desired subnet must be the default subnet for its associated availability zone."
  value       = aws_subnet.aws_subnet.default_for_az
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_dns64" {
  description = "Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations."
  value       = aws_subnet.aws_subnet.enable_dns64
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_subnet.aws_subnet.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the desired subnet."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_native" {
  description = "Whether this is an IPv6-only subnet."
  value       = aws_subnet.aws_subnet.ipv6_native
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "map_customer_owned_ip_on_launch" {
  description = "Whether customer owned IP addresses are assigned on network interface creation."
  value       = aws_subnet.aws_subnet.map_customer_owned_ip_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_subnet.aws_subnet.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames assigned to instances in the subnet at launch.TimeoutsConfiguration options:"
  value       = aws_subnet.aws_subnet.private_dns_hostname_type_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired subnet."
  value       = aws_subnet.aws_subnet.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field. A subnet will be selected if any one of the given values matches.In addition to the attributes above, the following attributes are exported:"
  value       = aws_subnet.aws_subnet.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block_association_id" {
  description = "Association ID of the IPv6 CIDR block."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block_association_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customer_owned_ipv4_pool" {
  description = "Identifier of customer owned IPv4 address pool."
  value       = aws_subnet.aws_subnet.customer_owned_ipv4_pool
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_dns64" {
  description = "Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations."
  value       = aws_subnet.aws_subnet.enable_dns64
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_a_record_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_native" {
  description = "Whether this is an IPv6-only subnet."
  value       = aws_subnet.aws_subnet.ipv6_native
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "map_customer_owned_ip_on_launch" {
  description = "Whether customer owned IP addresses are assigned on network interface creation."
  value       = aws_subnet.aws_subnet.map_customer_owned_ip_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames assigned to instances in the subnet at launch.TimeoutsConfiguration options:"
  value       = aws_subnet.aws_subnet.private_dns_hostname_type_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "available_ip_address_count" {
  description = "Available IP addresses of the subnet."
  value       = aws_subnet.aws_subnet.available_ip_address_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "map_public_ip_on_launch" {
  description = "Whether public IP addresses are assigned on instance launch."
  value       = aws_subnet.aws_subnet.map_public_ip_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_subnet.aws_subnet.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "ID of the AWS account that owns the subnet."
  value       = aws_subnet.aws_subnet.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "assign_ipv6_address_on_creation" {
  description = "Whether an IPv6 address is assigned on creation."
  value       = aws_subnet.aws_subnet.assign_ipv6_address_on_creation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the subnet."
  value       = aws_subnet.aws_subnet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_aaaa_record_on_launch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_cidr_block_association_id" {
  description = "Association ID of the IPv6 CIDR block."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block_association_id
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
