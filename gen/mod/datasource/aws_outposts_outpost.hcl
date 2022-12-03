datasource "aws_outposts_outpost" "aws_outposts_outpost" {
  availability_zone    = var.availability_zone
  availability_zone_id = var.availability_zone_id
  description          = var.description
  id                   = var.id
  name                 = var.name
  owner_id             = var.owner_id
  arn                  = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_id" {
  description = "(Optional) AWS Account identifier of the Outpost owner.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "(Optional) ARN."
  type        = string
  default     = ""
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
  default     = ""
}
variable "name" {
  description = "(Optional) Name of the Outpost."
  type        = string
  default     = ""
}
output "availability_zone" {
  description = "Availability Zone name."
  value       = aws_outposts_outpost.aws_outposts_outpost.availability_zone
}
output "availability_zone_id" {
  description = "Availability Zone identifier."
  value       = aws_outposts_outpost.aws_outposts_outpost.availability_zone_id
}
output "description" {
  description = "Description."
  value       = aws_outposts_outpost.aws_outposts_outpost.description
}
output "id" {
  description = "(Optional) Identifier of the Outpost."
  value       = aws_outposts_outpost.aws_outposts_outpost.id
}
output "name" {
  description = "(Optional) Name of the Outpost."
  value       = aws_outposts_outpost.aws_outposts_outpost.name
}
output "owner_id" {
  description = "(Optional) AWS Account identifier of the Outpost owner.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_outpost.aws_outposts_outpost.owner_id
}
output "arn" {
  description = "(Optional) ARN."
  value       = aws_outposts_outpost.aws_outposts_outpost.arn
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
