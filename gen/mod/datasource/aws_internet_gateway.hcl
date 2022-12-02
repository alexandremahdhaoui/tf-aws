datasource "aws_internet_gateway" "aws_internet_gateway" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "ID of an attached VPC.TimeoutsConfiguration options:"
  value       = aws_internet_gateway.aws_internet_gateway.vpc_id
}
output "arn" {
  description = "ARN of the Internet Gateway.All of the argument attributes except filterattachments"
  value       = aws_internet_gateway.aws_internet_gateway.arn
}
output "owner_id" {
  description = "ID of the AWS account that owns the internet gateway."
  value       = aws_internet_gateway.aws_internet_gateway.owner_id
}
output "state" {
  description = "Current state of the attachment between the gateway and the VPC. Present only if a VPC is attached"
  value       = aws_internet_gateway.aws_internet_gateway.state
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
