datasource "aws_prefix_list" "aws_prefix_list" {
  id          = var.id
  name        = var.name
  values      = var.values
  cidr_blocks = var.cidr_blocks
  filter      = var.filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "cidr_blocks" {
  description = "List of CIDR blocks for the AWS service associated with the prefix list.TimeoutsConfiguration options:"
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "id" {
  description = "ID of the selected prefix list."
  type        = string
}
variable "name" {
  description = "Name of the selected prefix list."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_prefix_list.aws_prefix_list.values
}
output "cidr_blocks" {
  description = "List of CIDR blocks for the AWS service associated with the prefix list.TimeoutsConfiguration options:"
  value       = aws_prefix_list.aws_prefix_list.cidr_blocks
}
output "filter" {
  description = " configuration block:"
  value       = aws_prefix_list.aws_prefix_list.filter
}
output "id" {
  description = "ID of the selected prefix list."
  value       = aws_prefix_list.aws_prefix_list.id
}
output "name" {
  description = "Name of the selected prefix list."
  value       = aws_prefix_list.aws_prefix_list.name
}
output "name" {
  description = "Name of the selected prefix list."
  value       = aws_prefix_list.aws_prefix_list.name
}
output "cidr_blocks" {
  description = "List of CIDR blocks for the AWS service associated with the prefix list.TimeoutsConfiguration options:"
  value       = aws_prefix_list.aws_prefix_list.cidr_blocks
}
output "id" {
  description = "ID of the selected prefix list."
  value       = aws_prefix_list.aws_prefix_list.id
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
