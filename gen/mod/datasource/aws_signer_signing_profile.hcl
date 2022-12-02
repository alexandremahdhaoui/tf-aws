datasource "aws_signer_signing_profile" "aws_signer_signing_profile" {
  arn                       = var.arn
  revocation_record         = var.revocation_record
  tags                      = var.tags
  version                   = var.version
  name                      = var.name
  platform_display_name     = var.platform_display_name
  platform_id               = var.platform_id
  signature_validity_period = var.signature_validity_period
  status                    = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the target signing profile.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "platform_display_name" {
  description = "A human-readable name for the signing platform associated with the signing profile."
  type        = string
}
variable "platform_id" {
  description = "ID of the platform that is used by the target signing profile."
  type        = string
}
variable "signature_validity_period" {
  description = "The validity period for a signing job."
  type        = string
}
variable "status" {
  description = "Status of the target signing profile."
  type        = string
}
variable "arn" {
  description = "ARN for the signing profile."
  type        = string
}
variable "revocation_record" {
  description = "Revocation information for a signing profile."
  type        = string
}
variable "tags" {
  description = "List of tags associated with the signing profile."
  type        = string
}
variable "version" {
  description = "Current version of the signing profile."
  type        = string
}
output "arn" {
  description = "ARN for the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.arn
}
output "revocation_record" {
  description = "Revocation information for a signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.revocation_record
}
output "tags" {
  description = "List of tags associated with the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.tags
}
output "version" {
  description = "Current version of the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.version
}
output "name" {
  description = "(Required) Name of the target signing profile.In addition to all arguments above, the following attributes are exported:"
  value       = aws_signer_signing_profile.aws_signer_signing_profile.name
}
output "platform_display_name" {
  description = "A human-readable name for the signing platform associated with the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.platform_display_name
}
output "platform_id" {
  description = "ID of the platform that is used by the target signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.platform_id
}
output "signature_validity_period" {
  description = "The validity period for a signing job."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.signature_validity_period
}
output "status" {
  description = "Status of the target signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.status
}
output "tags" {
  description = "List of tags associated with the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.tags
}
output "version" {
  description = "Current version of the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.version
}
output "arn" {
  description = "ARN for the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.arn
}
output "platform_display_name" {
  description = "A human-readable name for the signing platform associated with the signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.platform_display_name
}
output "platform_id" {
  description = "ID of the platform that is used by the target signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.platform_id
}
output "revocation_record" {
  description = "Revocation information for a signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.revocation_record
}
output "signature_validity_period" {
  description = "The validity period for a signing job."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.signature_validity_period
}
output "status" {
  description = "Status of the target signing profile."
  value       = aws_signer_signing_profile.aws_signer_signing_profile.status
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
