datasource "aws_servicecatalog_portfolio" "aws_servicecatalog_portfolio" {
  accept_language = var.accept_language
  arn             = var.arn
  created_time    = var.created_time
  description     = var.description
  id              = var.id
  name            = var.name
  provider_name   = var.provider_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "created_time" {
  description = "Time the portfolio was created."
  type        = string
}
variable "description" {
  description = "Description of the portfolio"
  type        = string
}
variable "id" {
  description = "(Required) Portfolio identifier."
  type        = string
}
variable "name" {
  description = "Portfolio name."
  type        = string
}
variable "provider_name" {
  description = "Name of the person or organization who owns the portfolio."
  type        = string
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "Portfolio ARN."
  type        = string
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.accept_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Portfolio ARN."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time the portfolio was created."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the portfolio"
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Required) Portfolio identifier."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Portfolio name."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provider_name" {
  description = "Name of the person or organization who owns the portfolio."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.provider_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Portfolio ARN."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time the portfolio was created."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the portfolio"
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Portfolio name."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provider_name" {
  description = "Name of the person or organization who owns the portfolio."
  value       = aws_servicecatalog_portfolio.aws_servicecatalog_portfolio.provider_name
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
