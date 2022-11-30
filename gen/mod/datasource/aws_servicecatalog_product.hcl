datasource "aws_servicecatalog_product" "aws_servicecatalog_product" {
  arn                 = var.arn
  created_time        = var.created_time
  distributor         = var.distributor
  support_description = var.support_description
  support_url         = var.support_url
  accept_language     = var.accept_language
  description         = var.description
  name                = var.name
  status              = var.status
  support_email       = var.support_email
  tags                = var.tags
  has_default_path    = var.has_default_path
  id                  = var.id
  owner               = var.owner
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "created_time" {
  description = "Time when the product was created."
  type        = string
}
variable "distributor" {
  description = "Distributor (i.e., vendor) of the product."
  type        = string
}
variable "support_description" {
  description = "Support information about the product."
  type        = string
}
variable "support_url" {
  description = "Contact URL for product support."
  type        = string
}
variable "arn" {
  description = "ARN of the product."
  type        = string
}
variable "description" {
  description = "Description of the product."
  type        = string
}
variable "name" {
  description = "Name of the product."
  type        = string
}
variable "status" {
  description = "Status of the product."
  type        = string
}
variable "support_email" {
  description = "Contact email for product support."
  type        = string
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "Tags to apply to the product."
  type        = string
}
variable "id" {
  description = "(Required) Product ID."
  type        = string
}
variable "owner" {
  description = "Owner of the product."
  type        = string
}
variable "has_default_path" {
  description = "Whether the product has a default path."
  type        = string
}
output "name" {
  description = "Name of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_email" {
  description = "Contact email for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.accept_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags to apply to the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "has_default_path" {
  description = "Whether the product has a default path."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Required) Product ID."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "distributor" {
  description = "Distributor (i.e., vendor) of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.distributor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_description" {
  description = "Support information about the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_url" {
  description = "Contact URL for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_description" {
  description = "Support information about the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_url" {
  description = "Contact URL for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "distributor" {
  description = "Distributor (i.e., vendor) of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.distributor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "has_default_path" {
  description = "Whether the product has a default path."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags to apply to the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "support_email" {
  description = "Contact email for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_email
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
