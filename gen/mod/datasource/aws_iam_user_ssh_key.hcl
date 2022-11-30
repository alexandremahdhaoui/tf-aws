datasource "aws_iam_user_ssh_key" "aws_iam_user_ssh_key" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fingerprint" {
  description = "MD5 message digest of the SSH public key."
  value       = aws_iam_user_ssh_key.aws_iam_user_ssh_key.fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_key" {
  description = "SSH public key."
  value       = aws_iam_user_ssh_key.aws_iam_user_ssh_key.public_key
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
