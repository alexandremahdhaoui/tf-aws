datasource "aws_api_gateway_sdk" "aws_api_gateway_sdk" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "body" {
  description = "SDK as a string."
  value       = aws_api_gateway_sdk.aws_api_gateway_sdk.body
}
output "content_type" {
  description = "Content-type header value in the HTTP response."
  value       = aws_api_gateway_sdk.aws_api_gateway_sdk.content_type
}
output "id" {
  description = "The REST-API-ID:STAGE-NAME"
  value       = aws_api_gateway_sdk.aws_api_gateway_sdk.id
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
