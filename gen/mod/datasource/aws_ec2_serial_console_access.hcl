datasource "aws_ec2_serial_console_access" "aws_ec2_serial_console_access" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "Whether or not serial console access is enabled. Returns as true or false."
  value       = aws_ec2_serial_console_access.aws_ec2_serial_console_access.enabled
}
output "id" {
  description = "Region of serial console access.TimeoutsConfiguration options:"
  value       = aws_ec2_serial_console_access.aws_ec2_serial_console_access.id
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
