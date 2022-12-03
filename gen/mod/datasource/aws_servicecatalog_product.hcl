datasource "aws_servicecatalog_product" "aws_servicecatalog_product" {
  distributor         = var.distributor
  support_email       = var.support_email
  arn                 = var.arn
  has_default_path    = var.has_default_path
  description         = var.description
  id                  = var.id
  name                = var.name
  status              = var.status
  support_url         = var.support_url
  tags                = var.tags
  accept_language     = var.accept_language
  created_time        = var.created_time
  owner               = var.owner
  support_description = var.support_description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the product."
  type        = string
  default     = ""
}
variable "has_default_path" {
  description = "Whether the product has a default path."
  type        = string
  default     = ""
}
variable "id" {
  description = "(Required) Product ID."
  type        = string
}
variable "name" {
  description = "Name of the product."
  type        = string
  default     = ""
}
variable "status" {
  description = "Status of the product."
  type        = string
  default     = ""
}
variable "support_url" {
  description = "Contact URL for product support."
  type        = string
  default     = ""
}
variable "tags" {
  description = "Tags to apply to the product."
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "created_time" {
  description = "Time when the product was created."
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the product."
  type        = string
  default     = ""
}
variable "owner" {
  description = "Owner of the product."
  type        = string
  default     = ""
}
variable "support_description" {
  description = "Support information about the product."
  type        = string
  default     = ""
}
variable "distributor" {
  description = "Distributor (i.e., vendor) of the product."
  type        = string
  default     = ""
}
variable "support_email" {
  description = "Contact email for product support."
  type        = string
  default     = ""
}
output "distributor" {
  description = "Distributor (i.e., vendor) of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.distributor
}
output "support_email" {
  description = "Contact email for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_email
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
}
output "has_default_path" {
  description = "Whether the product has a default path."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "name" {
  description = "Name of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.name
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "support_url" {
  description = "Contact URL for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_url
}
output "tags" {
  description = "Tags to apply to the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.accept_language
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "description" {
  description = "Description of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.description
}
output "id" {
  description = "(Required) Product ID."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.id
}
output "owner" {
  description = "Owner of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.owner
}
output "support_description" {
  description = "Support information about the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_description
}
output "tags" {
  description = "Tags to apply to the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "distributor" {
  description = "Distributor (i.e., vendor) of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.distributor
}
output "has_default_path" {
  description = "Whether the product has a default path."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "name" {
  description = "Name of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.name
}
output "support_email" {
  description = "Contact email for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_email
}
output "support_url" {
  description = "Contact URL for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_url
}
output "description" {
  description = "Description of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.description
}
output "owner" {
  description = "Owner of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.owner
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "support_description" {
  description = "Support information about the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_description
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
