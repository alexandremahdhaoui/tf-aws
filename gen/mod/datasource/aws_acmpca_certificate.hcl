datasource "aws_acmpca_certificate" "aws_acmpca_certificate" {
  certificate               = var.certificate
  certificate_authority_arn = var.certificate_authority_arn
  arn                       = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the certificate issued by the private certificate authority."
  type        = string
}
variable "certificate" {
  description = "PEM-encoded certificate value."
  type        = string
}
variable "certificate_authority_arn" {
  description = "(Required) ARN of the certificate authority.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "certificate_authority_arn" {
  description = "(Required) ARN of the certificate authority.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_acmpca_certificate.aws_acmpca_certificate.certificate_authority_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) ARN of the certificate issued by the private certificate authority."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate" {
  description = "PEM-encoded certificate value."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.certificate
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
