datasource "aws_api_gateway_rest_api" "aws_api_gateway_rest_api" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "api_key_source" {
  description = "Source of the API key for requests."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.api_key_source
}
output "arn" {
  description = "ARN of the REST API."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.arn
}
output "binary_media_types" {
  description = "List of binary media types supported by the REST API."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.binary_media_types
}
output "description" {
  description = "Description of the REST API."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.description
}
output "execution_arn" {
  description = "Execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g., arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.execution_arn
}
output "endpoint_configuration" {
  description = "The endpoint configuration of this RestApi showing the endpoint types of the API."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.endpoint_configuration
}
output "id" {
  description = "Set to the ID of the found REST API."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.id
}
output "minimum_compression_size" {
  description = "Minimum response size to compress for the REST API."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.minimum_compression_size
}
output "policy" {
  description = "JSON formatted policy document that controls access to the API Gateway."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.policy
}
output "root_resource_id" {
  description = "Set to the ID of the API Gateway Resource on the found REST API where the route matches '/'."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.root_resource_id
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
