datasource "aws_acm_certificate" "aws_acm_certificate" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the found certificate, suitable for referencing in other resources that support ACM certificates."
  value       = aws_acm_certificate.aws_acm_certificate.arn
}
output "certificate" {
  description = "ACM-issued certificate."
  value       = aws_acm_certificate.aws_acm_certificate.certificate
}
output "certificate_chain" {
  description = "Certificates forming the requested ACM-issued certificate's chain of trust. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs."
  value       = aws_acm_certificate.aws_acm_certificate.certificate_chain
}
output "id" {
  description = "ARN of the found certificate, suitable for referencing in other resources that support ACM certificates."
  value       = aws_acm_certificate.aws_acm_certificate.id
}
output "status" {
  description = "Status of the found certificate."
  value       = aws_acm_certificate.aws_acm_certificate.status
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
