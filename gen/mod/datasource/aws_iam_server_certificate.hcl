datasource "aws_iam_server_certificate" "aws_iam_server_certificate" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "upload_date" {
  description = " is the date when the server certificate was uploaded"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.upload_date
}
output "arn" {
  description = " is set to the ARN of the IAM Server Certificate"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.arn
}
output "certificate_body" {
  description = " is the public key certificate (PEM-encoded). This is useful when configuring back-end instance authentication policy for load balancer"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.certificate_body
}
output "certificate_chain" {
  description = " is the public key certificate chain (PEM-encoded) if exists, empty otherwise"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.certificate_chain
}
output "expiration_date" {
  description = " is set to the expiration date of the IAM Server Certificate"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.expiration_date
}
output "id" {
  description = " is set to the unique id of the IAM Server Certificate"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.id
}
output "path" {
  description = " is set to the path of the IAM Server Certificate"
  value       = aws_iam_server_certificate.aws_iam_server_certificate.path
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
