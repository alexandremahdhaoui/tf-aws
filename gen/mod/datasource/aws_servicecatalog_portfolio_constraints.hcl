datasource "aws_servicecatalog_portfolio_constraints" "aws_servicecatalog_portfolio_constraints" {
  description     = var.description
  details         = var.details
  portfolio_id    = var.portfolio_id
  product_id      = var.product_id
  accept_language = var.accept_language
  constraint_id   = var.constraint_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "constraint_id" {
  description = "Identifier of the constraint."
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the constraint."
  type        = string
  default     = ""
}
variable "details" {
  description = "List of information about the constraints. See details below.details"
  type        = string
  default     = ""
}
variable "portfolio_id" {
  description = "Identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio."
  type        = string
  default     = ""
}
variable "product_id" {
  description = "Identifier of the product the constraint applies to. A constraint applies to a specific instance of a product within a certain portfolio."
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  type        = string
  default     = ""
}
output "portfolio_id" {
  description = "Identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.portfolio_id
}
output "product_id" {
  description = "Identifier of the product the constraint applies to. A constraint applies to a specific instance of a product within a certain portfolio."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.product_id
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.accept_language
}
output "constraint_id" {
  description = "Identifier of the constraint."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.constraint_id
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.description
}
output "details" {
  description = "List of information about the constraints. See details below.details"
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.details
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.description
}
output "details" {
  description = "List of information about the constraints. See details below.details"
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.details
}
output "portfolio_id" {
  description = "Identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.portfolio_id
}
output "product_id" {
  description = "Identifier of the product the constraint applies to. A constraint applies to a specific instance of a product within a certain portfolio."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.product_id
}
output "constraint_id" {
  description = "Identifier of the constraint."
  value       = aws_servicecatalog_portfolio_constraints.aws_servicecatalog_portfolio_constraints.constraint_id
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
