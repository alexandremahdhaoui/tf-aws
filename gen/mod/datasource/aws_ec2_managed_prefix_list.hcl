datasource "aws_ec2_managed_prefix_list" "aws_ec2_managed_prefix_list" {
  address_family = var.address_family
  arn            = var.arn
  entries        = var.entries
  id             = var.id
  owner_id       = var.owner_id
  values         = var.values
  filter         = var.filter
  max_entries    = var.max_entries
  name           = var.name
  tags           = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the selected prefix list."
  type        = string
}
variable "entries" {
  description = "Set of entries in this prefix list. Each entry is an object with cidr and description."
  type        = string
}
variable "id" {
  description = "ID of the selected prefix list."
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
variable "max_entries" {
  description = "When then prefix list is managed, the maximum number of entries it supports, or null otherwise."
  type        = string
}
variable "name" {
  description = "Name of the selected prefix list."
  type        = string
}
variable "tags" {
  description = "Map of tags assigned to the resource.TimeoutsConfiguration options:"
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
output "address_family" {
  description = "Address family of the prefix list. Valid values are IPv4 and IPv6."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.address_family
}
output "arn" {
  description = "ARN of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.arn
}
output "entries" {
  description = "Set of entries in this prefix list. Each entry is an object with cidr and description."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.entries
}
output "id" {
  description = "ID of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.id
}
output "owner_id" {
  description = "Account ID of the owner of a customer-managed prefix list, or AWS otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.owner_id
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.values
}
output "filter" {
  description = " configuration block:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.filter
}
output "max_entries" {
  description = "When then prefix list is managed, the maximum number of entries it supports, or null otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.max_entries
}
output "name" {
  description = "Name of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.name
}
output "tags" {
  description = "Map of tags assigned to the resource.TimeoutsConfiguration options:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.tags
}
output "arn" {
  description = "ARN of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.arn
}
output "entries" {
  description = "Set of entries in this prefix list. Each entry is an object with cidr and description."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.entries
}
output "id" {
  description = "ID of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.id
}
output "max_entries" {
  description = "When then prefix list is managed, the maximum number of entries it supports, or null otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.max_entries
}
output "name" {
  description = "Name of the selected prefix list."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.name
}
output "owner_id" {
  description = "Account ID of the owner of a customer-managed prefix list, or AWS otherwise."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.owner_id
}
output "tags" {
  description = "Map of tags assigned to the resource.TimeoutsConfiguration options:"
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.tags
}
output "address_family" {
  description = "Address family of the prefix list. Valid values are IPv4 and IPv6."
  value       = aws_ec2_managed_prefix_list.aws_ec2_managed_prefix_list.address_family
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
