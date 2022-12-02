datasource "aws_ec2_local_gateway_virtual_interface_groups" "aws_ec2_local_gateway_virtual_interface_groups" {
  filter                              = var.filter
  id                                  = var.id
  ids                                 = var.ids
  local_gateway_virtual_interface_ids = var.local_gateway_virtual_interface_ids
  name                                = var.name
  tags                                = var.tags
  values                              = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "AWS Region."
  type        = string
  default     = ""
}
variable "ids" {
  description = "Set of EC2 Local Gateway Virtual Interface Group identifiers."
  type        = string
  default     = ""
}
variable "local_gateway_virtual_interface_ids" {
  description = "Set of EC2 Local Gateway Virtual Interface identifiers.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_local_gateway_virtual_interface_groups.aws_ec2_local_gateway_virtual_interface_groups.values
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  value       = aws_ec2_local_gateway_virtual_interface_groups.aws_ec2_local_gateway_virtual_interface_groups.filter
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_local_gateway_virtual_interface_groups.aws_ec2_local_gateway_virtual_interface_groups.id
}
output "ids" {
  description = "Set of EC2 Local Gateway Virtual Interface Group identifiers."
  value       = aws_ec2_local_gateway_virtual_interface_groups.aws_ec2_local_gateway_virtual_interface_groups.ids
}
output "local_gateway_virtual_interface_ids" {
  description = "Set of EC2 Local Gateway Virtual Interface identifiers.TimeoutsConfiguration options:"
  value       = aws_ec2_local_gateway_virtual_interface_groups.aws_ec2_local_gateway_virtual_interface_groups.local_gateway_virtual_interface_ids
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_local_gateway_virtual_interface_groups.aws_ec2_local_gateway_virtual_interface_groups.name
}
output "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  value       = aws_ec2_local_gateway_virtual_interface_groups.aws_ec2_local_gateway_virtual_interface_groups.tags
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
