datasource "aws_api_gateway_resource" "aws_api_gateway_resource" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Set to the ID of the found Resource."
  value       = aws_api_gateway_resource.aws_api_gateway_resource.id
}
output "parent_id" {
  description = "Set to the ID of the parent Resource."
  value       = aws_api_gateway_resource.aws_api_gateway_resource.parent_id
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
