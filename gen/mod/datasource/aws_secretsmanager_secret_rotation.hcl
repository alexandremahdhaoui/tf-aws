datasource "aws_secretsmanager_secret_rotation" "aws_secretsmanager_secret_rotation" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rotation_enabled" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.rotation_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rotation_lambda_arn" {
  description = "Decrypted part of the protected secret information that was originally provided as a string."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.rotation_lambda_arn
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
