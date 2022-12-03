datasource "aws_secretsmanager_secret" "aws_secretsmanager_secret" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.description
}
output "id" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.id
}
output "kms_key_id" {
  description = "Key Management Service (KMS) Customer Master Key (CMK) associated with the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.kms_key_id
}
output "rotation_enabled" {
  description = "Whether rotation is enabled or not."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.rotation_enabled
}
output "rotation_lambda_arn" {
  description = "Rotation Lambda function ARN if rotation is enabled."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.rotation_lambda_arn
}
output "rotation_rules" {
  description = "Rotation rules if rotation is enabled."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.rotation_rules
}
output "tags" {
  description = "Tags of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.tags
}
output "arn" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.arn
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
