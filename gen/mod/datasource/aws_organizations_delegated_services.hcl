datasource "aws_organizations_delegated_services" "aws_organizations_delegated_services" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delegated_services" {
  description = "Services for which the account is a delegated administrator, which have the following attributes:\n"
  value       = aws_organizations_delegated_services.aws_organizations_delegated_services.delegated_services
}
output "delegation_enabled_date" {
  description = "The date that the account became a delegated administrator for this service."
  value       = aws_organizations_delegated_services.aws_organizations_delegated_services.delegation_enabled_date
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
