datasource "aws_route_tables" "aws_route_tables" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ids" {
  description = "List of all the route table ids found.TimeoutsConfiguration options:"
  value       = aws_route_tables.aws_route_tables.ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_route_tables.aws_route_tables.id
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