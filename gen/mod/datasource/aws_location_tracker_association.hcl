datasource "aws_location_tracker_association" "aws_location_tracker_association" {
  consumer_arn = var.consumer_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "consumer_arn" {
  description = "(Required) ARN of the geofence collection associated to tracker resource."
  type        = string
}
output "consumer_arn" {
  description = "(Required) ARN of the geofence collection associated to tracker resource."
  value       = aws_location_tracker_association.aws_location_tracker_association.consumer_arn
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
