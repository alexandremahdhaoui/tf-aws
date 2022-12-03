datasource "aws_apigatewayv2_apis" "aws_apigatewayv2_apis" {
  name          = var.name
  protocol_type = var.protocol_type
  tags          = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "(Optional) API name."
  type        = string
  default     = ""
}
variable "protocol_type" {
  description = "(Optional) API protocol."
  type        = string
  default     = ""
}
output "name" {
  description = "(Optional) API name."
  value       = aws_apigatewayv2_apis.aws_apigatewayv2_apis.name
}
output "protocol_type" {
  description = "(Optional) API protocol."
  value       = aws_apigatewayv2_apis.aws_apigatewayv2_apis.protocol_type
}
output "tags" {
  description = "In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_apis.aws_apigatewayv2_apis.tags
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
