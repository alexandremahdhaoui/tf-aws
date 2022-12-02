datasource "aws_cloudwatch_event_connection" "aws_cloudwatch_event_connection" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN (Amazon Resource Name) for the connection."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.arn
}
output "name" {
  description = "Name of the connection."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.name
}
output "secret_arn" {
  description = "ARN (Amazon Resource Name) for the secret created from the authorization parameters specified for the connection."
  value       = aws_cloudwatch_event_connection.aws_cloudwatch_event_connection.secret_arn
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
