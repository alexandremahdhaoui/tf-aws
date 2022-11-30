datasource "aws_ec2_transit_gateway_attachment" "aws_ec2_transit_gateway_attachment" {
  arn                           = var.arn
  state                         = var.state
  values                        = var.values
  transit_gateway_attachment_id = var.transit_gateway_attachment_id
  transit_gateway_id            = var.transit_gateway_id
  filter                        = var.filter
  name                          = var.name
  resource_id                   = var.resource_id
  resource_owner_id             = var.resource_owner_id
  resource_type                 = var.resource_type
  tags                          = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the attachment."
  type        = string
}
variable "state" {
  description = "Attachment state."
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "resource_type" {
  description = "Resource type."
  type        = string
}
variable "tags" {
  description = "Key-value tags for the attachment."
  type        = string
}
variable "transit_gateway_attachment_id" {
  description = "(Optional) ID of the attachment.filter Argument Reference"
  type        = string
}
variable "transit_gateway_id" {
  description = "ID of the transit gateway."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  type        = string
}
variable "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  type        = string
}
variable "resource_id" {
  description = "ID of the resource."
  type        = string
}
variable "resource_owner_id" {
  description = "ID of the AWS account that owns the resource."
  type        = string
}
output "resource_owner_id" {
  description = "ID of the AWS account that owns the resource."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.resource_owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_type" {
  description = "Resource type."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.resource_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the attachment."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_attachment_id" {
  description = "(Optional) ID of the attachment.filter Argument Reference"
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.transit_gateway_attachment_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "ID of the transit gateway."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. Detailed below."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the field to filter by, as defined by the underlying AWS API."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_id" {
  description = "ID of the resource."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.resource_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the attachment."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "Attachment state."
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_transit_gateway_attachment.aws_ec2_transit_gateway_attachment.values
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
