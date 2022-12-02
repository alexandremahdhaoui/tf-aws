datasource "aws_dx_gateway" "aws_dx_gateway" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amazon_side_asn" {
  description = "ASN on the Amazon side of the connection."
  value       = aws_dx_gateway.aws_dx_gateway.amazon_side_asn
}
output "id" {
  description = "ID of the gateway."
  value       = aws_dx_gateway.aws_dx_gateway.id
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
