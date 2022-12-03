datasource "aws_kms_secrets" "aws_kms_secrets" {
  context      = var.context
  grant_tokens = var.grant_tokens
  name         = var.name
  payload      = var.payload
  secret       = var.secret
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "context" {
  description = "(Optional) An optional mapping that makes up the Encryption Context for the secret."
  type        = string
  default     = ""
}
variable "grant_tokens" {
  description = " (Optional) An optional list of Grant Tokens for the secret.For more information on context and grant_tokens see the In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name to export this secret under in the attributes."
  type        = string
}
variable "payload" {
  description = "(Required) Base64 encoded payload, as returned from a KMS encrypt operation."
  type        = string
}
variable "secret" {
  description = "(Required) One or more encrypted payload definitions from the KMS service. See the Secret Definitions below.Secret DefinitionsEach secret supports the following arguments:"
  type        = string
}
output "payload" {
  description = "(Required) Base64 encoded payload, as returned from a KMS encrypt operation."
  value       = aws_kms_secrets.aws_kms_secrets.payload
}
output "secret" {
  description = "(Required) One or more encrypted payload definitions from the KMS service. See the Secret Definitions below.Secret DefinitionsEach secret supports the following arguments:"
  value       = aws_kms_secrets.aws_kms_secrets.secret
}
output "context" {
  description = "(Optional) An optional mapping that makes up the Encryption Context for the secret."
  value       = aws_kms_secrets.aws_kms_secrets.context
}
output "grant_tokens" {
  description = " (Optional) An optional list of Grant Tokens for the secret.For more information on context and grant_tokens see the In addition to all arguments above, the following attributes are exported:"
  value       = aws_kms_secrets.aws_kms_secrets.grant_tokens
}
output "name" {
  description = "(Required) Name to export this secret under in the attributes."
  value       = aws_kms_secrets.aws_kms_secrets.name
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
