datasource "aws_location_route_calculator" "aws_location_route_calculator" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Optional description of the route calculator resource."
  value       = aws_location_route_calculator.aws_location_route_calculator.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the route calculator."
  value       = aws_location_route_calculator.aws_location_route_calculator.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "calculator_arn" {
  description = "ARN for the Route calculator resource. Use the ARN when you specify a resource across AWS."
  value       = aws_location_route_calculator.aws_location_route_calculator.calculator_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "Timestamp for when the route calculator resource was created in ISO 8601 format."
  value       = aws_location_route_calculator.aws_location_route_calculator.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_source" {
  description = "Data provider of traffic and road network data."
  value       = aws_location_route_calculator.aws_location_route_calculator.data_source
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
