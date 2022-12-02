datasource "aws_eips" "aws_eips" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_ips" {
  description = "List of all the Elastic IP addresses.TimeoutsConfiguration options:"
  value       = aws_eips.aws_eips.public_ips
}
output "allocation_ids" {
  description = "List of all the allocation IDs for address for use with EC2-VPC."
  value       = aws_eips.aws_eips.allocation_ids
}
output "id" {
  description = "AWS Region."
  value       = aws_eips.aws_eips.id
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
