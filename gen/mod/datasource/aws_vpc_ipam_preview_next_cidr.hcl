datasource "aws_vpc_ipam_preview_next_cidr" "aws_vpc_ipam_preview_next_cidr" {
  cidr             = var.cidr
  disallowed_cidrs = var.disallowed_cidrs
  id               = var.id
  ipam_pool_id     = var.ipam_pool_id
  netmask_length   = var.netmask_length
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cidr" {
  description = "Previewed CIDR from the pool."
  type        = string
}
variable "disallowed_cidrs" {
  description = "(Optional) Exclude a particular CIDR range from being returned by the pool."
  type        = string
}
variable "id" {
  description = "ID of the preview.TimeoutsConfiguration options:"
  type        = string
}
variable "ipam_pool_id" {
  description = "(Required) ID of the pool to which you want to assign a CIDR."
  type        = string
}
variable "netmask_length" {
  description = "(Optional) Netmask length of the CIDR you would like to preview from the IPAM pool.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "cidr" {
  description = "Previewed CIDR from the pool."
  value       = aws_vpc_ipam_preview_next_cidr.aws_vpc_ipam_preview_next_cidr.cidr
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disallowed_cidrs" {
  description = "(Optional) Exclude a particular CIDR range from being returned by the pool."
  value       = aws_vpc_ipam_preview_next_cidr.aws_vpc_ipam_preview_next_cidr.disallowed_cidrs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the preview.TimeoutsConfiguration options:"
  value       = aws_vpc_ipam_preview_next_cidr.aws_vpc_ipam_preview_next_cidr.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipam_pool_id" {
  description = "(Required) ID of the pool to which you want to assign a CIDR."
  value       = aws_vpc_ipam_preview_next_cidr.aws_vpc_ipam_preview_next_cidr.ipam_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "netmask_length" {
  description = "(Optional) Netmask length of the CIDR you would like to preview from the IPAM pool.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_ipam_preview_next_cidr.aws_vpc_ipam_preview_next_cidr.netmask_length
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr" {
  description = "Previewed CIDR from the pool."
  value       = aws_vpc_ipam_preview_next_cidr.aws_vpc_ipam_preview_next_cidr.cidr
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the preview.TimeoutsConfiguration options:"
  value       = aws_vpc_ipam_preview_next_cidr.aws_vpc_ipam_preview_next_cidr.id
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
