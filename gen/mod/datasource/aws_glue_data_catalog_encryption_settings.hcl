datasource "aws_glue_data_catalog_encryption_settings" "aws_glue_data_catalog_encryption_settings" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aws_kms_key_id" {
  description = "KMS key ARN that is used to encrypt the connection password.encryption_at_rest"
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.aws_kms_key_id
}
output "catalog_encryption_mode" {
  description = "The encryption-at-rest mode for encrypting Data Catalog data."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.catalog_encryption_mode
}
output "connection_password_encryption" {
  description = "When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.connection_password_encryption
}
output "data_catalog_encryption_settings" {
  description = " – The security configuration to set. see Data Catalog Encryption Settings."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.data_catalog_encryption_settings
}
output "encryption_at_rest" {
  description = "Encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.connection_password_encryption"
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.encryption_at_rest
}
output "id" {
  description = " – The ID of the Data Catalog to set the security configuration for.data_catalog_encryption_settings"
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.id
}
output "return_connection_password_encrypted" {
  description = "When set to true, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.return_connection_password_encrypted
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
