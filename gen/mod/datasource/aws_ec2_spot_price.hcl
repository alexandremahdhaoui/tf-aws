datasource "aws_ec2_spot_price" "aws_ec2_spot_price" {
  availability_zone    = var.availability_zone
  filter               = var.filter
  id                   = var.id
  instance_type        = var.instance_type
  name                 = var.name
  spot_price           = var.spot_price
  spot_price_timestamp = var.spot_price_timestamp
  values               = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "spot_price_timestamp" {
  description = "The timestamp at which the Spot Price value was published.TimeoutsConfiguration options:"
  type        = string
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "availability_zone" {
  description = "(Optional) Availability zone in which to query Spot price information."
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
variable "instance_type" {
  description = "(Optional) Type of instance for which to query Spot Price information."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter."
  type        = string
}
variable "spot_price" {
  description = "Most recent Spot Price value for the given instance type and AZ."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter."
  value       = aws_ec2_spot_price.aws_ec2_spot_price.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_price" {
  description = "Most recent Spot Price value for the given instance type and AZ."
  value       = aws_ec2_spot_price.aws_ec2_spot_price.spot_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_price_timestamp" {
  description = "The timestamp at which the Spot Price value was published.TimeoutsConfiguration options:"
  value       = aws_ec2_spot_price.aws_ec2_spot_price.spot_price_timestamp
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_spot_price.aws_ec2_spot_price.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "(Optional) Availability zone in which to query Spot price information."
  value       = aws_ec2_spot_price.aws_ec2_spot_price.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below.filter Argument Reference"
  value       = aws_ec2_spot_price.aws_ec2_spot_price.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_spot_price.aws_ec2_spot_price.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Optional) Type of instance for which to query Spot Price information."
  value       = aws_ec2_spot_price.aws_ec2_spot_price.instance_type
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
