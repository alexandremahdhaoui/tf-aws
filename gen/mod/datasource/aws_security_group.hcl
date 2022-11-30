datasource "aws_security_group" "aws_security_group" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Computed ARN of the security group.~> strongNote: The default security group for a VPC has the name default.TimeoutsConfiguration options:"
  value       = aws_security_group.aws_security_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the security group."
  value       = aws_security_group.aws_security_group.description
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
