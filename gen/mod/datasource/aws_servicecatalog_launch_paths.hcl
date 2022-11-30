datasource "aws_servicecatalog_launch_paths" "aws_servicecatalog_launch_paths" {
  path_id              = var.path_id
  product_id           = var.product_id
  summaries            = var.summaries
  tags                 = var.tags
  accept_language      = var.accept_language
  constraint_summaries = var.constraint_summaries
  description          = var.description
  name                 = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "Tags associated with this product path.constraint_summaries"
  type        = string
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "constraint_summaries" {
  description = "Block for constraints on the portfolio-product relationship. See details below."
  type        = string
}
variable "description" {
  description = "Description of the constraint."
  type        = string
}
variable "name" {
  description = "Name of the portfolio to which the path was assigned."
  type        = string
}
variable "path_id" {
  description = "Identifier of the product path."
  type        = string
}
variable "product_id" {
  description = "(Required) Product identifier."
  type        = string
}
variable "summaries" {
  description = "Block with information about the launch path. See details below.summaries"
  type        = string
}
output "product_id" {
  description = "(Required) Product identifier."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.product_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "summaries" {
  description = "Block with information about the launch path. See details below.summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.summaries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags associated with this product path.constraint_summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.accept_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "constraint_summaries" {
  description = "Block for constraints on the portfolio-product relationship. See details below."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.constraint_summaries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the portfolio to which the path was assigned."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path_id" {
  description = "Identifier of the product path."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.path_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags associated with this product path.constraint_summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "constraint_summaries" {
  description = "Block for constraints on the portfolio-product relationship. See details below."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.constraint_summaries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the portfolio to which the path was assigned."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path_id" {
  description = "Identifier of the product path."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.path_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "summaries" {
  description = "Block with information about the launch path. See details below.summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.summaries
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
