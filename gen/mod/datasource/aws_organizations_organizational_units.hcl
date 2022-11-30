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
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "children" {
  description = "List of child organizational units, which have the following attributes:\n"
  value       = aws_organizations_organizational_units.aws_organizations_organizational_units.children
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the organizational unit"
  value       = aws_organizations_organizational_units.aws_organizations_organizational_units.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the organizational unit"
  value       = aws_organizations_organizational_units.aws_organizations_organizational_units.name
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
