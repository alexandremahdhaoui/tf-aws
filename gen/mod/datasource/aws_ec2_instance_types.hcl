datasource "aws_ec2_instance_types" "aws_ec2_instance_types" {
  filter         = var.filter
  id             = var.id
  instance_types = var.instance_types
  name           = var.name
  values         = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below.filter Argument Reference"
  type        = string
}
variable "id" {
  description = "AWS Region."
  type        = string
}
variable "instance_types" {
  description = "List of EC2 Instance Types.TimeoutsConfiguration options:"
  type        = string
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_instance_types.aws_ec2_instance_types.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_instance_types.aws_ec2_instance_types.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below.filter Argument Reference"
  value       = aws_ec2_instance_types.aws_ec2_instance_types.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_instance_types.aws_ec2_instance_types.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_types" {
  description = "List of EC2 Instance Types.TimeoutsConfiguration options:"
  value       = aws_ec2_instance_types.aws_ec2_instance_types.instance_types
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
