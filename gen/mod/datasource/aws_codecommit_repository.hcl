datasource "aws_codecommit_repository" "aws_codecommit_repository" {
  repository_name = var.repository_name
  arn             = var.arn
  clone_url_http  = var.clone_url_http
  repository_id   = var.repository_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the repository"
  type        = string
}
variable "clone_url_http" {
  description = "URL to use for cloning the repository over HTTPS."
  type        = string
}
variable "repository_id" {
  description = "ID of the repository"
  type        = string
}
variable "repository_name" {
  description = "(Required) Name for the repository. This needs to be less than 100 characters.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "repository_id" {
  description = "ID of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.repository_id
}
output "repository_name" {
  description = "(Required) Name for the repository. This needs to be less than 100 characters.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codecommit_repository.aws_codecommit_repository.repository_name
}
output "arn" {
  description = "ARN of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.arn
}
output "clone_url_http" {
  description = "URL to use for cloning the repository over HTTPS."
  value       = aws_codecommit_repository.aws_codecommit_repository.clone_url_http
}
output "arn" {
  description = "ARN of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.arn
}
output "clone_url_http" {
  description = "URL to use for cloning the repository over HTTPS."
  value       = aws_codecommit_repository.aws_codecommit_repository.clone_url_http
}
output "repository_id" {
  description = "ID of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.repository_id
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
