datasource "aws_ec2_managed_prefix_list" "aws_ec2_managed_prefix_list" {
  address_family = var.address_family
  entries        = var.entries
  filter         = var.filter
  tags           = var.tags
  arn            = var.arn
  id             = var.id
  max_entries    = var.max_entries
  name           = var.name
  owner_id       = var.owner_id
  values         = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the selected prefix list."
  type        = string
}
variable "id" {
  description = "ID of the selected prefix list."
  type        = string
}
variable "max_entries" {
  description = "When then prefix list is managed, the maximum number of entries it supports, or null otherwise."
  type        = string
}
variable "name" {
  description = "Name of the selected prefix list."
  type        = string
}
variable "owner_id" {
  description = "Account ID of the owner of a customer-managed prefix list, or AWS otherwise."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "address_family" {
  description = "Address family of the prefix list. Valid values are IPv4 and IPv6."
  type        = string
}
variable "entries" {
  description = "Set of entries in this prefix list. Each entry is an object with cidr and description."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "tags" {
  description = "Map of tags assigned to the resource.TimeoutsConfiguration options:"
  type        = string
}
output "filter" {
  description = " configuration block:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags assigned to the resource.TimeoutsConfiguration options:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address_family" {
  description = "Address family of the prefix list. Valid values are IPv4 and IPv6."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.address_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "entries" {
  description = "Set of entries in this prefix list. Each entry is an object with cidr and description."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.entries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_entries" {
  description = "When then prefix list is managed, the maximum number of entries it supports, or null otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.max_entries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "Account ID of the owner of a customer-managed prefix list, or AWS otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_entries" {
  description = "When then prefix list is managed, the maximum number of entries it supports, or null otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.max_entries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "Account ID of the owner of a customer-managed prefix list, or AWS otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags assigned to the resource.TimeoutsConfiguration options:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address_family" {
  description = "Address family of the prefix list. Valid values are IPv4 and IPv6."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.address_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "entries" {
  description = "Set of entries in this prefix list. Each entry is an object with cidr and description."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.entries
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
