datasource "aws_kms_alias" "aws_kms_alias" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name(ARN) of the key alias."
  value       = aws_kms_alias.aws_kms_alias.arn
}
output "id" {
  description = "Amazon Resource Name(ARN) of the key alias."
  value       = aws_kms_alias.aws_kms_alias.id
}
output "target_key_id" {
  description = "Key identifier pointed to by the alias."
  value       = aws_kms_alias.aws_kms_alias.target_key_id
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
