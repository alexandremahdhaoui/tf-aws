datasource "aws_ec2_local_gateway_virtual_interface_group" "aws_ec2_local_gateway_virtual_interface_group" {
  id                                  = var.id
  local_gateway_id                    = var.local_gateway_id
  local_gateway_virtual_interface_ids = var.local_gateway_virtual_interface_ids
  name                                = var.name
  tags                                = var.tags
  values                              = var.values
  filter                              = var.filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface Group."
  type        = string
  default     = ""
}
variable "local_gateway_id" {
  description = "(Optional) Identifier of EC2 Local Gateway."
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
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.filter
}
output "id" {
  description = "(Optional) Identifier of EC2 Local Gateway Virtual Interface Group."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.id
}
output "local_gateway_id" {
  description = "(Optional) Identifier of EC2 Local Gateway."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.local_gateway_id
}
output "local_gateway_virtual_interface_ids" {
  description = "Set of EC2 Local Gateway Virtual Interface identifiers.TimeoutsConfiguration options:"
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.local_gateway_virtual_interface_ids
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.name
}
output "tags" {
  description = "(Optional) Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.filter Argument ReferenceThe filter configuration block supports the following arguments:"
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.tags
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_local_gateway_virtual_interface_group.aws_ec2_local_gateway_virtual_interface_group.values
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
