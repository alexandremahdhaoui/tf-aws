datasource "aws_outposts_asset" "aws_outposts_asset" {
  arn            = var.arn
  asset_id       = var.asset_id
  asset_type     = var.asset_type
  host_id        = var.host_id
  rack_elevation = var.rack_elevation
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) Outpost ARN."
  type        = string
}
variable "asset_id" {
  description = "(Required) ID of the asset.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "asset_type" {
  description = "Type of the asset."
  type        = string
}
variable "host_id" {
  description = "Host ID of the Dedicated Hosts on the asset, if a Dedicated Host is provisioned."
  type        = string
}
variable "rack_elevation" {
  description = "Position of an asset in a rack measured in rack units."
  type        = string
}
output "host_id" {
  description = "Host ID of the Dedicated Hosts on the asset, if a Dedicated Host is provisioned."
  value       = aws_outposts_asset.aws_outposts_asset.host_id
}
output "rack_elevation" {
  description = "Position of an asset in a rack measured in rack units."
  value       = aws_outposts_asset.aws_outposts_asset.rack_elevation
}
output "arn" {
  description = "(Required) Outpost ARN."
  value       = aws_outposts_asset.aws_outposts_asset.arn
}
output "asset_id" {
  description = "(Required) ID of the asset.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_asset.aws_outposts_asset.asset_id
}
output "asset_type" {
  description = "Type of the asset."
  value       = aws_outposts_asset.aws_outposts_asset.asset_type
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
