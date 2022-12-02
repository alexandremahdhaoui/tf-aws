datasource "aws_subnet" "aws_subnet" {
  ipv6_native                                    = var.ipv6_native
  map_customer_owned_ip_on_launch                = var.map_customer_owned_ip_on_launch
  name                                           = var.name
  outpost_arn                                    = var.outpost_arn
  availability_zone                              = var.availability_zone
  cidr_block                                     = var.cidr_block
  enable_resource_name_dns_aaaa_record_on_launch = var.enable_resource_name_dns_aaaa_record_on_launch
  filter                                         = var.filter
  state                                          = var.state
  tags                                           = var.tags
  default_for_az                                 = var.default_for_az
  enable_resource_name_dns_a_record_on_launch    = var.enable_resource_name_dns_a_record_on_launch
  ipv6_cidr_block_association_id                 = var.ipv6_cidr_block_association_id
  vpc_id                                         = var.vpc_id
  enable_dns64                                   = var.enable_dns64
  id                                             = var.id
  ipv6_cidr_block                                = var.ipv6_cidr_block
  map_public_ip_on_launch                        = var.map_public_ip_on_launch
  arn                                            = var.arn
  assign_ipv6_address_on_creation                = var.assign_ipv6_address_on_creation
  availability_zone_id                           = var.availability_zone_id
  available_ip_address_count                     = var.available_ip_address_count
  owner_id                                       = var.owner_id
  values                                         = var.values
  customer_owned_ipv4_pool                       = var.customer_owned_ipv4_pool
  private_dns_hostname_type_on_launch            = var.private_dns_hostname_type_on_launch
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  type        = string
  default     = ""
}
variable "filter" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "ipv6_native" {
  description = "Whether this is an IPv6-only subnet."
  type        = string
  default     = ""
}
variable "map_customer_owned_ip_on_launch" {
  description = "Whether customer owned IP addresses are assigned on network interface creation."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "outpost_arn" {
  description = "ARN of the Outpost."
  type        = string
  default     = ""
}
variable "availability_zone" {
  description = "(Optional) Availability zone where the subnet must reside."
  type        = string
  default     = ""
}
variable "cidr_block" {
  description = "(Optional) CIDR block of the desired subnet."
  type        = string
  default     = ""
}
variable "state" {
  description = "(Optional) State that the desired subnet must have."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired subnet."
  type        = string
  default     = ""
}
variable "ipv6_cidr_block_association_id" {
  description = "Association ID of the IPv6 CIDR block."
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Optional) ID of the VPC that the desired subnet belongs to.filterThis block allows for complex filters. You can use one or more filter blocks."
  type        = string
  default     = ""
}
variable "default_for_az" {
  description = "(Optional) Whether the desired subnet must be the default subnet for its associated availability zone."
  type        = string
  default     = ""
}
variable "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  type        = string
  default     = ""
}
variable "availability_zone_id" {
  description = "(Optional) ID of the Availability Zone for the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  type        = string
  default     = ""
}
variable "available_ip_address_count" {
  description = "Available IP addresses of the subnet."
  type        = string
  default     = ""
}
variable "enable_dns64" {
  description = "Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations."
  type        = string
  default     = ""
}
variable "id" {
  description = "(Optional) ID of the specific subnet to retrieve."
  type        = string
  default     = ""
}
variable "ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the desired subnet."
  type        = string
  default     = ""
}
variable "map_public_ip_on_launch" {
  description = "Whether public IP addresses are assigned on instance launch."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the subnet."
  type        = string
  default     = ""
}
variable "assign_ipv6_address_on_creation" {
  description = "Whether an IPv6 address is assigned on creation."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "ID of the AWS account that owns the subnet."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given field. A subnet will be selected if any one of the given values matches.In addition to the attributes above, the following attributes are exported:"
  type        = string
}
variable "customer_owned_ipv4_pool" {
  description = "Identifier of customer owned IPv4 address pool."
  type        = string
  default     = ""
}
variable "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames assigned to instances in the subnet at launch.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
output "id" {
  description = "(Optional) ID of the specific subnet to retrieve."
  value       = aws_subnet.aws_subnet.id
}
output "ipv6_cidr_block" {
  description = "(Optional) IPv6 CIDR block of the desired subnet."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block
}
output "map_public_ip_on_launch" {
  description = "Whether public IP addresses are assigned on instance launch."
  value       = aws_subnet.aws_subnet.map_public_ip_on_launch
}
output "arn" {
  description = "ARN of the subnet."
  value       = aws_subnet.aws_subnet.arn
}
output "assign_ipv6_address_on_creation" {
  description = "Whether an IPv6 address is assigned on creation."
  value       = aws_subnet.aws_subnet.assign_ipv6_address_on_creation
}
output "availability_zone_id" {
  description = "(Optional) ID of the Availability Zone for the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  value       = aws_subnet.aws_subnet.availability_zone_id
}
output "available_ip_address_count" {
  description = "Available IP addresses of the subnet."
  value       = aws_subnet.aws_subnet.available_ip_address_count
}
output "enable_dns64" {
  description = "Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations."
  value       = aws_subnet.aws_subnet.enable_dns64
}
output "owner_id" {
  description = "ID of the AWS account that owns the subnet."
  value       = aws_subnet.aws_subnet.owner_id
}
output "values" {
  description = "(Required) Set of values that are accepted for the given field. A subnet will be selected if any one of the given values matches.In addition to the attributes above, the following attributes are exported:"
  value       = aws_subnet.aws_subnet.values
}
output "customer_owned_ipv4_pool" {
  description = "Identifier of customer owned IPv4 address pool."
  value       = aws_subnet.aws_subnet.customer_owned_ipv4_pool
}
output "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames assigned to instances in the subnet at launch.TimeoutsConfiguration options:"
  value       = aws_subnet.aws_subnet.private_dns_hostname_type_on_launch
}
output "map_customer_owned_ip_on_launch" {
  description = "Whether customer owned IP addresses are assigned on network interface creation."
  value       = aws_subnet.aws_subnet.map_customer_owned_ip_on_launch
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_subnet.aws_subnet.name
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_subnet.aws_subnet.outpost_arn
}
output "availability_zone" {
  description = "(Optional) Availability zone where the subnet must reside."
  value       = aws_subnet.aws_subnet.availability_zone
}
output "cidr_block" {
  description = "(Optional) CIDR block of the desired subnet."
  value       = aws_subnet.aws_subnet.cidr_block
}
output "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_aaaa_record_on_launch
}
output "filter" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_subnet.aws_subnet.filter
}
output "ipv6_native" {
  description = "Whether this is an IPv6-only subnet."
  value       = aws_subnet.aws_subnet.ipv6_native
}
output "state" {
  description = "(Optional) State that the desired subnet must have."
  value       = aws_subnet.aws_subnet.state
}
output "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired subnet."
  value       = aws_subnet.aws_subnet.tags
}
output "default_for_az" {
  description = "(Optional) Whether the desired subnet must be the default subnet for its associated availability zone."
  value       = aws_subnet.aws_subnet.default_for_az
}
output "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_a_record_on_launch
}
output "ipv6_cidr_block_association_id" {
  description = "Association ID of the IPv6 CIDR block."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block_association_id
}
output "vpc_id" {
  description = "(Optional) ID of the VPC that the desired subnet belongs to.filterThis block allows for complex filters. You can use one or more filter blocks."
  value       = aws_subnet.aws_subnet.vpc_id
}
output "ipv6_cidr_block_association_id" {
  description = "Association ID of the IPv6 CIDR block."
  value       = aws_subnet.aws_subnet.ipv6_cidr_block_association_id
}
output "map_customer_owned_ip_on_launch" {
  description = "Whether customer owned IP addresses are assigned on network interface creation."
  value       = aws_subnet.aws_subnet.map_customer_owned_ip_on_launch
}
output "private_dns_hostname_type_on_launch" {
  description = "The type of hostnames assigned to instances in the subnet at launch.TimeoutsConfiguration options:"
  value       = aws_subnet.aws_subnet.private_dns_hostname_type_on_launch
}
output "arn" {
  description = "ARN of the subnet."
  value       = aws_subnet.aws_subnet.arn
}
output "assign_ipv6_address_on_creation" {
  description = "Whether an IPv6 address is assigned on creation."
  value       = aws_subnet.aws_subnet.assign_ipv6_address_on_creation
}
output "enable_resource_name_dns_a_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_a_record_on_launch
}
output "enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_subnet.aws_subnet.enable_resource_name_dns_aaaa_record_on_launch
}
output "ipv6_native" {
  description = "Whether this is an IPv6-only subnet."
  value       = aws_subnet.aws_subnet.ipv6_native
}
output "outpost_arn" {
  description = "ARN of the Outpost."
  value       = aws_subnet.aws_subnet.outpost_arn
}
output "available_ip_address_count" {
  description = "Available IP addresses of the subnet."
  value       = aws_subnet.aws_subnet.available_ip_address_count
}
output "customer_owned_ipv4_pool" {
  description = "Identifier of customer owned IPv4 address pool."
  value       = aws_subnet.aws_subnet.customer_owned_ipv4_pool
}
output "enable_dns64" {
  description = "Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations."
  value       = aws_subnet.aws_subnet.enable_dns64
}
output "map_public_ip_on_launch" {
  description = "Whether public IP addresses are assigned on instance launch."
  value       = aws_subnet.aws_subnet.map_public_ip_on_launch
}
output "owner_id" {
  description = "ID of the AWS account that owns the subnet."
  value       = aws_subnet.aws_subnet.owner_id
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
