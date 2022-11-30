datasource "aws_rds_reserved_instance_offering" "aws_rds_reserved_instance_offering" {
  offering_type       = var.offering_type
  product_description = var.product_description
  currency_code       = var.currency_code
  db_instance_class   = var.db_instance_class
  duration            = var.duration
  fixed_price         = var.fixed_price
  id                  = var.id
  multi_az            = var.multi_az
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "fixed_price" {
  description = "Fixed price charged for this reserved DB instance."
  type        = string
}
variable "id" {
  description = "Unique identifier for the reservation. Same as offering_id."
  type        = string
}
variable "multi_az" {
  description = "(Required) Whether the reservation applies to Multi-AZ deployments."
  type        = string
}
variable "offering_type" {
  description = "(Required) Offering type of this reserved DB instance."
  type        = string
}
variable "product_description" {
  description = "(Required) Description of the reserved DB instance.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "currency_code" {
  description = "Currency code for the reserved DB instance."
  type        = string
}
variable "db_instance_class" {
  description = "(Required) DB instance class for the reserved DB instance."
  type        = string
}
variable "duration" {
  description = "(Required) Duration of the reservation in seconds."
  type        = string
}
output "duration" {
  description = "(Required) Duration of the reservation in seconds."
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fixed_price" {
  description = "Fixed price charged for this reserved DB instance."
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.fixed_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier for the reservation. Same as offering_id."
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multi_az" {
  description = "(Required) Whether the reservation applies to Multi-AZ deployments."
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.multi_az
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "offering_type" {
  description = "(Required) Offering type of this reserved DB instance."
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.offering_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "product_description" {
  description = "(Required) Description of the reserved DB instance.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.product_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "currency_code" {
  description = "Currency code for the reserved DB instance."
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.currency_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "db_instance_class" {
  description = "(Required) DB instance class for the reserved DB instance."
  value       = aws_rds_reserved_instance_offering.aws_rds_reserved_instance_offering.db_instance_class
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
