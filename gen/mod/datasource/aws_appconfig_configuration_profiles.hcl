datasource "aws_appconfig_configuration_profiles" "aws_appconfig_configuration_profiles" {
  application_id = var.application_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "application_id" {
  description = "(Required) ID of the AppConfig Application.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "application_id" {
  description = "(Required) ID of the AppConfig Application.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_configuration_profiles.aws_appconfig_configuration_profiles.application_id
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
