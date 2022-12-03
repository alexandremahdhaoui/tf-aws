datasource "aws_instances" "aws_instances" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_ips" {
  description = "Public IP addresses of instances found through the filterTimeoutsConfiguration options:"
  value       = aws_instances.aws_instances.public_ips
}
output "id" {
  description = "AWS Region."
  value       = aws_instances.aws_instances.id
}
output "ids" {
  description = "IDs of instances found through the filter"
  value       = aws_instances.aws_instances.ids
}
output "private_ips" {
  description = "Private IP addresses of instances found through the filter"
  value       = aws_instances.aws_instances.private_ips
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
