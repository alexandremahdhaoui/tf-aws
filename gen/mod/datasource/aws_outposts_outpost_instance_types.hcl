datasource "aws_outposts_outpost_instance_types" "aws_outposts_outpost_instance_types" {
  arn = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) Outpost ARN.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "(Required) Outpost ARN.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_outposts_outpost_instance_types.aws_outposts_outpost_instance_types.arn
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
