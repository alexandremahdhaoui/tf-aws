datasource "aws_vpc_ipam_pools" "aws_vpc_ipam_pools" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the IPAM pool."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.id
}
output "allocation_resource_tags" {
  description = "Tags that are required to create resources in using this pool."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.allocation_resource_tags
}
output "arn" {
  description = "ARN of the pool"
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.arn
}
output "aws_service" {
  description = "Limits which service in AWS that the pool can be used in. \"ec2\", for example, allows users to use space for Elastic IP addresses and VPCs."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.aws_service
}
output "ipam_scope_id" {
  description = "ID of the scope the pool belongs to."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.ipam_scope_id
}
output "locale" {
  description = "Locale is the Region where your pool is available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.locale
}
output "source_ipam_pool_id" {
  description = "ID of the source IPAM pool."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.source_ipam_pool_id
}
output "allocation_min_netmask_length" {
  description = "The minimum netmask length that will be required for CIDR allocations in this pool."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.allocation_min_netmask_length
}
output "description" {
  description = "Description for the IPAM pool."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.description
}
output "ipam_pools" {
  description = "List of IPAM pools and their attributes. See below for detailsipam_poolsThe following attributes are available on each pool entry found."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.ipam_pools
}
output "address_family" {
  description = "IP protocol assigned to this pool."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.address_family
}
output "publicly_advertisable" {
  description = "Defines whether or not IPv6 pool space is publicly ∂advertisable over the internet."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.publicly_advertisable
}
output "allocation_default_netmask_length" {
  description = "A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.allocation_default_netmask_length
}
output "allocation_max_netmask_length" {
  description = "The maximum netmask length that will be required for CIDR allocations in this pool."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.allocation_max_netmask_length
}
output "auto_import" {
  description = "If enabled, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM."
  value       = aws_vpc_ipam_pools.aws_vpc_ipam_pools.auto_import
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
