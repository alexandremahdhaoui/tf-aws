datasource "aws_ec2_instance_type_offering" "aws_ec2_instance_type_offering" {
  values                   = var.values
  filter                   = var.filter
  id                       = var.id
  instance_type            = var.instance_type
  location_type            = var.location_type
  name                     = var.name
  preferred_instance_types = var.preferred_instance_types
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "EC2 Instance Type."
  type        = string
}
variable "instance_type" {
  description = "EC2 Instance Type.TimeoutsConfiguration options:"
  type        = string
}
variable "location_type" {
  description = "(Optional) Location type. Defaults to region. Valid values: availability-zone, availability-zone-id, and region."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the filter. The location filter depends on the top-level location_type argument and if not specified, defaults to the current region."
  type        = string
}
variable "preferred_instance_types" {
  description = "(Optional) Ordered list of preferred EC2 Instance Types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.filter Argument Reference"
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "values" {
  description = "(Required) List of one or more values for the filter.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_instance_type_offering.aws_ec2_instance_type_offering.values
}
output "filter" {
  description = "(Optional) One or more configuration blocks containing name-values filters. See the EC2 API Reference for supported filters. Detailed below."
  value       = aws_ec2_instance_type_offering.aws_ec2_instance_type_offering.filter
}
output "id" {
  description = "EC2 Instance Type."
  value       = aws_ec2_instance_type_offering.aws_ec2_instance_type_offering.id
}
output "instance_type" {
  description = "EC2 Instance Type.TimeoutsConfiguration options:"
  value       = aws_ec2_instance_type_offering.aws_ec2_instance_type_offering.instance_type
}
output "location_type" {
  description = "(Optional) Location type. Defaults to region. Valid values: availability-zone, availability-zone-id, and region."
  value       = aws_ec2_instance_type_offering.aws_ec2_instance_type_offering.location_type
}
output "name" {
  description = "(Required) Name of the filter. The location filter depends on the top-level location_type argument and if not specified, defaults to the current region."
  value       = aws_ec2_instance_type_offering.aws_ec2_instance_type_offering.name
}
output "preferred_instance_types" {
  description = "(Optional) Ordered list of preferred EC2 Instance Types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.filter Argument Reference"
  value       = aws_ec2_instance_type_offering.aws_ec2_instance_type_offering.preferred_instance_types
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
