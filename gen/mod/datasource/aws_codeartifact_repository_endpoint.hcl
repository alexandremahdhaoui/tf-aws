datasource "aws_codeartifact_repository_endpoint" "aws_codeartifact_repository_endpoint" {
  domain       = var.domain
  domain_owner = var.domain_owner
  format       = var.format
  repository   = var.repository
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "domain" {
  description = "(Required) Name of the domain that contains the repository."
  type        = string
}
variable "domain_owner" {
  description = "(Optional) Account number of the AWS account that owns the domain.In addition to the argument above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "format" {
  description = "(Required) Which endpoint of a repository to return. A repository has one endpoint for each package format: npm, pypi, maven, and nuget."
  type        = string
}
variable "repository" {
  description = "(Required) Name of the repository."
  type        = string
}
output "domain" {
  description = "(Required) Name of the domain that contains the repository."
  value       = aws_codeartifact_repository_endpoint.aws_codeartifact_repository_endpoint.domain
}
output "domain_owner" {
  description = "(Optional) Account number of the AWS account that owns the domain.In addition to the argument above, the following attributes are exported:"
  value       = aws_codeartifact_repository_endpoint.aws_codeartifact_repository_endpoint.domain_owner
}
output "format" {
  description = "(Required) Which endpoint of a repository to return. A repository has one endpoint for each package format: npm, pypi, maven, and nuget."
  value       = aws_codeartifact_repository_endpoint.aws_codeartifact_repository_endpoint.format
}
output "repository" {
  description = "(Required) Name of the repository."
  value       = aws_codeartifact_repository_endpoint.aws_codeartifact_repository_endpoint.repository
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
