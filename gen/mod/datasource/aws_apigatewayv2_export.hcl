datasource "aws_apigatewayv2_export" "aws_apigatewayv2_export" {
  id                 = var.id
  include_extensions = var.include_extensions
  output_type        = var.output_type
  specification      = var.specification
  stage_name         = var.stage_name
  api_id             = var.api_id
  export_version     = var.export_version
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "stage_name" {
  description = "(Optional) Name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "api_id" {
  description = "(Required) API identifier."
  type        = string
}
variable "export_version" {
  description = "(Optional) Version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is 1.0."
  type        = string
}
variable "id" {
  description = "API identifier."
  type        = string
}
variable "include_extensions" {
  description = "(Optional) Whether to include API Gateway extensions in the exported API definition. API Gateway extensions are included by default."
  type        = string
}
variable "output_type" {
  description = "(Required) Output type of the exported definition file. Valid values are JSON and YAML."
  type        = string
}
variable "specification" {
  description = "(Required) Version of the API specification to use. OAS30, for OpenAPI 3.0, is the only supported value."
  type        = string
}
output "output_type" {
  description = "(Required) Output type of the exported definition file. Valid values are JSON and YAML."
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.output_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "specification" {
  description = "(Required) Version of the API specification to use. OAS30, for OpenAPI 3.0, is the only supported value."
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stage_name" {
  description = "(Optional) Name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.stage_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "api_id" {
  description = "(Required) API identifier."
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.api_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "export_version" {
  description = "(Optional) Version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is 1.0."
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.export_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "API identifier."
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "include_extensions" {
  description = "(Optional) Whether to include API Gateway extensions in the exported API definition. API Gateway extensions are included by default."
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.include_extensions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "API identifier."
  value       = aws_apigatewayv2_export.aws_apigatewayv2_export.id
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
