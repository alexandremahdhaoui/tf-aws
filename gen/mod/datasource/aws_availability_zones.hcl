datasource "aws_availability_zones" "aws_availability_zones" {
  names                  = var.names
  state                  = var.state
  values                 = var.values
  zone_ids               = var.zone_ids
  all_availability_zones = var.all_availability_zones
  exclude_zone_ids       = var.exclude_zone_ids
  filter                 = var.filter
  group_names            = var.group_names
  id                     = var.id
  name                   = var.name
  exclude_names          = var.exclude_names
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
variable "group_names" {
  description = " A set of the Availability Zone Group names. For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example us-west-2-lax-1."
  type        = string
}
variable "id" {
  description = "Region of the Availability Zones."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeAvailabilityZones API Reference."
  type        = string
}
variable "exclude_names" {
  description = "(Optional) List of Availability Zone names to exclude."
  type        = string
  default     = ""
}
variable "exclude_zone_ids" {
  description = "(Optional) List of Availability Zone IDs to exclude."
  type        = string
  default     = ""
}
variable "state" {
  description = "(Optional) Allows to filter list of Availability Zones based on their\ncurrent state. Can be either \"available\", \"information\", \"impaired\"\"unavailable\"filter Configuration Blockfilter configuration block:"
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "zone_ids" {
  description = "List of the Availability Zone IDs available to the account.Note that the indexes of Availability Zone names and IDs correspond.TimeoutsConfiguration options:"
  type        = string
}
variable "all_availability_zones" {
  description = "(Optional) Set to true to include all Availability Zones and Local Zones regardless of your opt in status."
  type        = string
  default     = ""
}
variable "names" {
  description = "List of the Availability Zone names available to the account."
  type        = string
}
output "exclude_zone_ids" {
  description = "(Optional) List of Availability Zone IDs to exclude."
  value       = aws_availability_zones.aws_availability_zones.exclude_zone_ids
}
output "filter" {
  description = "(Optional) Configuration block(s) for filtering. Detailed below."
  value       = aws_availability_zones.aws_availability_zones.filter
}
output "group_names" {
  description = " A set of the Availability Zone Group names. For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example us-west-2-lax-1."
  value       = aws_availability_zones.aws_availability_zones.group_names
}
output "id" {
  description = "Region of the Availability Zones."
  value       = aws_availability_zones.aws_availability_zones.id
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeAvailabilityZones API Reference."
  value       = aws_availability_zones.aws_availability_zones.name
}
output "exclude_names" {
  description = "(Optional) List of Availability Zone names to exclude."
  value       = aws_availability_zones.aws_availability_zones.exclude_names
}
output "names" {
  description = "List of the Availability Zone names available to the account."
  value       = aws_availability_zones.aws_availability_zones.names
}
output "state" {
  description = "(Optional) Allows to filter list of Availability Zones based on their\ncurrent state. Can be either \"available\", \"information\", \"impaired\"\"unavailable\"filter Configuration Blockfilter configuration block:"
  value       = aws_availability_zones.aws_availability_zones.state
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_availability_zones.aws_availability_zones.values
}
output "zone_ids" {
  description = "List of the Availability Zone IDs available to the account.Note that the indexes of Availability Zone names and IDs correspond.TimeoutsConfiguration options:"
  value       = aws_availability_zones.aws_availability_zones.zone_ids
}
output "all_availability_zones" {
  description = "(Optional) Set to true to include all Availability Zones and Local Zones regardless of your opt in status."
  value       = aws_availability_zones.aws_availability_zones.all_availability_zones
}
output "id" {
  description = "Region of the Availability Zones."
  value       = aws_availability_zones.aws_availability_zones.id
}
output "names" {
  description = "List of the Availability Zone names available to the account."
  value       = aws_availability_zones.aws_availability_zones.names
}
output "zone_ids" {
  description = "List of the Availability Zone IDs available to the account.Note that the indexes of Availability Zone names and IDs correspond.TimeoutsConfiguration options:"
  value       = aws_availability_zones.aws_availability_zones.zone_ids
}
output "group_names" {
  description = " A set of the Availability Zone Group names. For Availability Zones, this is the same value as the Region name. For Local Zones, the name of the associated group, for example us-west-2-lax-1."
  value       = aws_availability_zones.aws_availability_zones.group_names
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
