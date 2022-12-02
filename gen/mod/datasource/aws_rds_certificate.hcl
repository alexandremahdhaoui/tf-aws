datasource "aws_rds_certificate" "aws_rds_certificate" {
  certificate_type             = var.certificate_type
  customer_override            = var.customer_override
  customer_override_valid_till = var.customer_override_valid_till
  id                           = var.id
  latest_valid_till            = var.latest_valid_till
  thumbprint                   = var.thumbprint
  valid_from                   = var.valid_from
  arn                          = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "certificate_type" {
  description = "Type of certificate. For example, CA."
  type        = string
}
variable "customer_override" {
  description = "Boolean whether there is an override for the default certificate identifier."
  type        = string
}
variable "customer_override_valid_till" {
  description = "If there is an override for the default certificate identifier, when the override expires."
  type        = string
}
variable "id" {
  description = "(Optional) Certificate identifier. For example, rds-ca-2019."
  type        = string
  default     = ""
}
variable "latest_valid_till" {
  description = "(Optional) When enabled, returns the certificate with the latest ValidTill.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "thumbprint" {
  description = "Thumbprint of the certificate."
  type        = string
}
variable "valid_from" {
  description = "RFC3339 format of certificate starting validity date."
  type        = string
}
variable "arn" {
  description = "ARN of the certificate."
  type        = string
}
output "id" {
  description = "(Optional) Certificate identifier. For example, rds-ca-2019."
  value       = aws_rds_certificate.aws_rds_certificate.id
}
output "latest_valid_till" {
  description = "(Optional) When enabled, returns the certificate with the latest ValidTill.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_certificate.aws_rds_certificate.latest_valid_till
}
output "thumbprint" {
  description = "Thumbprint of the certificate."
  value       = aws_rds_certificate.aws_rds_certificate.thumbprint
}
output "valid_from" {
  description = "RFC3339 format of certificate starting validity date."
  value       = aws_rds_certificate.aws_rds_certificate.valid_from
}
output "arn" {
  description = "ARN of the certificate."
  value       = aws_rds_certificate.aws_rds_certificate.arn
}
output "certificate_type" {
  description = "Type of certificate. For example, CA."
  value       = aws_rds_certificate.aws_rds_certificate.certificate_type
}
output "customer_override" {
  description = "Boolean whether there is an override for the default certificate identifier."
  value       = aws_rds_certificate.aws_rds_certificate.customer_override
}
output "customer_override_valid_till" {
  description = "If there is an override for the default certificate identifier, when the override expires."
  value       = aws_rds_certificate.aws_rds_certificate.customer_override_valid_till
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
