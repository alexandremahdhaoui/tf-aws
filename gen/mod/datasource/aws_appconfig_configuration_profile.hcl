datasource "aws_appconfig_configuration_profile" "aws_appconfig_configuration_profile" {
  tags                     = var.tags
  validator                = var.validator
  configuration_profile_id = var.configuration_profile_id
  id                       = var.id
  location_uri             = var.location_uri
  description              = var.description
  name                     = var.name
  retrieval_role_arn       = var.retrieval_role_arn
  application_id           = var.application_id
  arn                      = var.arn
  content                  = var.content
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "retrieval_role_arn" {
  description = "ARN of an IAM role with permission to access the configuration at the specified location_uri."
  type        = string
}
variable "application_id" {
  description = "(Required) ID of the AppConfig application to which this configuration profile belongs."
  type        = string
}
variable "arn" {
  description = "ARN of the Configuration Profile."
  type        = string
}
variable "content" {
  description = "Either the JSON Schema content or the ARN of an AWS Lambda function."
  type        = string
}
variable "description" {
  description = "Description of the Configuration Profile."
  type        = string
}
variable "name" {
  description = "Name of the Configuration Profile."
  type        = string
}
variable "configuration_profile_id" {
  description = "(Required) ID of the Configuration Profile.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "AppConfig Configuration Profile ID and Application ID separated by a colon (:)."
  type        = string
}
variable "location_uri" {
  description = "Location URI of the Configuration Profile."
  type        = string
}
variable "tags" {
  description = "Map of tags for the resource."
  type        = string
}
variable "validator" {
  description = "Nested list of methods for validating the configuration.\n"
  type        = string
}
output "configuration_profile_id" {
  description = "(Required) ID of the Configuration Profile.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.configuration_profile_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AppConfig Configuration Profile ID and Application ID separated by a colon (:)."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location_uri" {
  description = "Location URI of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.location_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags for the resource."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validator" {
  description = "Nested list of methods for validating the configuration.\n"
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.validator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retrieval_role_arn" {
  description = "ARN of an IAM role with permission to access the configuration at the specified location_uri."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.retrieval_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_id" {
  description = "(Required) ID of the AppConfig application to which this configuration profile belongs."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.application_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "Either the JSON Schema content or the ARN of an AWS Lambda function."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validator" {
  description = "Nested list of methods for validating the configuration.\n"
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.validator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AppConfig Configuration Profile ID and Application ID separated by a colon (:)."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retrieval_role_arn" {
  description = "ARN of an IAM role with permission to access the configuration at the specified location_uri."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.retrieval_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags for the resource."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "Either the JSON Schema content or the ARN of an AWS Lambda function."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location_uri" {
  description = "Location URI of the Configuration Profile."
  value       = aws_appconfig_configuration_profile.aws_appconfig_configuration_profile.location_uri
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
