datasource "aws_ecrpublic_authorization_token" "aws_ecrpublic_authorization_token" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authorization_token" {
  description = "Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of user_name:password."
  value       = aws_ecrpublic_authorization_token.aws_ecrpublic_authorization_token.authorization_token
}
output "expires_at" {
  description = "Time in UTC RFC3339 format when the authorization token expires."
  value       = aws_ecrpublic_authorization_token.aws_ecrpublic_authorization_token.expires_at
}
output "id" {
  description = "Region of the authorization token."
  value       = aws_ecrpublic_authorization_token.aws_ecrpublic_authorization_token.id
}
output "password" {
  description = "Password decoded from the authorization token."
  value       = aws_ecrpublic_authorization_token.aws_ecrpublic_authorization_token.password
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
