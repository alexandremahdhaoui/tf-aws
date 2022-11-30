datasource "aws_serverlessapplicationrepository_application" "aws_serverlessapplicationrepository_application" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_id" {
  description = "ARN of the application."
  value       = aws_serverlessapplicationrepository_application.aws_serverlessapplicationrepository_application.application_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the application."
  value       = aws_serverlessapplicationrepository_application.aws_serverlessapplicationrepository_application.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "required_capabilities" {
  description = "A list of capabilities describing the permissions needed to deploy the application."
  value       = aws_serverlessapplicationrepository_application.aws_serverlessapplicationrepository_application.required_capabilities
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_code_url" {
  description = "URL pointing to the source code of the application version."
  value       = aws_serverlessapplicationrepository_application.aws_serverlessapplicationrepository_application.source_code_url
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
