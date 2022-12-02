datasource "aws_servicecatalog_launch_paths" "aws_servicecatalog_launch_paths" {
  product_id           = var.product_id
  summaries            = var.summaries
  tags                 = var.tags
  accept_language      = var.accept_language
  constraint_summaries = var.constraint_summaries
  description          = var.description
  name                 = var.name
  path_id              = var.path_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "constraint_summaries" {
  description = "Block for constraints on the portfolio-product relationship. See details below."
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the constraint."
  type        = string
  default     = ""
}
variable "name" {
  description = "Name of the portfolio to which the path was assigned."
  type        = string
  default     = ""
}
variable "path_id" {
  description = "Identifier of the product path."
  type        = string
  default     = ""
}
variable "product_id" {
  description = "(Required) Product identifier."
  type        = string
}
variable "summaries" {
  description = "Block with information about the launch path. See details below.summaries"
  type        = string
  default     = ""
}
variable "tags" {
  description = "Tags associated with this product path.constraint_summaries"
  type        = string
  default     = ""
}
output "summaries" {
  description = "Block with information about the launch path. See details below.summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.summaries
}
output "tags" {
  description = "Tags associated with this product path.constraint_summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.tags
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.accept_language
}
output "constraint_summaries" {
  description = "Block for constraints on the portfolio-product relationship. See details below."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.constraint_summaries
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.description
}
output "name" {
  description = "Name of the portfolio to which the path was assigned."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.name
}
output "path_id" {
  description = "Identifier of the product path."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.path_id
}
output "product_id" {
  description = "(Required) Product identifier."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.product_id
}
output "name" {
  description = "Name of the portfolio to which the path was assigned."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.name
}
output "path_id" {
  description = "Identifier of the product path."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.path_id
}
output "summaries" {
  description = "Block with information about the launch path. See details below.summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.summaries
}
output "tags" {
  description = "Tags associated with this product path.constraint_summaries"
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.tags
}
output "constraint_summaries" {
  description = "Block for constraints on the portfolio-product relationship. See details below."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.constraint_summaries
}
output "description" {
  description = "Description of the constraint."
  value       = aws_servicecatalog_launch_paths.aws_servicecatalog_launch_paths.description
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
