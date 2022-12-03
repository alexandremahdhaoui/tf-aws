datasource "aws_organizations_organizational_units" "aws_organizations_organizational_units" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the organizational unit"
  value       = aws_organizations_organizational_units.aws_organizations_organizational_units.arn
}
output "children" {
  description = "List of child organizational units, which have the following attributes:\n"
  value       = aws_organizations_organizational_units.aws_organizations_organizational_units.children
}
output "id" {
  description = "ID of the organizational unit"
  value       = aws_organizations_organizational_units.aws_organizations_organizational_units.id
}
output "name" {
  description = "Name of the organizational unit"
  value       = aws_organizations_organizational_units.aws_organizations_organizational_units.name
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
