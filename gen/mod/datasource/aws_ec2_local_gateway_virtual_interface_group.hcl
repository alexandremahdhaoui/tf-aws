datasource "aws_ec2_local_gateway_virtual_interface_group" "aws_ec2_local_gateway_virtual_interface_group" {
  local_gateway_virtual_interface_ids = var.local_gateway_virtual_interface_ids
  name                                = var.name
  tags                                = var.tags
  values                              = var.values
  filter                              = var.filter
  id                                  = var.id
  local_gateway_id                    = var.local_gateway_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "local_gateway_virtual_interface_ids" {
  description = "Set of EC2 Local Gateway Virtual Interface identifiers.TimeoutsConfiguration options:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface Group."
  type        = string
}
variable "local_gateway_id" {
  description = "(Optional) Identifier of EC2 Local Gateway."
  type        = string
}
output "local_gateway_id" {
  description = "(Optional) Identifier of EC2 Local Gateway."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.local_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_gateway_virtual_interface_ids" {
  description = "Set of EC2 Local Gateway Virtual Interface identifiers.TimeoutsConfiguration options:"
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.local_gateway_virtual_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface Group."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.id
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
