datasource "aws_servicecatalog_constraint" "aws_servicecatalog_constraint" {
  status          = var.status
  accept_language = var.accept_language
  description     = var.description
  id              = var.id
  owner           = var.owner
  parameters      = var.parameters
  portfolio_id    = var.portfolio_id
  product_id      = var.product_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner" {
  description = "Owner of the constraint."
  type        = string
  default     = ""
}
variable "parameters" {
  description = "Constraint parameters in JSON format."
  type        = string
  default     = ""
}
variable "portfolio_id" {
  description = "Portfolio identifier."
  type        = string
  default     = ""
}
variable "product_id" {
  description = "Product identifier."
  type        = string
  default     = ""
}
variable "status" {
  description = "Constraint status."
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the constraint."
  type        = string
  default     = ""
}
variable "id" {
  description = "Constraint identifier."
  type        = string
}
output "product_id" {
  description = "Product identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.product_id
}
output "status" {
  description = "Constraint status."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.status
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.accept_language
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.description
}
output "id" {
  description = "Constraint identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.id
}
output "owner" {
  description = "Owner of the constraint."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.owner
}
output "parameters" {
  description = "Constraint parameters in JSON format."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.parameters
}
output "portfolio_id" {
  description = "Portfolio identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.portfolio_id
}
output "product_id" {
  description = "Product identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.product_id
}
output "status" {
  description = "Constraint status."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.status
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.description
}
output "owner" {
  description = "Owner of the constraint."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.owner
}
output "parameters" {
  description = "Constraint parameters in JSON format."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.parameters
}
output "portfolio_id" {
  description = "Portfolio identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.portfolio_id
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
