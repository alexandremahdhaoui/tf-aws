datasource "aws_kms_key" "aws_kms_key" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customer_master_key_spec" {
  description = ": Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports"
  value       = aws_kms_key.aws_kms_key.customer_master_key_spec
}
output "enabled" {
  description = ": Specifies whether the key is enabled. When key_state is Enabled this value is true, otherwise it is false"
  value       = aws_kms_key.aws_kms_key.enabled
}
output "id" {
  description = ": The globally unique identifier for the key"
  value       = aws_kms_key.aws_kms_key.id
}
output "key_manager" {
  description = ": The key's manager"
  value       = aws_kms_key.aws_kms_key.key_manager
}
output "key_usage" {
  description = ": Specifies the intended use of the key"
  value       = aws_kms_key.aws_kms_key.key_usage
}
output "origin" {
  description = ": When this value is AWS_KMS, AWS KMS created the key material. When this value is EXTERNAL, the key material was imported from your existing key management infrastructure or the CMK lacks key material"
  value       = aws_kms_key.aws_kms_key.origin
}
output "arn" {
  description = ": The key ARN of a primary or replica key of a multi-Region key."
  value       = aws_kms_key.aws_kms_key.arn
}
output "creation_date" {
  description = ": The date and time when the key was created"
  value       = aws_kms_key.aws_kms_key.creation_date
}
output "key_state" {
  description = ": The state of the key"
  value       = aws_kms_key.aws_kms_key.key_state
}
output "multi_region_key_type" {
  description = ": Indicates whether the KMS key is a PRIMARY or REPLICA key."
  value       = aws_kms_key.aws_kms_key.multi_region_key_type
}
output "primary_key" {
  description = ": The key ARN and Region of the primary key. This is the current KMS key if it is the primary key."
  value       = aws_kms_key.aws_kms_key.primary_key
}
output "aws_account_id" {
  description = ": The twelve-digit account ID of the AWS account that owns the key"
  value       = aws_kms_key.aws_kms_key.aws_account_id
}
output "deletion_date" {
  description = ": The date and time after which AWS KMS deletes the key. This value is present only when key_state is PendingDeletion, otherwise this value is 0"
  value       = aws_kms_key.aws_kms_key.deletion_date
}
output "valid_to" {
  description = ": The time at which the imported key material expires. This value is present only when origin is EXTERNAL and whose expiration_model is KEY_MATERIAL_EXPIRES, otherwise this value is 0The multi_region_configuration object supports the following:"
  value       = aws_kms_key.aws_kms_key.valid_to
}
output "multi_region" {
  description = ": Indicates whether the KMS key is a multi-Region (true) or regional (false) key."
  value       = aws_kms_key.aws_kms_key.multi_region
}
output "multi_region_configuration" {
  description = ": Lists the primary and replica keys in same multi-Region key. Present only when the value of multi_region is true."
  value       = aws_kms_key.aws_kms_key.multi_region_configuration
}
output "replica_keys" {
  description = ": The key ARNs and Regions of all replica keys. Includes the current KMS key if it is a replica key.The primary_key and replica_keys objects support the following:"
  value       = aws_kms_key.aws_kms_key.replica_keys
}
output "description" {
  description = ": The description of the key."
  value       = aws_kms_key.aws_kms_key.description
}
output "expiration_model" {
  description = ": Specifies whether the Key's key material expires. This value is present only when origin is EXTERNAL, otherwise this value is empty"
  value       = aws_kms_key.aws_kms_key.expiration_model
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
