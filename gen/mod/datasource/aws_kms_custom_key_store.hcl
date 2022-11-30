datasource "aws_kms_custom_key_store" "aws_kms_custom_key_store" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudhsm_cluster_id" {
  description = "ID for the CloudHSM cluster that is associated with the custom key store."
  value       = aws_kms_custom_key_store.aws_kms_custom_key_store.cloudhsm_cluster_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_state" {
  description = "Indicates whether the custom key store is connected to its CloudHSM cluster."
  value       = aws_kms_custom_key_store.aws_kms_custom_key_store.connection_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "The date and time when the custom key store was created."
  value       = aws_kms_custom_key_store.aws_kms_custom_key_store.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID for the custom key store."
  value       = aws_kms_custom_key_store.aws_kms_custom_key_store.id
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
