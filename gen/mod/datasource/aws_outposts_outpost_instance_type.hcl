datasource "aws_outposts_outpost_instance_type" "aws_outposts_outpost_instance_type" {
  arn                      = var.arn
  instance_type            = var.instance_type
  preferred_instance_types = var.preferred_instance_types
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) Outpost ARN."
  type        = string
}
variable "instance_type" {
  description = "(Optional) Desired instance type. Conflicts with preferred_instance_types."
  type        = string
  default     = ""
}
variable "preferred_instance_types" {
  description = "(Optional) Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with instance_type.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "arn" {
  description = "(Required) Outpost ARN."
  value       = aws_outposts_outpost_instance_type.aws_outposts_outpost_instance_type.arn
}
output "instance_type" {
  description = "(Optional) Desired instance type. Conflicts with preferred_instance_types."
  value       = aws_outposts_outpost_instance_type.aws_outposts_outpost_instance_type.instance_type
}
output "preferred_instance_types" {
  description = "(Optional) Ordered list of preferred instance types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. Conflicts with instance_type.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_outpost_instance_type.aws_outposts_outpost_instance_type.preferred_instance_types
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
