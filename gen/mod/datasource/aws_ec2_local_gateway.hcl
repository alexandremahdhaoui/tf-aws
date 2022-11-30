datasource "aws_ec2_local_gateway" "aws_ec2_local_gateway" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "ARN of Outpost"
  value       = aws_ec2_local_gateway.aws_ec2_local_gateway.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "AWS account identifier that owns the Local Gateway."
  value       = aws_ec2_local_gateway.aws_ec2_local_gateway.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "State of the local gateway.TimeoutsConfiguration options:"
  value       = aws_ec2_local_gateway.aws_ec2_local_gateway.state
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
