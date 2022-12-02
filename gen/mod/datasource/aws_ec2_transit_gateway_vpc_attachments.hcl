datasource "aws_ec2_transit_gateway_vpc_attachments" "aws_ec2_transit_gateway_vpc_attachments" {
  filter = var.filter
  ids    = var.ids
  name   = var.name
  values = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below.filter Argument Reference"
  type        = string
  default     = ""
}
variable "ids" {
  description = " A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the aws_ec2_transit_gateway_vpc_attachment data source, searching by identifier.TimeoutsConfiguration options:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter check available value on official documentation"
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below.filter Argument Reference"
  value       = aws_ec2_transit_gateway_vpc_attachments.aws_ec2_transit_gateway_vpc_attachments.filter
}
output "ids" {
  description = " A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the aws_ec2_transit_gateway_vpc_attachment data source, searching by identifier.TimeoutsConfiguration options:"
  value       = aws_ec2_transit_gateway_vpc_attachments.aws_ec2_transit_gateway_vpc_attachments.ids
}
output "name" {
  description = "(Required) Name of the filter check available value on official documentation"
  value       = aws_ec2_transit_gateway_vpc_attachments.aws_ec2_transit_gateway_vpc_attachments.name
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_vpc_attachments.aws_ec2_transit_gateway_vpc_attachments.values
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
