datasource "aws_globalaccelerator_accelerator" "aws_globalaccelerator_accelerator" {
  arn = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Optional) Full ARN of the Global Accelerator."
  type        = string
}
output "arn" {
  description = "(Optional) Full ARN of the Global Accelerator."
  value       = aws_globalaccelerator_accelerator.aws_globalaccelerator_accelerator.arn
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
