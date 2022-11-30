datasource "aws_outposts_outposts" "aws_outposts_outposts" {
  availability_zone    = var.availability_zone
  availability_zone_id = var.availability_zone_id
  id                   = var.id
  owner_id             = var.owner_id
  site_id              = var.site_id
  arns                 = var.arns
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arns" {
  description = "Set of Amazon Resource Names (ARNs)."
  type        = string
}
variable "availability_zone" {
  description = "(Optional) Availability Zone name."
  type        = string
}
variable "availability_zone_id" {
  description = "(Optional) Availability Zone identifier."
  type        = string
}
variable "id" {
  description = "AWS Region."
  type        = string
}
variable "owner_id" {
  description = "(Optional) AWS Account identifier of the Outpost owner.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "site_id" {
  description = "(Optional) Site identifier."
  type        = string
}
output "arns" {
  description = "Set of Amazon Resource Names (ARNs)."
  value       = aws_outposts_outposts.aws_outposts_outposts.arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "(Optional) Availability Zone name."
  value       = aws_outposts_outposts.aws_outposts_outposts.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone_id" {
  description = "(Optional) Availability Zone identifier."
  value       = aws_outposts_outposts.aws_outposts_outposts.availability_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_outposts_outposts.aws_outposts_outposts.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "(Optional) AWS Account identifier of the Outpost owner.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_outposts.aws_outposts_outposts.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "site_id" {
  description = "(Optional) Site identifier."
  value       = aws_outposts_outposts.aws_outposts_outposts.site_id
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
