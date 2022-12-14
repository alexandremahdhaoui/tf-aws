datasource "aws_api_gateway_api_key" "aws_api_gateway_api_key" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Set to the name of the API Key."
  value       = aws_api_gateway_api_key.aws_api_gateway_api_key.name
}
output "value" {
  description = "Set to the value of the API Key."
  value       = aws_api_gateway_api_key.aws_api_gateway_api_key.value
}
output "created_date" {
  description = "Date and time when the API Key was created."
  value       = aws_api_gateway_api_key.aws_api_gateway_api_key.created_date
}
output "description" {
  description = "Description of the API Key."
  value       = aws_api_gateway_api_key.aws_api_gateway_api_key.description
}
output "enabled" {
  description = "Whether the API Key is enabled."
  value       = aws_api_gateway_api_key.aws_api_gateway_api_key.enabled
}
output "id" {
  description = "Set to the ID of the API Key."
  value       = aws_api_gateway_api_key.aws_api_gateway_api_key.id
}
output "last_updated_date" {
  description = "Date and time when the API Key was last updated."
  value       = aws_api_gateway_api_key.aws_api_gateway_api_key.last_updated_date
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
