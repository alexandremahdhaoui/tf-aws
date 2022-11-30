datasource "aws_availability_zone" "aws_availability_zone" {
  filter               = var.filter
  network_border_group = var.network_border_group
  parent_zone_name     = var.parent_zone_name
  values               = var.values
  zone_type            = var.zone_type
  region               = var.region
  group_name           = var.group_name
  name                 = var.name
  name_suffix          = var.name_suffix
  opt_in_status        = var.opt_in_status
  parent_zone_id       = var.parent_zone_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name_suffix" {
  description = " for the us-west-2awl1-sfo-wlz-1 for the us-west-2-wl1-sfo-wlz-1 zone."
  type        = string
}
variable "opt_in_status" {
  description = "For Availability Zones, this always has the value of opt-in-not-required. For Local Zones, this is the opt in status. The possible values are opted-in and not-opted-in."
  type        = string
}
variable "parent_zone_id" {
  description = "ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls."
  type        = string
}
variable "region" {
  description = "Region where the selected availability zone resides. This is always the region selected on the provider, since this data source searches only within that region."
  type        = string
}
variable "group_name" {
  description = "For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example us-west-2-lax-1."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeAvailabilityZones API Reference."
  type        = string
}
variable "parent_zone_name" {
  description = "Name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "zone_type" {
  description = "Type of zone. Values are availability-zone, local-zone, and wavelength-zone.TimeoutsConfiguration options:"
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "network_border_group" {
  description = "The name of the location from which the address is advertised."
  type        = string
}
output "opt_in_status" {
  description = "For Availability Zones, this always has the value of opt-in-not-required. For Local Zones, this is the opt in status. The possible values are opted-in and not-opted-in."
  value       = aws_availability_zone.aws_availability_zone.opt_in_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_zone_id" {
  description = "ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls."
  value       = aws_availability_zone.aws_availability_zone.parent_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "Region where the selected availability zone resides. This is always the region selected on the provider, since this data source searches only within that region."
  value       = aws_availability_zone.aws_availability_zone.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_name" {
  description = "For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example us-west-2-lax-1."
  value       = aws_availability_zone.aws_availability_zone.group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeAvailabilityZones API Reference."
  value       = aws_availability_zone.aws_availability_zone.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_suffix" {
  description = " for the us-west-2awl1-sfo-wlz-1 for the us-west-2-wl1-sfo-wlz-1 zone."
  value       = aws_availability_zone.aws_availability_zone.name_suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_availability_zone.aws_availability_zone.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_type" {
  description = "Type of zone. Values are availability-zone, local-zone, and wavelength-zone.TimeoutsConfiguration options:"
  value       = aws_availability_zone.aws_availability_zone.zone_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = " configuration block:"
  value       = aws_availability_zone.aws_availability_zone.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_border_group" {
  description = "The name of the location from which the address is advertised."
  value       = aws_availability_zone.aws_availability_zone.network_border_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_zone_name" {
  description = "Name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls."
  value       = aws_availability_zone.aws_availability_zone.parent_zone_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_suffix" {
  description = " for the us-west-2awl1-sfo-wlz-1 for the us-west-2-wl1-sfo-wlz-1 zone."
  value       = aws_availability_zone.aws_availability_zone.name_suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_border_group" {
  description = "The name of the location from which the address is advertised."
  value       = aws_availability_zone.aws_availability_zone.network_border_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "opt_in_status" {
  description = "For Availability Zones, this always has the value of opt-in-not-required. For Local Zones, this is the opt in status. The possible values are opted-in and not-opted-in."
  value       = aws_availability_zone.aws_availability_zone.opt_in_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_zone_id" {
  description = "ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls."
  value       = aws_availability_zone.aws_availability_zone.parent_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_zone_name" {
  description = "Name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls."
  value       = aws_availability_zone.aws_availability_zone.parent_zone_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "Region where the selected availability zone resides. This is always the region selected on the provider, since this data source searches only within that region."
  value       = aws_availability_zone.aws_availability_zone.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_type" {
  description = "Type of zone. Values are availability-zone, local-zone, and wavelength-zone.TimeoutsConfiguration options:"
  value       = aws_availability_zone.aws_availability_zone.zone_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_name" {
  description = "For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example us-west-2-lax-1."
  value       = aws_availability_zone.aws_availability_zone.group_name
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
