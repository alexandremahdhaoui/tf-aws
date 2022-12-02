datasource "aws_kms_ciphertext" "aws_kms_ciphertext" {
  context   = var.context
  id        = var.id
  key_id    = var.key_id
  plaintext = var.plaintext
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "context" {
  description = "(Optional) An optional mapping that makes up the encryption context.All of the argument attributes are also exported as result attributes."
  type        = string
  default     = ""
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
output "context" {
  description = "(Optional) An optional mapping that makes up the encryption context.All of the argument attributes are also exported as result attributes."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.context
}
output "id" {
  description = "Globally unique key ID for the customer master key."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.id
}
output "key_id" {
  description = "(Required) Globally unique key ID for the customer master key."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.key_id
}
output "plaintext" {
  description = "(Required) Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.plaintext
}
output "id" {
  description = "Globally unique key ID for the customer master key."
  value       = aws_kms_ciphertext.aws_kms_ciphertext.id
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
