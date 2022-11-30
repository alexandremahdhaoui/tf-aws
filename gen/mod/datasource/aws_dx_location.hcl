datasource "aws_dx_location" "aws_dx_location" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "available_providers" {
  description = "Names of the service providers for the location."
  value       = aws_dx_location.aws_dx_location.available_providers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "available_macsec_port_speeds" {
  description = "The available MAC Security (MACsec) port speeds for the location."
  value       = aws_dx_location.aws_dx_location.available_macsec_port_speeds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "available_port_speeds" {
  description = "The available port speeds for the location."
  value       = aws_dx_location.aws_dx_location.available_port_speeds
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
