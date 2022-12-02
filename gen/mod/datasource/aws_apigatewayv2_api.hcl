datasource "aws_apigatewayv2_api" "aws_apigatewayv2_api" {
  allow_methods                = var.allow_methods
  arn                          = var.arn
  version                      = var.version
  description                  = var.description
  expose_headers               = var.expose_headers
  name                         = var.name
  protocol_type                = var.protocol_type
  allow_credentials            = var.allow_credentials
  allow_headers                = var.allow_headers
  execution_arn                = var.execution_arn
  tags                         = var.tags
  cors_configuration           = var.cors_configuration
  disable_execute_api_endpoint = var.disable_execute_api_endpoint
  route_selection_expression   = var.route_selection_expression
  allow_origins                = var.allow_origins
  api_endpoint                 = var.api_endpoint
  api_id                       = var.api_id
  api_key_selection_expression = var.api_key_selection_expression
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cors_configuration" {
  description = "Cross-origin resource sharing (CORS) configuration"
  type        = string
}
variable "disable_execute_api_endpoint" {
  description = "Whether clients can invoke the API by using the default execute-api endpoint."
  type        = string
}
variable "route_selection_expression" {
  description = "The route selection expression for the API."
  type        = string
}
variable "allow_origins" {
  description = "Set of allowed origins."
  type        = string
}
variable "api_endpoint" {
  description = "URI of the API, of the form https://{api-id}.execute-api.{region}.amazonaws.com for HTTP APIs and wss://{api-id}.execute-api.{region}.amazonaws.com for WebSocket APIs."
  type        = string
}
variable "api_id" {
  description = "(Required) API identifier.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "api_key_selection_expression" {
  description = "An API key selection expression"
  type        = string
}
variable "allow_methods" {
  description = "Set of allowed HTTP methods."
  type        = string
}
variable "arn" {
  description = "ARN of the API."
  type        = string
}
variable "version" {
  description = "Version identifier for the API.The cors_configuration object supports the following:"
  type        = string
}
variable "description" {
  description = "Description of the API."
  type        = string
}
variable "expose_headers" {
  description = "Set of exposed HTTP headers."
  type        = string
}
variable "name" {
  description = "Name of the API."
  type        = string
}
variable "protocol_type" {
  description = "API protocol."
  type        = string
}
variable "allow_credentials" {
  description = "Whether credentials are included in the CORS request."
  type        = string
}
variable "allow_headers" {
  description = "Set of allowed HTTP headers."
  type        = string
}
variable "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  type        = string
}
variable "tags" {
  description = "Map of resource tags."
  type        = string
}
output "route_selection_expression" {
  description = "The route selection expression for the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.route_selection_expression
}
output "allow_origins" {
  description = "Set of allowed origins."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_origins
}
output "api_endpoint" {
  description = "URI of the API, of the form https://{api-id}.execute-api.{region}.amazonaws.com for HTTP APIs and wss://{api-id}.execute-api.{region}.amazonaws.com for WebSocket APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_endpoint
}
output "api_id" {
  description = "(Required) API identifier.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_id
}
output "api_key_selection_expression" {
  description = "An API key selection expression"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_key_selection_expression
}
output "cors_configuration" {
  description = "Cross-origin resource sharing (CORS) configuration"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.cors_configuration
}
output "disable_execute_api_endpoint" {
  description = "Whether clients can invoke the API by using the default execute-api endpoint."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.disable_execute_api_endpoint
}
output "allow_methods" {
  description = "Set of allowed HTTP methods."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_methods
}
output "arn" {
  description = "ARN of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.arn
}
output "description" {
  description = "Description of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.description
}
output "expose_headers" {
  description = "Set of exposed HTTP headers."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.expose_headers
}
output "name" {
  description = "Name of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.name
}
output "protocol_type" {
  description = "API protocol."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.protocol_type
}
output "version" {
  description = "Version identifier for the API.The cors_configuration object supports the following:"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.version
}
output "allow_credentials" {
  description = "Whether credentials are included in the CORS request."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_credentials
}
output "allow_headers" {
  description = "Set of allowed HTTP headers."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_headers
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.execution_arn
}
output "tags" {
  description = "Map of resource tags."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.tags
}
output "allow_methods" {
  description = "Set of allowed HTTP methods."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_methods
}
output "allow_origins" {
  description = "Set of allowed origins."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_origins
}
output "api_key_selection_expression" {
  description = "An API key selection expression"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_key_selection_expression
}
output "expose_headers" {
  description = "Set of exposed HTTP headers."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.expose_headers
}
output "allow_headers" {
  description = "Set of allowed HTTP headers."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_headers
}
output "arn" {
  description = "ARN of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.arn
}
output "disable_execute_api_endpoint" {
  description = "Whether clients can invoke the API by using the default execute-api endpoint."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.disable_execute_api_endpoint
}
output "version" {
  description = "Version identifier for the API.The cors_configuration object supports the following:"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.version
}
output "allow_credentials" {
  description = "Whether credentials are included in the CORS request."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_credentials
}
output "name" {
  description = "Name of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.name
}
output "protocol_type" {
  description = "API protocol."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.protocol_type
}
output "tags" {
  description = "Map of resource tags."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.tags
}
output "api_endpoint" {
  description = "URI of the API, of the form https://{api-id}.execute-api.{region}.amazonaws.com for HTTP APIs and wss://{api-id}.execute-api.{region}.amazonaws.com for WebSocket APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_endpoint
}
output "cors_configuration" {
  description = "Cross-origin resource sharing (CORS) configuration"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.cors_configuration
}
output "description" {
  description = "Description of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.description
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.execution_arn
}
output "route_selection_expression" {
  description = "The route selection expression for the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.route_selection_expression
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
