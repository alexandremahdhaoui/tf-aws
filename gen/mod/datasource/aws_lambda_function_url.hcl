datasource "aws_lambda_function_url" "aws_lambda_function_url" {
  cors               = var.cors
  creation_time      = var.creation_time
  function_arn       = var.function_arn
  function_name      = var.function_name
  function_url       = var.function_url
  last_modified_time = var.last_modified_time
  qualifier          = var.qualifier
  authorization_type = var.authorization_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "function_url" {
  description = "HTTP URL endpoint for the function in the format https://<url_id>.lambda-url.<region>.on.aws."
  type        = string
}
variable "last_modified_time" {
  description = "When the function URL configuration was last updated, in ISO-8601 format."
  type        = string
}
variable "qualifier" {
  description = "(Optional) Alias name or \"$LATEST\".In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "authorization_type" {
  description = "Type of authentication that the function URL uses."
  type        = string
}
variable "cors" {
  description = "The cross-origin resource sharing (CORS) settings for the function URL. See the aws_lambda_function_url resource documentation for more details."
  type        = string
}
variable "creation_time" {
  description = "When the function URL was created, in ISO-8601 format."
  type        = string
}
variable "function_arn" {
  description = "ARN of the function."
  type        = string
}
variable "function_name" {
  description = "(Required) he name (or ARN) of the Lambda function."
  type        = string
}
output "last_modified_time" {
  description = "When the function URL configuration was last updated, in ISO-8601 format."
  value       = aws_lambda_function_url.aws_lambda_function_url.last_modified_time
}
output "qualifier" {
  description = "(Optional) Alias name or \"$LATEST\".In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_function_url.aws_lambda_function_url.qualifier
}
output "authorization_type" {
  description = "Type of authentication that the function URL uses."
  value       = aws_lambda_function_url.aws_lambda_function_url.authorization_type
}
output "cors" {
  description = "The cross-origin resource sharing (CORS) settings for the function URL. See the aws_lambda_function_url resource documentation for more details."
  value       = aws_lambda_function_url.aws_lambda_function_url.cors
}
output "creation_time" {
  description = "When the function URL was created, in ISO-8601 format."
  value       = aws_lambda_function_url.aws_lambda_function_url.creation_time
}
output "function_arn" {
  description = "ARN of the function."
  value       = aws_lambda_function_url.aws_lambda_function_url.function_arn
}
output "function_name" {
  description = "(Required) he name (or ARN) of the Lambda function."
  value       = aws_lambda_function_url.aws_lambda_function_url.function_name
}
output "function_url" {
  description = "HTTP URL endpoint for the function in the format https://<url_id>.lambda-url.<region>.on.aws."
  value       = aws_lambda_function_url.aws_lambda_function_url.function_url
}
output "cors" {
  description = "The cross-origin resource sharing (CORS) settings for the function URL. See the aws_lambda_function_url resource documentation for more details."
  value       = aws_lambda_function_url.aws_lambda_function_url.cors
}
output "creation_time" {
  description = "When the function URL was created, in ISO-8601 format."
  value       = aws_lambda_function_url.aws_lambda_function_url.creation_time
}
output "function_arn" {
  description = "ARN of the function."
  value       = aws_lambda_function_url.aws_lambda_function_url.function_arn
}
output "function_url" {
  description = "HTTP URL endpoint for the function in the format https://<url_id>.lambda-url.<region>.on.aws."
  value       = aws_lambda_function_url.aws_lambda_function_url.function_url
}
output "last_modified_time" {
  description = "When the function URL configuration was last updated, in ISO-8601 format."
  value       = aws_lambda_function_url.aws_lambda_function_url.last_modified_time
}
output "authorization_type" {
  description = "Type of authentication that the function URL uses."
  value       = aws_lambda_function_url.aws_lambda_function_url.authorization_type
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
