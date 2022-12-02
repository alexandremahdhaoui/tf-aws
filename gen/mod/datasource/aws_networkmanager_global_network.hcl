datasource "aws_networkmanager_global_network" "aws_networkmanager_global_network" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the global network."
  value       = aws_networkmanager_global_network.aws_networkmanager_global_network.arn
}
output "description" {
  description = "Description of the global network."
  value       = aws_networkmanager_global_network.aws_networkmanager_global_network.description
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
