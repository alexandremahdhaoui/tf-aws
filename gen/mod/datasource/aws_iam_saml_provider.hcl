datasource "aws_iam_saml_provider" "aws_iam_saml_provider" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_date" {
  description = "Creation date of the SAML provider in RFC1123 format, e.g. Mon, 02 Jan 2006 15:04:05 MST."
  value       = aws_iam_saml_provider.aws_iam_saml_provider.create_date
}
output "name" {
  description = "Name of the provider."
  value       = aws_iam_saml_provider.aws_iam_saml_provider.name
}
output "saml_metadata_document" {
  description = "The XML document generated by an identity provider that supports SAML 2.0."
  value       = aws_iam_saml_provider.aws_iam_saml_provider.saml_metadata_document
}
output "tags" {
  description = "Tags attached to the SAML provider."
  value       = aws_iam_saml_provider.aws_iam_saml_provider.tags
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
