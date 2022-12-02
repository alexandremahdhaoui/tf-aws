datasource "aws_ecr_authorization_token" "aws_ecr_authorization_token" {
  authorization_token = var.authorization_token
  expires_at          = var.expires_at
  id                  = var.id
  password            = var.password
  proxy_endpoint      = var.proxy_endpoint
  registry_id         = var.registry_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "authorization_token" {
  description = "Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of user_name:password."
  type        = string
}
variable "expires_at" {
  description = "Time in UTC RFC3339 format when the authorization token expires."
  type        = string
}
variable "id" {
  description = "Region of the authorization token."
  type        = string
}
variable "password" {
  description = "Password decoded from the authorization token."
  type        = string
}
variable "proxy_endpoint" {
  description = "Registry URL to use in the docker login command."
  type        = string
}
variable "registry_id" {
  description = "(Optional) AWS account ID of the ECR Repository. If not specified the default account is assumed.In addition to the argument above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "password" {
  description = "Password decoded from the authorization token."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.password
}
output "proxy_endpoint" {
  description = "Registry URL to use in the docker login command."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.proxy_endpoint
}
output "registry_id" {
  description = "(Optional) AWS account ID of the ECR Repository. If not specified the default account is assumed.In addition to the argument above, the following attributes are exported:"
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.registry_id
}
output "authorization_token" {
  description = "Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of user_name:password."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.authorization_token
}
output "expires_at" {
  description = "Time in UTC RFC3339 format when the authorization token expires."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.expires_at
}
output "id" {
  description = "Region of the authorization token."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.id
}
output "id" {
  description = "Region of the authorization token."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.id
}
output "password" {
  description = "Password decoded from the authorization token."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.password
}
output "proxy_endpoint" {
  description = "Registry URL to use in the docker login command."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.proxy_endpoint
}
output "authorization_token" {
  description = "Temporary IAM authentication credentials to access the ECR repository encoded in base64 in the form of user_name:password."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.authorization_token
}
output "expires_at" {
  description = "Time in UTC RFC3339 format when the authorization token expires."
  value       = aws_ecr_authorization_token.aws_ecr_authorization_token.expires_at
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
