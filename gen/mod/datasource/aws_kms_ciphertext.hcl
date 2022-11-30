datasource "aws_kms_ciphertext" "aws_kms_ciphertext" {
  key_id    = var.key_id
  plaintext = var.plaintext
  context   = var.context
  id        = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "context" {
  description = "(Optional) An optional mapping that makes up the encryption context.All of the argument attributes are also exported as result attributes."
  type        = string
}
variable "id" {
  description = "Globally unique key ID for the customer master key."
  type        = string
}
variable "key_id" {
  description = "(Required) Globally unique key ID for the customer master key."
  type        = string
}
variable "plaintext" {
  description = "(Required) Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file."
  type        = string
}
output "id" {
  description = "Globally unique key ID for the customer master key."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_id" {
  description = "(Required) Globally unique key ID for the customer master key."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "plaintext" {
  description = "(Required) Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.plaintext
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "context" {
  description = "(Optional) An optional mapping that makes up the encryption context.All of the argument attributes are also exported as result attributes."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.context
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Globally unique key ID for the customer master key."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.id
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
