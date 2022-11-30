datasource "aws_secretsmanager_secret_version" "aws_secretsmanager_secret_version" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret_version.aws_secretsmanager_secret_version.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier of this version of the secret."
  value       = aws_secretsmanager_secret_version.aws_secretsmanager_secret_version.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secret_binary" {
  description = "Decrypted part of the protected secret information that was originally provided as a binary."
  value       = aws_secretsmanager_secret_version.aws_secretsmanager_secret_version.secret_binary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secret_string" {
  description = "Decrypted part of the protected secret information that was originally provided as a string."
  value       = aws_secretsmanager_secret_version.aws_secretsmanager_secret_version.secret_string
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
