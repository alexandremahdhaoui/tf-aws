datasource "aws_outposts_outpost" "aws_outposts_outpost" {
  id                   = var.id
  name                 = var.name
  owner_id             = var.owner_id
  arn                  = var.arn
  availability_zone    = var.availability_zone
  availability_zone_id = var.availability_zone_id
  description          = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Optional) ARN."
  type        = string
}
variable "availability_zone" {
  description = "Availability Zone name."
  type        = string
}
variable "availability_zone_id" {
  description = "Availability Zone identifier."
  type        = string
}
variable "description" {
  description = "Description."
  type        = string
}
variable "id" {
  description = "(Optional) Identifier of the Outpost."
  type        = string
}
variable "name" {
  description = "(Optional) Name of the Outpost."
  type        = string
}
variable "owner_id" {
  description = "(Optional) AWS Account identifier of the Outpost owner.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "(Optional) ARN."
  value       = aws_outposts_outpost.aws_outposts_outpost.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "Availability Zone name."
  value       = aws_outposts_outpost.aws_outposts_outpost.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone_id" {
  description = "Availability Zone identifier."
  value       = aws_outposts_outpost.aws_outposts_outpost.availability_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description."
  value       = aws_outposts_outpost.aws_outposts_outpost.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Identifier of the Outpost."
  value       = aws_outposts_outpost.aws_outposts_outpost.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Name of the Outpost."
  value       = aws_outposts_outpost.aws_outposts_outpost.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "(Optional) AWS Account identifier of the Outpost owner.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_outpost.aws_outposts_outpost.owner_id
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
