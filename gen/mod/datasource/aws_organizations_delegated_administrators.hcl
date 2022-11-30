datasource "aws_organizations_delegated_administrators" "aws_organizations_delegated_administrators" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "joined_timestamp" {
  description = "The date when the delegated administrator's account became a part of the organization."
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.joined_timestamp
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The friendly name of the delegated administrator's account."
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the delegated administrator's account."
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delegated_administrators" {
  description = "The list of delegated administrators in your organization, which have the following attributes:\n"
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.delegated_administrators
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delegation_enabled_date" {
  description = "The date when the account was made a delegated administrator."
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.delegation_enabled_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email" {
  description = "The email address that is associated with the delegated administrator's AWS account."
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique identifier (ID) of the delegated administrator's account."
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "joined_method" {
  description = "The method by which the delegated administrator's account joined the organization."
  value       = aws_organizations_delegated_administrators.aws_organizations_delegated_administrators.joined_method
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
