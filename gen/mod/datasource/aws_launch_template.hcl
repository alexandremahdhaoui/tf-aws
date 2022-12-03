datasource "aws_launch_template" "aws_launch_template" {
  name   = var.name
  tags   = var.tags
  values = var.values
  filter = var.filter
  id     = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) Configuration block(s) for filtering. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the launch template.This resource also exports a full set of attributes corresponding to the arguments of the aws_launch_template resource.TimeoutsConfiguration options:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeLaunchTemplates API Reference."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired Launch Template.filter Configuration Blockfilter configuration block:"
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "filter" {
  description = "(Optional) Configuration block(s) for filtering. Detailed below."
  value       = aws_launch_template.aws_launch_template.filter
}
output "id" {
  description = "ID of the launch template.This resource also exports a full set of attributes corresponding to the arguments of the aws_launch_template resource.TimeoutsConfiguration options:"
  value       = aws_launch_template.aws_launch_template.id
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeLaunchTemplates API Reference."
  value       = aws_launch_template.aws_launch_template.name
}
output "tags" {
  description = "(Optional) Map of tags, each pair of which must exactly match a pair on the desired Launch Template.filter Configuration Blockfilter configuration block:"
  value       = aws_launch_template.aws_launch_template.tags
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_launch_template.aws_launch_template.values
}
output "id" {
  description = "ID of the launch template.This resource also exports a full set of attributes corresponding to the arguments of the aws_launch_template resource.TimeoutsConfiguration options:"
  value       = aws_launch_template.aws_launch_template.id
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
