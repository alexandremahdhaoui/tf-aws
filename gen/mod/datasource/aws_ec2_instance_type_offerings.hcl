datasource "aws_ec2_instance_type_offerings" "aws_ec2_instance_type_offerings" {
  instance_types = var.instance_types
  location_type  = var.location_type
  location_types = var.location_types
  locations      = var.locations
  name           = var.name
  values         = var.values
  filter         = var.filter
  id             = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
}
variable "instance_types" {
  description = "List of EC2 Instance Types."
  type        = string
}
variable "location_type" {
  description = "(Optional) Location type. Defaults to region. Valid values: availability-zone, availability-zone-id, and region.filter Argument Reference"
  type        = string
  default     = ""
}
variable "location_types" {
  description = "List of location types.Note that the indexes of Instance Type Offering instance types, locations and location types correspond.TimeoutsConfiguration options:"
  type        = string
}
variable "locations" {
  description = "List of locations."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter. The location filter depends on the top-level location_type argument and if not specified, defaults to the current region."
  type        = string
}
output "location_type" {
  description = "(Optional) Location type. Defaults to region. Valid values: availability-zone, availability-zone-id, and region.filter Argument Reference"
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.location_type
}
output "location_types" {
  description = "List of location types.Note that the indexes of Instance Type Offering instance types, locations and location types correspond.TimeoutsConfiguration options:"
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.location_types
}
output "locations" {
  description = "List of locations."
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.locations
}
output "name" {
  description = "(Required) Name of the filter. The location filter depends on the top-level location_type argument and if not specified, defaults to the current region."
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.name
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.values
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.filter
}
output "id" {
  description = "AWS Region."
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.id
}
output "instance_types" {
  description = "List of EC2 Instance Types."
  value       = aws_ec2_instance_type_offerings.aws_ec2_instance_type_offerings.instance_types
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
